// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "jquery";

//HOMEPAGE
//data minima impostabile
$(function() {
	var today = new Date();
	var day = today.getDate();
	var month = today.getMonth() + 1;
	var year = today.getFullYear();
	if(day < 10)
		day = '0' + day.toString();
	if(month < 10)
		month = '0' + month.toString();
	var minDate = year + '-' + month + '-' + day;
	$("#dataAnd").attr("min", minDate);
	$("#dataRit").attr("min", minDate);
	$("#dataAnd").attr("value", minDate);
});

//acambio campi form
window.swap = function () {
    var stzPart = document.getElementById("part");
    var stzArr = document.getElementById("arr");
    var temp = stzPart.value;
    stzPart.value = stzArr.value;
    stzArr.value = temp;
};

window.validaStz = function () {
    var stzPart = document.getElementById("part").value;
    var stzArr = document.getElementById("arr").value;
    var a = document.getElementsByTagName("option");
    var c = 0;
    for (var i = 0; i < a.length; i++) {
        if (
            stzPart == a[i].value ||
            stzArr == a[i].value
        )
            c++;
    }
    if (c < 2) {
        alert("Inserire stazioni di partenza e di destinazione valide");
        return false;
    }
    return true;
};

//accesso al campo data ritorno
window.ritornoOnOff = function () {
    var rit = document.getElementById("dataRit");
    if (document.getElementById("onOff").checked) {
        document.getElementById("lr").style.opacity = "1";
        rit.style.opacity = "1";
        rit.disabled = false;
    } else {
        rit.value = "";
        document.getElementById("lr").style.opacity = "0.5";
        rit.style.opacity = "0.5";
        rit.disabled = true;
    }
};

window.vincoliDate = function () {
    var dataRit = document.getElementById("dataRit");
    var dataAnd = document.getElementById("dataAnd");
    if (dataAnd.value > dataRit.value) dataRit.value = "";
    if (dataAnd.value !== "") dataRit.min = dataAnd.value;
    else {
        var today = new Date();
        var day = today.getDate();
        var month = today.getMonth() + 1;
        var year = today.getFullYear();
        if (day < 10) day = '0' + day.toString();
        if (month < 10) month = '0' + month.toString();
        today = year + '-' + month + '-' + day;
        dataRit.min = today;
    }
};

window.validaDate = function () {
    var dataAnd = document.getElementById("dataAnd");
    if (dataAnd.value == "") {
        alert("Inserire una data per il viaggio di andata");
		return false;
    }
    var dataRit = document.getElementById("dataRit");
    if (document.getElementById("onOff").checked && dataRit.value == "") {
        alert("Andata&Ritorno selezionato, inserire una data valida per il ritorno");
		return false;
	} else 
		return true;
};

//decrementa quantità passeggeri con tasto -
window.subPass = function () {
    var pass = document.getElementById("pass");
    if (parseInt(pass.value) > 1) pass.value--;
};

//incrementa quantità passeggeri con tasto +
window.addPass = function () {
    var pass = document.getElementById("pass");
    if (parseInt(pass.value) < 10) pass.value++;
};

//controllo utente loggato per effettuare la ricerca
window.verificaLogin = function () {
    const searchButton = document.getElementById("cerca");
    const logged = document.body.dataset.userLoggedIn === "true";
  
    searchButton.addEventListener("click", function (e) {
        if (!logged) {
            e.preventDefault();
            alert("Per effettuare una ricerca, effettua il login!");
            window.location.href = "/users/sign_in"; // Redirige alla pagina di login
        }
    });
};
document.addEventListener("DOMContentLoaded", function () {
    window.verificaLogin();
});

//salvataggio ricerche recenti nella tabella ricerche
window.salvaRicerca = function () {
    const part = document.getElementById("part").value;
    const arr = document.getElementById("arr").value;

    if (part && arr) {
    fetch("/searches", {
        method: "POST",
        headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').getAttribute("content"),
        },
        body: JSON.stringify({ part: part, arr: arr }),
    }).catch((error) => console.error("Errore durante il salvataggio della ricerca:", error));
    }
};
