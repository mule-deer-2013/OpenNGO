





$(document).ready(function(){


// info tabs and buttons:

  $('#org-homepage').show()


  $(".org-header-left").click(function() {
    $('#org-homepage').show()
    $('#org-programs').hide()
    $("#org-financials").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()
  });



  $('#org-programs-butt').click(function() {
    $('#org-homepage').hide()
    $("#org-programs").show()
    $("#org-financials").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()

  });

  $("#org-financials-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").show()
    $("#org-programs").hide()
    $("#org-team").hide()
    $("#org-affiliations").hide()
  });


  $("#org-team-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").hide()
    $("#org-programs").hide()
    $("#org-team").show()
    $("#org-affiliations").hide()
  });


  $("#org-affiliations-butt").click(function() {
    $('#org-homepage').hide()
    $("#org-financials").hide()
    $("#org-programs").hide()
    $("#org-team").hide()
    $("#org-affiliations").show()
  });


// text resizer:

  $( '.my-resizer' ).each(function ( i, span ) {

    var width = $( span ).width(),
        html = '<span style="white-space:nowrap"></span>',
        line = $( span ).wrapInner( html ).children()[ 0 ],
        n = 40; //biggest possible font size

    $( span ).css( 'font-size', n );

    while ( $( line ).width() > width ) {
        $( span ).css( 'font-size', --n );
    }

    $( span ).text( $( line ).text() );

  });







});






