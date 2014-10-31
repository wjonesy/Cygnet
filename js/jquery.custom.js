/*====================================
=            ON DOM READY            =
====================================*/
$(function () {
    $('.toggle-nav').click(function () {
        // Calling a function in case you want to expand upon this.
        toggleNav();
    });
});

$(function () {
    $('.close-nav').click(function () {
        // Calling a function in case you want to expand upon this.
        $('#siteWrapper').removeClass('show-nav');
        $('.toggle-nav').show();

    });
});



/*========================================
=            CUSTOM FUNCTIONS            =
========================================*/
function toggleNav() {
    if ($('#siteWrapper').hasClass('show-nav')) {
        // Do things on Nav Close
        $('#siteWrapper').removeClass('show-nav');
    } else {
        // Do things on Nav Open
        $('#siteWrapper').addClass('show-nav');
        $('.toggle-nav').hide();
    }
}
$(document).keyup(function (e) {
    if (e.keyCode == 27) {
        if ($('#siteWrapper').hasClass('show-nav')) {
            // Assuming you used the function I made from the demo
            toggleNav();
        }
    }
});