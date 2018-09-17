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
    document.getElementById("nav-box").classList.toggle("hidden");
    document.getElementById("yield-container").classList.toggle("hidden");
}

function search() {
    document.getElementById("search-bar").classList.toggle("hidden");
    document.getElementById("search-bar").classList.toggle("slider");
    document.getElementById("nav-top-logo").classList.toggle("hidden");
    document.getElementById("cancel").classList.toggle("hidden");
    document.getElementById("go").classList.toggle("hidden");
    document.getElementById("search-icon").classList.toggle("hidden");
}
