// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .



function menuReveal() {
  document.getElementById("bar-container").classList.toggle("change");
  document.getElementById("nav-box").classList.toggle("pop-up");
  document.getElementById("yield-container").classList.toggle("hidden");
}

function search() {
  document.getElementById("search").classList.toggle("search-transition");
}

function newGymOpen() {
  document.getElementById("newmodal").classList.toggle("open");
}

function removeShadow() {

       document.getElementById("footer").classList.remove("shadow");
     }

     function openMap() {

            document.getElementById("map").classList.toggle("down");
                        document.getElementById("map").classList.toggle("up");
            console.log('opened map');
          }

// other = document.querySelector("input");


let allCoords = {};

let getBothCoordPairs = (address) => {

navigator.geolocation.getCurrentPosition((position) => {

    let lat = position.coords.latitude;
    let lng = position.coords.longitude;

    console.log(`LATITUDE: ${lat} LONGITUDE ${lng}`);


    allCoords.userLoc = {latitude: lat, longitude: lng};

    document.getElementById("location_coordinates").value = allCoords.userLoc.latitude + "," + allCoords.userLoc.longitude;
});

}
getBothCoordPairs();
