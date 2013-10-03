$(document).ready(function(){

var branch_counter = 0;
$('.branch-form').hide()
$('.branch-form').first().show()

  $('#add-new-branch').click(function(e){
    e.preventDefault;
    console.log('button pressed');
    branch_counter++;
    $(".branch-form").eq(branch_counter).show()
  });

var objectives_counter = 0;
$('.objectives-form').hide()
$('.objectives-form').first().show()

  $('#add-new-objective').click(function(e){
    e.preventDefault;
    console.log('button pressed');
    branch_counter++;
    $(".objectives-form").eq(branch_counter).show()
  });







});
