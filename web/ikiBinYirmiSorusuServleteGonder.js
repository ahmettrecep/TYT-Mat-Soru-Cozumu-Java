function ikiBinYirmiSorusuServleteGonder(){

    var kokDereceBir = document.getElementById("2020_derece_1");
    var kokKatsayiBir = document.getElementById("2020_katsayi_1");
    var kokIciDegerBir = document.getElementById("2020_kokIciDeger_1");

    var kokDereceIki = document.getElementById("2020_derece_2");
    var kokKatsayiIki = document.getElementById("2020_katsayi_2");
    var kokIciDegerIki = document.getElementById("2020_kokIciDeger_2");

    var kokDereceUc = document.getElementById("2020_derece_3");
    var kokKatsayiUc = document.getElementById("2020_katsayi_3");
    var kokIciDegerUc = document.getElementById("2020_kokIciDeger_3");

    var kokDereceDort = document.getElementById("2020_derece_4");
    var kokKatsayiDort = document.getElementById("2020_katsayi_4");
    var kokIciDegerDort = document.getElementById("2020_kokIciDeger_4");

    var kokDereceBes = document.getElementById("2020_derece_5");
    var kokKatsayiBes = document.getElementById("2020_katsayi_5");
    var kokIciDegerBes = document.getElementById("2020_kokIciDeger_5");

    var kokDereceAlti = document.getElementById("2020_derece_6");
    var kokKatsayiAlti = document.getElementById("2020_katsayi_6");
    var kokIciDegerAlti = document.getElementById("2020_kokIciDeger_6");

    var sonuc = document.getElementById("2020_sonuc");
    var sonucGoster = document.getElementById("sonucGoster");

    let url = '/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/ikiBinYirmi';
    let xhr = new XMLHttpRequest();
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencode");
    var data;
    data = JSON.stringify({
        "birinci":[{
            birKokD: kokDereceBir.value,
            birKokK: kokKatsayiBir.value,
            birKokID: kokIciDegerBir.value}],

        "ikinci":[{
            ikiKokD: kokDereceIki.value,
            ikiKokK: kokKatsayiIki.value,
            ikiKokID: kokIciDegerIki.value
        }],

        "ucuncu":[{
            ucKokD: kokDereceUc.value,
            ucKokK: kokKatsayiUc.value,
            ucKokID: kokIciDegerUc.value
        }],
        "dorduncu":[{
            dortKokD: kokDereceDort.value,
            dortKokK: kokKatsayiDort.value,
            dortKokID: kokIciDegerDort.value
        }],

        "besinci":[{
            besKokD: kokDereceBes.value,
            besKokK: kokKatsayiBes.value,
            besKokID: kokIciDegerBes.value
        }],
        "altinci":[{
            altiKokD: kokDereceAlti.value,
            altiKokK: kokKatsayiAlti.value,
            altiKokID: kokIciDegerAlti.value
        }]
    });
    xhr.send(data);
    xhr.onload = function(){
        sonuc.readOnly = true
        sonucGoster.innerHTML = xhr.responseText;
    }
}