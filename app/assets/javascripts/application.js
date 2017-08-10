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
//= require jquery
//= require rails-ujs
//= require_tree
//= require bootstrap-sprockets

$(function() {
  $('#design-form').hide();
  $('#final-form').hide();
  $('.to-design-form').click(function() {
    $('#flavor-form').hide();
    $('#design-form').show();
  });

  $('.back-to-flavor-form').click(function() {
    $('#design-form').hide();
    $('#flavor-form').show();
  });

  $('.to-final-form').click(function() {
    $('#design-form').hide();
    $('#final-form').show();
  });

  $('.back-to-design-form').click(function() {
    $('#final-form').hide();
    $('#design-form').show();
  });

  $('.to-confirmation').click(function() {
    $('#final-form').hide();
    $('#confirmation').show();
  });

  $('.back-to-final-form').click(function() {
    $('#confirmation').hide();
    $('#final-form').show();
  });
});
