// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require admin
//= require jquery.raty
//= require rating
//= require init
//= require bootstrap-sprockets
//= require commontator/application

require("jquery")
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("chartkick")
require("chart.js")
require("custom/search")
require("custom/comment")
require("custom/agenttable")
require("custom/donors.js")

import "bootstrap";
import "../stylesheets/application"
import "@fortawesome/fontawesome-free/js/all";


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
console.log('Hello from application.js')
