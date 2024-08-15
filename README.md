#
## Visão Geral do Projeto

Este APP foi projetado para realizar pesquisas de dados do CNPJ (Cadastro Nacional da Pessoa Jurídica) com base na entrada do usuário. Os usuários podem inserir um único CNPJ ou uma lista de CNPJs um por linha. Após a pesquisa, o aplicativo persiste os dados para visualização posterior dos detalhes.

O principal objetivo deste projeto é estudar o funcionamento do Ruby on Rails e aprender como consumir um endpoint de API, aproveitando a oportunidade para criar algo realmente útil.

## Versão do Ruby

Este projeto usa a versão **3.3.4** do Ruby.

## Gems e Dependências

As seguintes gems são incluídas no projeto para melhorar a funcionalidade:

- **Rails**: A estrutura principal para construir o aplicativo.
- **Sprockets Rails**: Para gerenciamento de ativos.
- **SQLite3**: Banco de dados para o Active Record.
- **Puma**: Servidor web para servir o aplicativo.
- **Importmap Rails**: Para gerenciar importações do JavaScript.
- **Turbo Rails**: Melhora a velocidade de carregamento da página.
- **Stimulus Rails**: Um framework JavaScript modesto.
- **Jbuilder**: Para construir APIs JSON.
- **TZInfo Data**: Dados de fuso horário para plataformas Windows e JRuby.
- **Bootsnap**: Reduz os tempos de inicialização por meio de cache.
- **Bootstrap**: Para design responsivo.
- **HTTParty**: Simplifica a realização de solicitações HTTP.
- **SassC Rails**: Para usar Sass no Rails.
- **Webpacker**: Para gerenciar ativos JavaScript e CSS.

### Gems de Desenvolvimento e Teste

- **Debug**: Para depuração em ambientes de desenvolvimento e teste.
- **Web Console**: Fornece um console interativo em páginas de exceção.
- **Capybara**: Para testes de sistema.
- **Selenium WebDriver**: Para automação de navegador em testes.

## Começando

Para configurar o projeto, siga estas etapas:

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/codexmark/Consulta_CNPJ
   cd Consulta_CNPJ
   ```

2. **Instale as dependências**:
   ```bash
   bundle install
   ```

3. **Configure o banco de dados**:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Inicie o servidor**:
   ```bash
   rails server
   ```

## Contribuição

Contribuições são bem-vindas!

## Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para obter mais detalhes.