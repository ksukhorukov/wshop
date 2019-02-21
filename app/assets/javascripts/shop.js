$(function() {
  $('a.purchase').click(function(event) {
  	event.preventDefault();
  	var product_id = $(this).attr("id")
  	$.ajax({
  		url: "/cart",
  		method: "PUT",
  		context: document.body,
  		data: "data[product_id]=" + product_id
		}).done(function() {
  		$(this).addClass( "in_the_cart");
		});
  });
});