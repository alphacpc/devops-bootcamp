// DECLARATION DES VARIABLES
let userContainer = document.querySelector(".userContainer")
let bars = document.querySelector("#bars")
let btnQuite = document.querySelector("#btnQuite")

let divOverlayPostForm = document.querySelector(".divOverlay")
let btnPostForm = document.querySelector(".btnForm")


// **************
// LES EVENEMENTS
// **************
btnPostForm && btnPostForm.addEventListener('click', ()=>{
    divOverlayPostForm.classList.add('show')
})

btnPostForm && btnQuite.addEventListener('click', ()=>{
    divOverlayPostForm.classList.remove('show')
})




// **********************
// DEPLACER LE FORMULAIRE
// ***********************
divOverlayPostForm && userContainer.insertBefore(divOverlayPostForm, bars)




// *********************
// GERER LE LIEN ACTIVE
// *********************

let ulLinks = document.querySelectorAll(".ulLinks li")
let linkUser = document.querySelector(".ulLinks li.user")
let linkPosts = document.querySelector(".ulLinks li.posts")
let linkAlbums = document.querySelector(".ulLinks li.albums")
let linkTodos = document.querySelector(".ulLinks li.todos")

for(let li of ulLinks){
    if(li.classList.contains('active')){
        li.classList.remove('active')
    }
}

let pathname = window.location.pathname

switch(pathname){

    case '/posts/':
        linkPosts.classList.add('active')
        break

    case '/albums/':
        linkAlbums.classList.add('active')
        break
    
    case '/todos/':
        linkTodos.classList.add('active')
        break

    default:
        linkUser.classList.add('active')
}




// ***************************************
// RECUPERATION DES COORDONNEES DE L'USER
// **************************************
let elementLat = document?.querySelector('#lat')
const lat =parseFloat(elementLat?.innerText)

let elementLong = document?.querySelector('#long')
const long = parseFloat(elementLong?.innerText)

let map;
let coords = { lat: lat , lng: long}

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: coords,
    zoom: 14,
  });

  new google.maps.Marker({
      position : coords,
      map : map,
      label : "A",
  })
}

window.initMap = initMap;




// **********************************
// GEOLOCALISATION D'UN UTILISATEUR
// **********************************

let getLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }
  
let showPosition = (position) => {
    let m = "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude;
    console.log(m)
}

// getLocation()



//****************************** */
// ********TOGGLE BAR ***********/
// *****************************/
document?.querySelector('#spanBars').addEventListener('click', ()=>{
    if(document?.querySelector('.divSideBar').classList.contains('mask')){
        document?.querySelector('.divSideBar').classList.remove('mask')
        document?.querySelector('#spanBars').classList.remove('mask')
    }else{
        document?.querySelector('.divSideBar').classList.add('mask')
        document?.querySelector('#spanBars').classList.add('mask')
    }
})



//******************************************* */
// ********LINK CURRENT PAGINATION ***********/
// ******************************************/
let search_pagination = window.location.search
let current_paginate = search_pagination.split('=')[1]
let page_links = document?.querySelectorAll('.page-link')


for(page of page_links){
    if(page.innerText === current_paginate){
        page.classList.add('active')
    }
}