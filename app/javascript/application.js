import "jquery";
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

jQuery(function() {
    // Data minima impostabile
    var today = new Date();
    var day = today.getDate();
    var month = today.getMonth() + 1;
    var year = today.getFullYear();
    if (day < 10)
        day = '0' + day.toString();
    if (month < 10)
        month = '0' + month.toString();
    var minDate = year + '-' + month + '-' + day;
    jQuery("#dataAnd").attr("min", minDate);
    jQuery("#dataRit").attr("min", minDate);
    jQuery("#dataAnd").attr("value", minDate);

    // Swap stazione partenza con stazione arrivo
    jQuery(".swap").on("click", function() {
        var stzPart = document.getElementById("part");
        var stzArr = document.getElementById("arr");
        var temp = stzPart.value;
        stzPart.value = stzArr.value;
        stzArr.value = temp;
    });

    // Controllo validità stazioni inserite
    jQuery(".validaStz").on("click", function() {
        var stzPart = document.getElementById("part").value;
        var stzArr = document.getElementById("arr").value;
        var a = document.getElementsByTagName("option");
        var c = 0;
        for (var i = 0; i < a.length; i++) {
            if (stzPart.toLowerCase() == a[i].value.toLowerCase() || stzArr.toLowerCase() == a[i].value.toLowerCase())
                c++;
        }
        if (c < 2) {
            alert("Inserire stazioni di partenza e di destinazione valide");
            return false;
        }
        return true;
    });

    // Visibilità campo Ritorno
    jQuery("#onOff").on("change", function() {
        var rit = document.getElementById("dataRit");
        if (this.checked) {
            document.getElementById("lr").style.opacity = "1";
            rit.style.opacity = "1";
            rit.disabled = false;
        } else {
            rit.value = "";
            document.getElementById("lr").style.opacity = "0.5";
            rit.style.opacity = "0.5";
            rit.disabled = true;
        }
    });

    // Gestione date
    jQuery("#dataAnd, #dataRit").on("change", function() {
        var dataRit = document.getElementById("dataRit");
        var dataAnd = document.getElementById("dataAnd");
        if (dataAnd.value > dataRit.value)
            dataRit.value = "";
        if (dataAnd.value !== "")
            dataRit.min = dataAnd.value;
        else {
            var today = new Date();
            var day = today.getDate();
            var month = today.getMonth() + 1;
            var year = today.getFullYear();
            if (day < 10)
                day = '0' + day.toString();
            if (month < 10)
                month = '0' + month.toString();
            today = year + '-' + month + '-' + day;
            dataRit.min = today;
        }
    });

    // Funzioni di aumento e diminuzione numero passeggeri tramite tasti -/+
    jQuery("#subPass").on("click", function() {
        var pass = document.getElementById("pass");
        if (parseInt(pass.value) > 0) pass.value--;
    });

    jQuery("#addPass").on("click", function() {
        var pass = document.getElementById("pass");
        if (parseInt(pass.value) < 10) pass.value++;
    });

    jQuery(".validaPass").on("click", function() {
        var pass = document.getElementById("pass");
        if (parseInt(pass.value) == 0) {
            alert("Inserire almeno un passeggero");
            return false;
        }
        return true;
    });
});
