function ikiBinOnYediNoktaIkiArayuz(){
    var satir_1 = document.createElement("div");
    satir_1.setAttribute("id", grup_no +  "_satir_1");
    satir_1.setAttribute("class", "row");

    var soruAciklama = document.createElement('div');
    soruAciklama.setAttribute("class", "row");
    soruAciklama.setAttribute("id", "soruIndex");
    soruAciklama.innerHTML += "Aşağıdaki kutulara soruda gördüğünüz değerleri formata uygun yazmalısın. Bunu yaparken sağ üstteki anatomiden faydalanabilirsin.";
    soruAciklama.style.color = "#ffffff";

    var satir_2 = document.createElement("div");
    satir_2.setAttribute("id", "satir_2");
    satir_2.setAttribute("class", "row");

    var satir_2_sutun_1 = document.createElement("div");
    satir_2_sutun_1.setAttribute("id", "satir_2_sutun_1");
    satir_2_sutun_1.setAttribute("class", "col");

    var satir_2_sutun_2 = document.createElement("div");
    satir_2_sutun_2.setAttribute("id", "satir_2_sutun_2");
    satir_2_sutun_2.setAttribute("class", "col");

    var satir_2_sutun_3 = document.createElement("div");
    satir_2_sutun_3.setAttribute("id", "satir_2_sutun_3");
    satir_2_sutun_3.setAttribute("class", "col");

    var satir_2_sutun_4 = document.createElement("div");
    satir_2_sutun_4.setAttribute("id", "satir_2_sutun_4");
    satir_2_sutun_4.setAttribute("class", "col-sm");

    var satir_2_sutun_5 = document.createElement("div");
    satir_2_sutun_5.setAttribute("id", "satir_2_sutun_5");
    satir_2_sutun_5.setAttribute("class", "col");

    var sonucKutusu = document.createElement("div");
    sonucKutusu.setAttribute("id", "sonucKutusu");
    sonucKutusu.setAttribute("class", "row");

    satir_2_sutun_4.innerHTML = "/";

    var kokDerece1 = document.createElement("input");
    var kokKatsayi1 = document.createElement("input");
    var kokIciDeger1 = document.createElement("input");
    var payda1 = document.createElement("input");

    kokDerece1.setAttribute("name", "2017_2_derece_1");
    kokDerece1.setAttribute("id", "2017_2_derece_1");
    kokDerece1.setAttribute("class", "form-control");
    kokDerece1.setAttribute("type", "text");
    kokDerece1.setAttribute("placeholder", "Derece");

    kokIciDeger1.setAttribute("name", "2017_2_kokIciDeger_1");
    kokIciDeger1.setAttribute("id", "2017_2_kokIciDeger_1");
    kokIciDeger1.setAttribute("class", "form-control");
    kokIciDeger1.setAttribute("type", "text");
    kokIciDeger1.setAttribute("placeholder", "Değer");

    kokKatsayi1.setAttribute("name", "2017_2_katsayi_1");
    kokKatsayi1.setAttribute("id", "2017_2_katsayi_1");
    kokKatsayi1.setAttribute("class", "form-control");
    kokKatsayi1.setAttribute("type", "text");
    kokKatsayi1.setAttribute("placeholder", "Katsayı");

    payda1.setAttribute("name", "2017_2_payda_1");
    payda1.setAttribute("id", "2017_2_payda_1");
    payda1.setAttribute("class", "form-control");
    payda1.setAttribute("type", "text");
    payda1.setAttribute("placeholder", "Payda");

    satir_2_sutun_1.appendChild(kokDerece1);
    satir_2_sutun_2.appendChild(kokKatsayi1);
    satir_2_sutun_3.appendChild(kokIciDeger1);
    satir_2_sutun_5.appendChild(payda1);

    satir_2.appendChild(satir_2_sutun_1);
    satir_2.appendChild(satir_2_sutun_2);
    satir_2.appendChild(satir_2_sutun_3);
    satir_2.appendChild(satir_2_sutun_4);
    satir_2.appendChild(satir_2_sutun_5);

    /*
    *
    * Buradan itibaren aşağısı 2 ve 3 ve sonuc ve butonlar
    *
    * */

    var satir_3 = document.createElement("div");
    satir_3.setAttribute("id", "satir_3");
    satir_3.setAttribute("class", "row");

    var satir_3_sutun_1 = document.createElement("div");
    satir_3_sutun_1.setAttribute("id", "satir_3_sutun_1");
    satir_3_sutun_1.setAttribute("class", "col");

    var satir_3_sutun_2 = document.createElement("div");
    satir_3_sutun_2.setAttribute("id", "satir_3_sutun_2");
    satir_3_sutun_2.setAttribute("class", "col");

    var satir_3_sutun_3 = document.createElement("div");
    satir_3_sutun_3.setAttribute("id", "satir_3_sutun_3");
    satir_3_sutun_3.setAttribute("class", "col");

    var satir_3_sutun_4 = document.createElement("div");
    satir_3_sutun_4.setAttribute("id", "satir_3_sutun_4");
    satir_3_sutun_4.setAttribute("class", "col-sm");

    var satir_3_sutun_5 = document.createElement("div");
    satir_3_sutun_5.setAttribute("id", "satir_3_sutun_5");
    satir_3_sutun_5.setAttribute("class", "col");

    satir_3_sutun_4.innerHTML = "/";

    var kokDerece2 = document.createElement("input");
    var kokKatsayi2 = document.createElement("input");
    var kokIciDeger2 = document.createElement("input");
    var payda2 = document.createElement("input");

    kokDerece2.setAttribute("name", "2017_2_derece_2");
    kokDerece2.setAttribute("id", "2017_2_derece_2");
    kokDerece2.setAttribute("class", "form-control");
    kokDerece2.setAttribute("type", "text");
    kokDerece2.setAttribute("placeholder", "Derece");

    kokIciDeger2.setAttribute("name", "2017_2_kokIciDeger_2");
    kokIciDeger2.setAttribute("id", "2017_2_kokIciDeger_2");
    kokIciDeger2.setAttribute("class", "form-control");
    kokIciDeger2.setAttribute("type", "text");
    kokIciDeger2.setAttribute("placeholder", "Değer");

    kokKatsayi2.setAttribute("name", "2017_2_katsayi_2");
    kokKatsayi2.setAttribute("id", "2017_2_katsayi_2");
    kokKatsayi2.setAttribute("class", "form-control");
    kokKatsayi2.setAttribute("type", "text");
    kokKatsayi2.setAttribute("placeholder", "Katsayı");

    payda2.setAttribute("name", "2017_2_payda_2");
    payda2.setAttribute("id", "2017_2_payda_2");
    payda2.setAttribute("class", "form-control");
    payda2.setAttribute("type", "text");
    payda2.setAttribute("placeholder", "Payda");

    satir_3_sutun_1.appendChild(kokDerece2);
    satir_3_sutun_2.appendChild(kokKatsayi2);
    satir_3_sutun_3.appendChild(kokIciDeger2);
    satir_3_sutun_5.appendChild(payda2);

    satir_3.appendChild(satir_3_sutun_1);
    satir_3.appendChild(satir_3_sutun_2);
    satir_3.appendChild(satir_3_sutun_3);
    satir_3.appendChild(satir_3_sutun_4);
    satir_3.appendChild(satir_3_sutun_5);

    /*
    *
    * 3. sayı başlangıç
    *
    */

    var satir_4 = document.createElement("div");
    satir_4.setAttribute("id", "satir_4");
    satir_4.setAttribute("class", "row");

    var satir_4_sutun_1 = document.createElement("div");
    satir_4_sutun_1.setAttribute("id", "satir_4_sutun_1");
    satir_4_sutun_1.setAttribute("class", "col");

    var satir_4_sutun_2 = document.createElement("div");
    satir_4_sutun_2.setAttribute("id", "satir_4_sutun_2");
    satir_4_sutun_2.setAttribute("class", "col");

    var satir_4_sutun_3 = document.createElement("div");
    satir_4_sutun_3.setAttribute("id", "satir_4_sutun_3");
    satir_4_sutun_3.setAttribute("class", "col");

    var satir_4_sutun_4 = document.createElement("div");
    satir_4_sutun_4.setAttribute("id", "satir_4_sutun_4");
    satir_4_sutun_4.setAttribute("class", "col-sm");

    var satir_4_sutun_5 = document.createElement("div");
    satir_4_sutun_5.setAttribute("id", "satir_4_sutun_5");
    satir_4_sutun_5.setAttribute("class", "col");

    satir_4_sutun_4.innerHTML = "/";

    var kokDerece3 = document.createElement("input");
    var kokKatsayi3 = document.createElement("input");
    var kokIciDeger3 = document.createElement("input");
    var payda3 = document.createElement("input");

    kokDerece3.setAttribute("name", "2017_2_derece_3");
    kokDerece3.setAttribute("id", "2017_2_derece_3");
    kokDerece3.setAttribute("class", "form-control");
    kokDerece3.setAttribute("type", "text");
    kokDerece3.setAttribute("placeholder", "Derece");

    kokIciDeger3.setAttribute("name", "2017_2_kokIciDeger_3");
    kokIciDeger3.setAttribute("id", "2017_2_kokIciDeger_3");
    kokIciDeger3.setAttribute("class", "form-control");
    kokIciDeger3.setAttribute("type", "text");
    kokIciDeger3.setAttribute("placeholder", "Değer");

    kokKatsayi3.setAttribute("name", "2017_2_katsayi_3");
    kokKatsayi3.setAttribute("id", "2017_2_katsayi_3");
    kokKatsayi3.setAttribute("class", "form-control");
    kokKatsayi3.setAttribute("type", "text");
    kokKatsayi3.setAttribute("placeholder", "Katsayı");

    payda3.setAttribute("name", "2017_2_payda_3");
    payda3.setAttribute("id", "2017_2_payda_3");
    payda3.setAttribute("class", "form-control");
    payda3.setAttribute("type", "text");
    payda3.setAttribute("placeholder", "Payda");

    satir_4_sutun_1.appendChild(kokDerece3);
    satir_4_sutun_2.appendChild(kokKatsayi3);
    satir_4_sutun_3.appendChild(kokIciDeger3);
    satir_4_sutun_5.appendChild(payda3);

    satir_4.appendChild(satir_4_sutun_1);
    satir_4.appendChild(satir_4_sutun_2);
    satir_4.appendChild(satir_4_sutun_3);
    satir_4.appendChild(satir_4_sutun_4);
    satir_4.appendChild(satir_4_sutun_5);

    /*
    *
    * Butonlar
    *
    * */

    var satir_5 = document.createElement("div");
    satir_5.setAttribute("id", "satir_5");
    satir_5.setAttribute("class", "row");

    var satir_5_sutun_1 = document.createElement("div");
    satir_5_sutun_1.setAttribute("id", "satir_5_sutun_1");
    satir_5_sutun_1.setAttribute("class", "col");

    var satir_5_sutun_2 = document.createElement("div");
    satir_5_sutun_2.setAttribute("id", "satir_5_sutun_2");
    satir_5_sutun_2.setAttribute("class", "col");

    var satir_5_sutun_3 = document.createElement("div");
    satir_5_sutun_3.setAttribute("id", "satir_5_sutun_3");
    satir_5_sutun_3.setAttribute("class", "col");


    var sonucInput = document.createElement("INPUT");
    sonucInput.setAttribute("class", "form-control");
    sonucInput.setAttribute("name","2017_2_sonuc");
    sonucInput.setAttribute("id","2017_2_sonuc");
    sonucInput.setAttribute("placeholder", "Sonuç");

    var silButon = document.createElement("BUTTON");
    silButon.setAttribute("class", "btn btn-danger");
    silButon.setAttribute("name", grup_no + "_silButon");
    silButon.textContent = "Grubu Sil";
    silButon.setAttribute("onclick", 'silButonununGrupNosunuGetir(this.getAttribute("name"))');


    var hesaplaButon = document.createElement("BUTTON");
    hesaplaButon.setAttribute("class", "btn btn-success");
    hesaplaButon.setAttribute("type", "button");
    hesaplaButon.setAttribute("name", grup_no + "_hesaplaButon");
    hesaplaButon.setAttribute("id", grup_no + "_hesaplaButon");
    hesaplaButon.setAttribute("onclick", 'ikiBinOnYediNoktaIkiSorusuServleteGonder()');
    hesaplaButon.textContent = "Hesapla";

    soruAciklama.style.fontSize = '12pt';
    satir_1.style.marginTop = '30px';
    satir_2.style.marginTop = '10px';
    satir_3.style.marginTop = '10px';
    satir_4.style.marginTop = '10px';
    satir_5.style.marginTop = '10px';

    satir_1.style.backgroundColor = "#18A2D9";
    satir_1.style.padding = "7px";
    satir_1.style.borderRadius = "2em";


    satir_5_sutun_1.appendChild(sonucInput);
    satir_5_sutun_2.appendChild(silButon);
    satir_5_sutun_3.appendChild(hesaplaButon);

    satir_5.appendChild(satir_5_sutun_1);
    satir_5.appendChild(satir_5_sutun_2);
    satir_5.appendChild(satir_5_sutun_3);

    satir_1.appendChild(soruAciklama);
    satir_1.appendChild(satir_2);
    satir_1.appendChild(satir_3);
    satir_1.appendChild(satir_4);
    satir_1.appendChild(satir_5);
    satir_1.appendChild(sonucKutusu);

    var formId = document.getElementById("sayilarForm");
    formId.appendChild(satir_1);

}