import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "results", "form", "modal", "title", "author", "description", "bookform"]
  connect() {
    console.log("booktemp controller connected :)")
  }

  search(event) {
    event.preventDefault()
    console.log("searching...");
    this.resultsTarget.innerHTML = ""
    this.fetchBooktemp(this.inputTarget.value)
  }

  fetchBooktemp(query) {
    fetch(`https://www.googleapis.com/books/v1/volumes?q=${query}&key=AIzaSyC1kURKAfO5p22IwVMlAJ0A2bfmG8s9YKY&printsec=frontcover&img=1&zoom=0&edge=curl&source=gbs_api`)
      .then(response => response.json())
      .then(data => {
        console.log(data)
        data.items.forEach((item) => {
          let addButtonHtml =
            ` <button class="btn btn-primary btn-sm">Add</button> `

          let booktempTag =
            `
            <li class="list-group-item" data-action="click->booktemp#addBook">
              <div class="book-info">
                <img src="${item.volumeInfo.imageLinks.thumbnail}" alt="${item.volumeInfo.title}">
                <div class="d-flex justify-content-center align-items-center mt-2">${addButtonHtml}</div>
                </div>
              </div>
              <p>${item.volumeInfo.title}</p>
              <p>${item.volumeInfo.authors[0]}</p>
              <p>${item.volumeInfo.description}</p>
              <p hidden>${item.volumeInfo.imageLinks.thumbnail}</p>
            </li>
            `

          this.resultsTarget.insertAdjacentHTML("beforeend", booktempTag)
        })
      })
  }

  addBook(event) {
    event.preventDefault()
    const addButton = event.target
    addButton.innerHTML = ' ✓ '
    addButton.classList.remove('btn-primary')
    addButton.classList.add('btn-success')

    let paragraphElements = event.currentTarget.querySelectorAll("p")
    console.log(paragraphElements[0].innerText)
    this.titleTarget.value = paragraphElements[0].innerText
    this.authorTarget.value = paragraphElements[1].innerText
    this.descriptionTarget.value = paragraphElements[2].innerText
    // this.imageTarget.value = paragraphElements[3].innerText

    this.bookformTarget.submit()
  }
}
