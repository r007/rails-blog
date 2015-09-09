// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require froala_editor.min.js
//= require refile
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-filestyle

var ready;
ready = function() {
    $('textarea#post_body').editable({
        inlineMode: false,
        height: 300
    });

    $('textarea#comment_body').editable({
        inlineMode: false,
        height: 300,

        // Set custom buttons with separator between them.
        buttons: ['undo', 'redo' , 'sep', 'bold', 'italic', 'underline']
    });

    $(":file").filestyle({
        input: false
    });
};

$(document).ready(ready);
$(document).on('page:load', ready);
