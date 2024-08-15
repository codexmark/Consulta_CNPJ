import { Application } from "@hotwired/stimulus"

const application = Application.start()

// configurações do stimulus como desenvolvimento
application.debug = false
window.Stimulus   = application

export { application }
