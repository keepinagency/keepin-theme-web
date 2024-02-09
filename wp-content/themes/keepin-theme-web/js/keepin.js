/*
    Funciones de validación de formularios
*/

function validacel(){
    return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 43
}

function validarEmail(){
    var correo = document.getElementById("correo").value;        
    mensajeError = document.getElementById("mensajeError");
    var validcorreo =  /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
    if(correo){
        if(validcorreo.test(correo)){
            return true;
        }else{
            mensajeError.innerHTML = "No se logró validar el correo electrónico, por favor verifique";
            event.returnValue = false;
        }
    }
}
