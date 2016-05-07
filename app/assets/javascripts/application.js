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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

<<<<<<< HEAD:status-service/app/assets/javascripts/application.js
=======

>>>>>>> ce6ca977a247523fc2a0cc88d75546edc304a4e4:app/assets/javascripts/application.js
function btn_(obj) {

     document.getElementById('div_aba1').style.display="none";
      document.getElementById('div_aba2').style.display="none";

   switch (obj.id) {
      case 'btn_user':
      document.getElementById('div_aba1').style.display="block";
      btn_user.disabled="disabled";
      btn_company.disabled="";
      break
      case 'btn_company':
      document.getElementById('div_aba2').style.display="block";
      btn_user.disabled="";
      btn_company.disabled="disabled";
      break
   }
}
<<<<<<< HEAD:status-service/app/assets/javascripts/application.js
=======

>>>>>>> ce6ca977a247523fc2a0cc88d75546edc304a4e4:app/assets/javascripts/application.js
