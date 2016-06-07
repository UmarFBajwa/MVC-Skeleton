$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('#Register').on('click', function(event) {
    event.preventDefault();

    if ($('#new-user-form-location').children().length >= 1) {
      $('#new-user-form-location').show()} else {

    var registerUser = $.ajax( {
      url: '/users/new',
      method: 'GET'
    })

    registerUser.done(function(data) {
      $('#new-user-form-location').append(data);
    })
  }
  })

// Ready Doc
});
