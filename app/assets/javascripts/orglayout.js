
// text resizer:
$(function() {
    var span = $('#my-resizer');
    var fontSize = parseInt(span.css('font-size'));
    console.log("starting")

    do {
      console.log(span.width())
        fontSize--;
        span.css('font-size', fontSize.toString() + 'px');
    } while (span.width() >= 270);
});



$(document).ready(function(){


// info tabs and buttons:

  $('#org-homepage').show()


  $(".org-header-left").click(function() {
    $('#org-homepage').show()
    $('#org-programs').hide()
    $("#org-financials").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()
    $('#piechart').hide()
    $('#youtube-panel').show()
  });


  $('#org-programs-butt').click(function() {
    $('#org-homepage').hide()
    $("#org-programs").show()
    $("#org-financials").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()
    $('#piechart').hide()
    $('#youtube-panel').show()
    $('#twitter-panel').show()
  });

  $("#org-financials-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").show()
    $("#org-programs").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()
    $('#piechart').show()
    $('#youtube-panel').hide()
    $('#twitter-panel').hide()
  });


  $("#org-team-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").hide()
    $("#org-programs").hide()
    $("#org-team").show()
    $("#org-affiliations").hide()
    $('#piechart').hide()
    $('#twitter-panel').show()
  });

  $("#org-affiliations-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").hide()
    $("#org-programs").hide()
    $("#org-team").hide()
    $("#org-affiliations").show()
    $('#piechart').hide()
    $('#youtube-panel').show()
    $('#twitter-panel').show()
  });


});





