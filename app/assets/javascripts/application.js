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

//= require rails-ujs
//= require moment
//= require moment/pl
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker


document.addEventListener("turbolinks:load",function () {
  $('.datetimepicker').datetimepicker();
});


// $(function () {
//     $('.date_time_picker').datetimepicker({
//         format: 'HH:mm',
//         disabledTimeIntervals: [[moment({ h: 0 }), moment({ h: 6 })], [moment({ h: 17, m: 30 }), moment({ h: 24 })]],
//         enabledHours: [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17],
//         stepping: 15
//     });
// });