import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static values = { id: Number }

  static targets = ["button"]


  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  update() {
    console.log("submitting");
    // const checkbox = this.element.querySelector("#currently-reading-checkbox");

      fetch(`/books/${this.idValue}/have_read`, {method: "GET", headers: { "Accept": "application/json" }})
        .then(response => response.json())
        .then(data => {
          this.buttonTarget.innerText = data.have_read ? "Undo" : "Have read ?";
        });
      window.location.reload();

      // button.textContent = "Currently reading";
  }
  }

//     fetch(`/books/${this.idValue}/currently_reading`)
//     location.reload();
//   }
//   submit() {
//     this.element.submit()
//   }
// }
