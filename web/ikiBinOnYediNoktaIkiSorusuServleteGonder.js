function ikiBinOnYediNoktaIkiSorusuServleteGonder(){
    var kokDereceBir = document.getElementById("2017_2_derece_1").value;
    var kokKatsayiBir = document.getElementById("2017_2_katsayi_1").value;
    var kokIciDegerBir = document.getElementById("2017_2_kokIciDeger_1").value;

    var kokDereceIki = document.getElementById("2017_2_derece_2").value;
    var kokKatsayiIki = document.getElementById("2017_2_katsayi_2").value;
    var kokIciDegerIki = document.getElementById("2017_2_kokIciDeger_2").value;

    var kokDereceUc = document.getElementById("2017_2_derece_3").value;
    var kokKatsayiUc = document.getElementById("2017_2_katsayi_3").value;
    var kokIciDegerUc = document.getElementById("2017_2_kokIciDeger_3").value;

    var paydaBir = document.getElementById("2017_2_payda_1").value;
    var paydaIki = document.getElementById("2017_2_payda_2").value;
    var paydaUc = document.getElementById("2017_2_payda_3").value;

    var sonuc = document.getElementById("2017_2_sonuc");
    var sonucGoster = document.getElementById("sonucKutusu");

    let url = '/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/ikiBinOnyediNoktaIki';
    let xhr = new XMLHttpRequest();

    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencode");

    var data;

    data = JSON.stringify({
        "birinci":[{
            birKokD: kokDereceBir,
            birKokK: kokKatsayiBir,
            birKokID: kokIciDegerBir,
            paydaBir: paydaBir
        }],

        "ikinci":[{
            ikiKokD: kokDereceIki,
            ikiKokK: kokKatsayiIki,
            ikiKokID: kokIciDegerIki,
            paydaIki: paydaIki
        }],

        "ucuncu":[{
            ucKokD: kokDereceUc,
            ucKokK: kokKatsayiUc,
            ucKokID: kokIciDegerUc,
            paydaUc: paydaUc
        }]
    });
    xhr.send(data);
    xhr.onload = function(){
        sonuc.readOnly = true
        sonucGoster.innerHTML = xhr.responseText;
    }



}