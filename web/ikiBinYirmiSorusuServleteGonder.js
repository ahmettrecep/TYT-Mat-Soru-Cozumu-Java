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
        sonucGoster.innerHTML = "<br><h3>????z??m</h3><p> ????z??m?? anlamaya ba??larken ??ncelikle sa??da g??rd??????n ipucu " +
            "ba??l?????? alt??na bakabilirsin. Bakt??ysan devam edelim. G??rd??????m??z ??zere, ??arpma i??leminin sonucunun tamsay?? olmas?? i??in " +
            "her ??arpandan 2'nin kuvveti kadar olmal??d??r. ??rne??in;<br><center><i>8 x 18</i></center><br> i??lemini ele alal??m.<br>" +
            "<br><center><i>8'in ??arpanlar?? 2 x 2 x 2</i></center><br><center>ve</center><br><center><i>18'in ??arpanlar?? 2 x 3 x 3't??r</i></center>.<br>" +
            " 8 ile 18'i ??arparsak; (2 x 2 x 2 x 2) x 3 x 3 oldu??u g??r??l??r. Dolay??s??yla; " +
            "K??k d??????na 2 x 2 x 3 olarak ????kacakt??r. Bu da 12 demektir. Di??er say??lar i??in de ayn?? ????z??m ge??erlidir.<br><b>" + xhr.responseText + "</b>";

        scroll(0, 1000);
    }
}