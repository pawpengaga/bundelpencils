import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="main"
export default class extends Controller {
  connect() {
    console.log(this.preCharge())
  }

  preCharge(){
    this.sidebar = document.querySelector("#sidebar")
    this.mainframe = document.querySelector("#mainframe")
    this.toggler = document.querySelector("#toggler")
    this.icon = document.querySelector('#icon')
    console.log('Items precargados')
    return [this.sidebar, this.mainframe, this.toggler, this.icon]

  }

  //La desactivación de eventos funciona igual que en javascript
  toggle(event){
    event.preventDefault()
    if(this.sidebar.classList.contains('hidden')){
      this.sidebar.classList.remove('hidden', 'fade')
      this.sidebar.classList.add('col-2','appear')
      this.icon.classList.remove('fa-angles-left')
      this.icon.classList.add('fa-angles-right')
      this.mainframe.classList.remove('col-12')
      this.mainframe.classList.add('col-10')

    }else{
      this.sidebar.classList.add('fade')
      this.sidebar.classList.remove('appear')
      this.icon.classList.add('fa-angles-left')
      this.icon.classList.remove('fa-angles-right')
      setTimeout(()=>{
        this.sidebar.classList.add('hidden')
        this.sidebar.classList.remove('col-2')
        this.mainframe.classList.add('col-12')
        this.mainframe.classList.remove('col-10')
      }, 1000)
    }
  }

}
