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
        sonuc.value = xhr.responseText;
        sonuc.readOnly = true;
        sonucGoster.innerHTML = "<br><h3>Çözüm</h3><p>Bu soruda aklımıza gelmesi gereken ilk kural, sağda ipucu tablosunda da görebileceğiniz gibi; " +
            "elinizde bulunan üç adet sayının üçüne de aynı işlemi uygularsanız, bu sayıların birbirlerine olan oranı değişmez. Bu bilgiden faydalanarak soruyu çözmeye başlayalım.<br>" +
            "Örnek olarak a sayısını ele alalım. Karekök içindeki bir sayıyı kök dışına çıkarmak istiyorsak karesini almalıyız.(Unutmayalım ki, " +
            "küpkök içinde bulunan bir sayıyı dışarıya çıkarmak isteseydik küpünü alırdık. Bu durum kökün derecesiyle ilişkilidir. Sağ üstteki anatomi başlıklı tablodan faydalanabilirsin.) " +
            "Biz de burada a sayısının karesini alalım. Pay kısmında artık kök 2 değil direkt 2 ; paydada ise 4 olacak. 2/4 işleminden, bunun 1/2 = 0.5 olduğunu görebiliriz.<br>" +
            "Diğer sayılara da aynı işlemi uygulayıp elimizdeki ondalık sayıları karşılaştırarak çözümü bulduk. Sonuç olarak; <br>"  +
                    "</p><br><center>" + xhr.responseText + "</center><br><p>sonucunu elde ederiz.<br><b>Cevap: C) " + xhr.responseText + "</b></p>";

        scroll(0, 1100);
    }
}