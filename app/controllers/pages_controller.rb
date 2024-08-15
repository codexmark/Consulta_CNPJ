class PagesController < ApplicationController
  def home
    @api_status = api_status  # Verifica o status da API
  end

  def consulta
    # Pega a entrada do textarea e divide em linhas
    cnpjs = params[:cnpjs].split("\n").map(&:strip).reject(&:empty?)
    @resultados = []

    cnpjs.each do |cnpj|
      # Verifica se o CNPJ já existe no banco de dados
      existing_result = CnpjResult.find_by(cnpj: cnpj)

      if existing_result
        puts "CNPJ #{cnpj} já existe no banco de dados."
        @resultados << existing_result  # Adiciona o resultado existente
        flash[:alert] = "O CNPJ #{cnpj} já foi consultado."  # Adiciona uma mensagem de alerta
        next  # Pula para o próximo CNPJ
      end

      response = HTTParty.get("https://minhareceita.org/#{cnpj}")

      puts "Consultando CNPJ: #{cnpj}"  # Log do CNPJ consultado
      puts "Resposta da API: #{response.body}"  # Log da resposta da API

      if response.success? && response.parsed_response.present?
        result = CnpjResult.create(
          cnpj: response.parsed_response["cnpj"],
          razao_social: response.parsed_response["razao_social"],
          nome_fantasia: response.parsed_response["nome_fantasia"],
          porte: response.parsed_response["porte"],
          natureza_juridica: response.parsed_response["natureza_juridica"],
          situacao_cadastral: response.parsed_response["descricao_situacao_cadastral"],
          data_inicio_atividade: response.parsed_response["data_inicio_atividade"],
          capital_social: response.parsed_response["capital_social"],
          logradouro: response.parsed_response["logradouro"],
          numero: response.parsed_response["numero"],
          complemento: response.parsed_response["complemento"],
          bairro: response.parsed_response["bairro"],
          municipio: response.parsed_response["municipio"],
          uf: response.parsed_response["uf"],
          cep: response.parsed_response["cep"],
          telefone_1: response.parsed_response["ddd_telefone_1"],
          telefone_2: response.parsed_response["ddd_telefone_2"],
          cnaes: response.parsed_response["cnaes_secundarios"].to_json,
          socios: response.parsed_response["qsa"].to_json
        )
        puts "Resultado armazenado: #{result.inspect}"  # Log do resultado armazenado
        @resultados << result
      else
        puts "Erro ao consultar CNPJ #{cnpj}: #{response.code} - #{response.message}"  # Log de erro
        @resultados << { "razao_social" => nil }  # Adiciona um resultado nulo para CNPJs inválidos
      end
    end

    # Redireciona para a página de resultados
    redirect_to resultados_path
  end

  def resultados
    @resultados = CnpjResult.all
  end

  def consultas
    @campos = ['CNPJ', 'Razão Social', 'Telefone'] # Adicione outros campos conforme necessário
  end

  def consultar_dados
    @resultados = CnpjResult.all # Busca todos os registros

    render :resultados_consulta # Renderiza a view com os resultados
  end

  def detalhes
    @resultado = CnpjResult.find(params[:id]) # Busca o registro pelo ID
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Registro não encontrado."
    redirect_to resultados_path
  end

  private

  def api_status
    begin
      response = HTTParty.get("https://minhareceita.org/33.683.111/0002-80")
      if response.success?
        "online"
      else
        "offline"
      end
    rescue
      "buscando"
    end
  end
end
