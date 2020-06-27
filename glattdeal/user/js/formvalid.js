$(document).ready(function() {
$('#btnsubmit').click(function(e) {
// Initializing Variables With Form Element Values
var firstname = $('#firstname').val();
var addr = $('#addr').val();
var zip = $('#zip').val();
var state = $('#state').val();
var username = $('#username').val();
var email = $('#email').val();
// Initializing Variables With Regular Expressions
var name_regex = /^[a-zA-Z]+$/;
var email_regex = /^[w-.+]+@[a-zA-Z0-9.-]+.[a-zA-z0-9]{2,4}$/;
var add_regex = /^[0-9a-zA-Z]+$/;
var zip_regex = /^[0-9]+$/;
// To Check Empty Form Fields.
if (firstname.length == 0) {
$('#head').text("* All fields are mandatory *"); // This Segment Displays The Validation Rule For All Fields
$("#firstname").focus();
return false;
}
// Validating Name Field.
else if (!firstname.match(name_regex) || firstname.length == 0) {
$('#p1').text("* For your name please use alphabets only *"); // This Segment Displays The Validation Rule For Name
$("#firstname").focus();
return false;
}
// Validating Username Field.
else if (!(username.length >= 6 && username.length <= 8) || username.length == 0) {
$('#p2').text("* Please enter between 6 and 8 characters *"); // This Segment Displays The Validation Rule For Username
$("#username").focus();
return false;
}
// Validating Email Field.
else if (!email.match(email_regex) || email.length == 0) {
$('#p3').text("* Please enter a valid email address *"); // This Segment Displays The Validation Rule For Email
$("#email").focus();
return false;
}
// Validating Select Field.
else if (state == "Please Choose") {
$('#p4').text("* Please Choose any one option"); // This Segment Displays The Validation Rule For Selection
$("#state").focus();
return false;
}
// Validating Address Field.
else if (!addr.match(add_regex) || addr.length == 0) {
$('#p5').text("* For Address please use numbers and letters *"); // This Segment Displays The Validation Rule For Address
$("#addr").focus();
return false;
}
// Validating Zip Field.
else if (!zip.match(zip_regex) || zip.length == 0) {
$('#p6').text("* Please enter a valid zip code *"); // This Segment Displays The Validation Rule For Zip
$("#zip").focus();
return false;
} else {
alert("Form Submitted Successfuly!");
return true;
}
});
});