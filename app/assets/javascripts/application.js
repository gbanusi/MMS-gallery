// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



//= require slide1/k3d-min
//= require slide1/mathlib-min



$(document).on("change", '[data-action="show-preview"]',function(e) {
            var files = event.target.files;
            var image = files[0]
            var reader = new FileReader();
            reader.onload = function(file) {
            var img = new Image();
                  console.log(file);
                  img.src = file.target.result;
                  $('#target').html(img);
            }
            reader.readAsDataURL(image);
            console.log(files);
});
