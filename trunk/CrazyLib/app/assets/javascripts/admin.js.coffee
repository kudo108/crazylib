# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#show_transactions').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true

jQuery ->
  $('#show_books').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true

jQuery ->
  $('#show_users').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
