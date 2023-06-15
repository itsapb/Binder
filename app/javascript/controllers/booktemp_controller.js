import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "results"]
  connect() {
    console.log("booktemp controller connected33")
  }

  search(event) {
    event.preventDefault()
    console.log("searching..!!.");
    // this.resultsTarget.innerHTML = ""
    this.fetchBooktemp(this.inputTarget.value)
  }

  fetchBooktemp(query) {
    fetch(`https://www.googleapis.com/books/v1/volumes?q=${query}&key=AIzaSyC1kURKAfO5p22IwVMlAJ0A2bfmG8s9YKY&printsec=frontcover&img=1&zoom=0&edge=curl&source=gbs_api`)
      .then(response => response.json())
      .then(data => {
        console.log(data)
        data.items.forEach((item) => {
          let booktempTag = "<div class='booktemp'>" +
          "<img src='" + item.volumeInfo.imageLinks.thumbnail + "'>"
          "<p>" + item.volumeInfo.authors + "</p></div>"

          this.resultsTarget.insertAdjacentHTML("beforeend", booktempTag)
        })

      })
      //.then(data => this.insertBooktemp(data))
  }
}
