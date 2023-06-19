import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static values = { id: Number }
    connect() {
  console.log("Hola!", this.element)}

  update() {
    console.log("submitting");
    const button = this.element.querySelector("#reading-button");
    const checkbox = this.element.querySelector("#currently-reading-checkbox");


      // Update server-side database to mark this book as currently reading
      fetch(`/books/${this.idValue}/currently_reading`);

      // Set "Currently Reading" button text content to "Undo"
      // button.textContent = "Undo";

      // Add event listener to change button text content back to "Currently Reading"
      // button.addEventListener("mouseleave", () => {
      //   button.textContent = "Currently reading";
      // });

      // // Remove "Currently Reading" button from other book cards
      // const otherButtons = document.querySelectorAll(".btn-currently-reading");
      // otherButtons.forEach((otherButton) => {
      //   if (otherButton !== button) {
      //     otherButton.remove();
      //   }
      // });

      // // Update server-side database to mark this book as not currently reading
      // fetch(`/books/${this.idValue}/not_currently_reading`);

      // Remove "Undo" state from button
      button.textContent = "Currently reading";

      // // Remove event listener for "mouseleave" event
      // button.removeEventListener("mouseleave", () => {
      //   button.textContent = "Currently reading";
      // });
    }

    remove() {
      fetch(`/books/${this.idValue}/not_currently_reading`);
    }
}
