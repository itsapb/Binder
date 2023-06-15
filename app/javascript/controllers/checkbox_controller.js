import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  connect() {
  console.log("Hello, Stimulus!", this.element)}

  submit() {
    this.element.submit()
  }
}
