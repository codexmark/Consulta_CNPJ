//Importa e registra todos os controladores do  importmap em controllers/*

import { application } from "controllers/application"

// Eager carrega todos os controladores no import map em controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers como aparecem no  DOM (lembrar de não pré-carregar controladores no import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
