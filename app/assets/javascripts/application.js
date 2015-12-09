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


function getAjax ()  { 
    try  { 
        if  ( window . XMLHttpRequest )  { 
            return  new  XMLHttpRequest (); 
        }  else  if  ( window . ActiveXObject )  { 
            try  { 
                return  new  ActiveXObject ( 'Msxml2.XMLHTTP' ); 
            }  catch  ( try_again )  { 
                return  new  ActiveXObject ( 'Microsoft.XMLHTTP' ); 
            } 
        } 
    }  catch  ( fail )  { 
        return  null ; 
    } 
}

función sendMail (a, sujetos)  
     {var rq = getAjax ();

     si  (rq)  {// El éxito; 
         intente utilizar una petición Ajax a un script PHP para enviar el
                     

             rq. onreadystatechange =  función  ()  
                 {si  (esta. readyState ===  4)  
                     {si  (esta. estado de> =  400)  {// Error de la solicitud; 
                         caer de nuevo a cliente de correo electrónico 
                         ventana. abierto ('mailto:'  + a +  '? subject ='  + encodeURIComponent 
                     
                 
             (tema));}}};

             rq. envíe 
         (nulo);}  catch  (fallar)  {// No se pudo abrir la solicitud; 
             caer de nuevo a cliente de correo electrónico 
             ventana. abierto ('mailto:'  + a +  '? subject ='  + encodeURIComponent 
         
     (tema));}}  otro  {// Error al crear la solicitud; 
         caer de nuevo a cliente de correo electrónico 
         ventana. abierto ('mailto:'  + a +  '? subject ='  + encodeURIComponent 
     
(tema));}}