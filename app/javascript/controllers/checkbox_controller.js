import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static values = { id: Number }
  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  update() {
    console.log("submitting");
    const button = this.element.querySelector("#reading-button");
    const checkbox = this.element.querySelector("#currently-reading-checkbox");

      fetch(`/books/${this.idValue}/currently_reading`);
      window.location.reload();

      button.textContent = "Currently reading";
  }

    remove() {
      fetch(`/books/${this.idValue}/not_currently_reading`);
      window.location.reload();
  }
}
//     fetch(`/books/${this.idValue}/currently_reading`)
//     location.reload();
//   }
//   submit() {
//     this.element.submit()
//   }
// }
