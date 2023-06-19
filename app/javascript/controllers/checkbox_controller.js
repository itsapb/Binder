import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static values = { id: Number }
    connect() {
  console.log("Hello, Stimulus!", this.element)}

  update() {
    console.log("submitting")
    // this.element.submit(toggle(event) {

    fetch(`/books/${this.idValue}/currently_reading`)
    location.reload();
  }
  submit(){
  this.element.submit()
}}
