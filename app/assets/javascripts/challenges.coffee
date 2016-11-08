# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#challenge_workout_id', (evt) ->
    $.ajax '/challenges/update_results',
      type: 'GET'
      dataType: 'script'
      data: {
        workout_id: $("#challenge_workout_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic workout select OK!")