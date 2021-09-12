function ikiBinYirmiNoktaBir(){

    //Sayıların tamamını içeren div
    var satirBir = document.createElement("div");
    satirBir.setAttribute("class", "row");
    //sil butonuyla tüm satırı silmek için kullanılır.
    satirBir.setAttribute("id", grup_no + "_satir_1");

    //Soru adını taşıyan div
    var soruIndex = document.createElement('div');
    soruIndex.setAttribute("class", "row");
    soruIndex.setAttribute("id", "soruIndex");
    soruIndex.innerHTML += "<center><h3>Soru Formu</h3></center><br><h4>İpucu</h4><p>Değerleri doldurmadan önce soruyu okumalısın. Hangi değerleri yazman gerektiğini sorudan anlayabilirsin.<br>" +
        "<br>Köklü sayıları yazarken aşağıdaki örnekten ve sağ üstteki anatomi bilgisinden faydalanabilirsin." +
        "<center><b>7√2= Derece: 2, Katsayı: 7, Değer: 2</b></center><br>" +
        "Çözümün anahtar bilgisi için sağ tablonun altındaki ipucu başlığına bakabilirsin.</p>";

    //İlk sayının kolon divlerini içeren div
    var satirIki = document.createElement("div");
    satirIki.setAttribute("class", "row");
    satirIki.setAttribute("id", "satirIki");

    //İlk sayının derece div i
    var sutunIkiBir = document.createElement("div");
    sutunIkiBir.setAttribute("class", "col");
    sutunIkiBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunIkiIki = document.createElement("div");
    sutunIkiIki.setAttribute("class", "col");
    sutunIkiIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunIkiUc = document.createElement("div");
    sutunIkiUc.setAttribute("class", "col");
    sutunIkiUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece1 = document.createElement("input");
    var kokKatsayi1 = document.createElement("input");
    var kokIciDeger1 = document.createElement("input");

    kokDerece1.setAttribute("name", "2020_derece_1");
    kokDerece1.setAttribute("id", "2020_derece_1");
    kokDerece1.setAttribute("class", "form-control");
    kokDerece1.setAttribute("type", "text");
    kokDerece1.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger1.setAttribute("name", "2020_kokIciDeger_1");
    kokIciDeger1.setAttribute("id", "2020_kokIciDeger_1");
    kokIciDeger1.setAttribute("class", "form-control");
    kokIciDeger1.setAttribute("type", "text");
    kokIciDeger1.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi1.setAttribute("name", "2020_katsayi_1");
    kokKatsayi1.setAttribute("id", "2020_katsayi_1");
    kokKatsayi1.setAttribute("class", "form-control");
    kokKatsayi1.setAttribute("type", "text");
    kokKatsayi1.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunIkiBir.appendChild(kokDerece1);
    sutunIkiIki.appendChild(kokKatsayi1);
    sutunIkiUc.appendChild(kokIciDeger1);

    //sütun divleri satır divine eklenir.
    satirIki.appendChild(sutunIkiBir);
    satirIki.appendChild(sutunIkiIki);
    satirIki.appendChild(sutunIkiUc);

    satirBir.appendChild(soruIndex);
    satirBir.appendChild(satirIki);

    /*

      İkinci sayının kolon divlerini içeren div

     */
    //İlk sayının kolon divlerini içeren div
    var satirUc = document.createElement("div");
    satirUc.setAttribute("class", "row");
    satirUc.setAttribute("id", "satirUc");

    //İlk sayının derece div i
    var sutunUcBir = document.createElement("div");
    sutunUcBir.setAttribute("class", "col");
    sutunUcBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunUcIki = document.createElement("div");
    sutunUcIki.setAttribute("class", "col");
    sutunUcIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunUcUc = document.createElement("div");
    sutunUcUc.setAttribute("class", "col");
    sutunUcUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece2 = document.createElement("input");
    var kokKatsayi2 = document.createElement("input");
    var kokIciDeger2 = document.createElement("input");

    kokDerece2.setAttribute("name", "2020_derece_2");
    kokDerece2.setAttribute("id", "2020_derece_2");
    kokDerece2.setAttribute("class", "form-control");
    kokDerece2.setAttribute("type", "text");
    kokDerece2.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger2.setAttribute("name", "2020_kokIciDeger_2");
    kokIciDeger2.setAttribute("id", "2020_kokIciDeger_2");
    kokIciDeger2.setAttribute("class", "form-control");
    kokIciDeger2.setAttribute("type", "text");
    kokIciDeger2.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi2.setAttribute("name", "2020_katsayi_2");
    kokKatsayi2.setAttribute("id", "2020_katsayi_2");
    kokKatsayi2.setAttribute("class", "form-control");
    kokKatsayi2.setAttribute("type", "text");
    kokKatsayi2.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunUcBir.appendChild(kokDerece2);
    sutunUcIki.appendChild(kokKatsayi2);
    sutunUcUc.appendChild(kokIciDeger2);

    //sütun divleri satır divine eklenir.
    satirUc.appendChild(sutunUcBir);
    satirUc.appendChild(sutunUcIki);
    satirUc.appendChild(sutunUcUc);

    satirBir.appendChild(satirUc);


    //Üçüncü Sayı
    //İlk sayının kolon divlerini içeren div
    var satirDort = document.createElement("div");
    satirDort.setAttribute("class", "row");
    satirDort.setAttribute("id", "satirDort");

    //İlk sayının derece div i
    var sutunDortBir = document.createElement("div");
    sutunDortBir.setAttribute("class", "col");
    sutunDortBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunDortIki = document.createElement("div");
    sutunDortIki.setAttribute("class", "col");
    sutunDortIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunDortUc = document.createElement("div");
    sutunDortUc.setAttribute("class", "col");
    sutunDortUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece3 = document.createElement("input");
    var kokKatsayi3 = document.createElement("input");
    var kokIciDeger3 = document.createElement("input");

    kokDerece3.setAttribute("name", "2020_derece_3");
    kokDerece3.setAttribute("id", "2020_derece_3");
    kokDerece3.setAttribute("class", "form-control");
    kokDerece3.setAttribute("type", "text");
    kokDerece3.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger3.setAttribute("name", "2020_kokIciDeger_3");
    kokIciDeger3.setAttribute("id", "2020_kokIciDeger_3");
    kokIciDeger3.setAttribute("class", "form-control");
    kokIciDeger3.setAttribute("type", "text");
    kokIciDeger3.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi3.setAttribute("name", "2020_katsayi_3");
    kokKatsayi3.setAttribute("id", "2020_katsayi_3");
    kokKatsayi3.setAttribute("class", "form-control");
    kokKatsayi3.setAttribute("type", "text");
    kokKatsayi3.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunDortBir.appendChild(kokDerece3);
    sutunDortIki.appendChild(kokKatsayi3);
    sutunDortUc.appendChild(kokIciDeger3);

    //sütun divleri satır divine eklenir.
    satirDort.appendChild(sutunDortBir);
    satirDort.appendChild(sutunDortIki);
    satirDort.appendChild(sutunDortUc);

    satirBir.appendChild(satirDort);

    //Dördüncü Sayı
    //İlk sayının kolon divlerini içeren div
    var satirBes = document.createElement("div");
    satirBes.setAttribute("class", "row");
    satirBes.setAttribute("id", "satirBes");

    //İlk sayının derece div i
    var sutunBesBir = document.createElement("div");
    sutunBesBir.setAttribute("class", "col");
    sutunBesBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunBesIki = document.createElement("div");
    sutunBesIki.setAttribute("class", "col");
    sutunBesIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunBesUc = document.createElement("div");
    sutunBesUc.setAttribute("class", "col");
    sutunBesUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece4 = document.createElement("input");
    var kokKatsayi4 = document.createElement("input");
    var kokIciDeger4 = document.createElement("input");

    kokDerece4.setAttribute("name", "2020_derece_4");
    kokDerece4.setAttribute("id", "2020_derece_4");
    kokDerece4.setAttribute("class", "form-control");
    kokDerece4.setAttribute("type", "text");
    kokDerece4.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger4.setAttribute("name", "2020_kokIciDeger_4");
    kokIciDeger4.setAttribute("id", "2020_kokIciDeger_4");
    kokIciDeger4.setAttribute("class", "form-control");
    kokIciDeger4.setAttribute("type", "text");
    kokIciDeger4.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi4.setAttribute("name", "2020_katsayi_4");
    kokKatsayi4.setAttribute("id", "2020_katsayi_4");
    kokKatsayi4.setAttribute("class", "form-control");
    kokKatsayi4.setAttribute("type", "text");
    kokKatsayi4.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunBesBir.appendChild(kokDerece4);
    sutunBesIki.appendChild(kokKatsayi4);
    sutunBesUc.appendChild(kokIciDeger4);

    //sütun divleri satır divine eklenir.
    satirBes.appendChild(sutunBesBir);
    satirBes.appendChild(sutunBesIki);
    satirBes.appendChild(sutunBesUc);

    satirBir.appendChild(satirBes);

    //Beşinci Sayı
    //İlk sayının kolon divlerini içeren div
    var satirAlti = document.createElement("div");
    satirAlti.setAttribute("class", "row");
    satirAlti.setAttribute("id", "satirAlti");

    //İlk sayının derece div i
    var sutunAltiBir = document.createElement("div");
    sutunAltiBir.setAttribute("class", "col");
    sutunAltiBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunAltiIki = document.createElement("div");
    sutunAltiIki.setAttribute("class", "col");
    sutunAltiIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunAltiUc = document.createElement("div");
    sutunAltiUc.setAttribute("class", "col");
    sutunAltiUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece5 = document.createElement("input");
    var kokKatsayi5 = document.createElement("input");
    var kokIciDeger5 = document.createElement("input");

    kokDerece5.setAttribute("name", "2020_derece_5");
    kokDerece5.setAttribute("id", "2020_derece_5");
    kokDerece5.setAttribute("class", "form-control");
    kokDerece5.setAttribute("type", "text");
    kokDerece5.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger5.setAttribute("name", "2020_kokIciDeger_5");
    kokIciDeger5.setAttribute("id", "2020_kokIciDeger_5");
    kokIciDeger5.setAttribute("class", "form-control");
    kokIciDeger5.setAttribute("type", "text");
    kokIciDeger5.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi5.setAttribute("name", "2020_katsayi_5");
    kokKatsayi5.setAttribute("id", "2020_katsayi_5");
    kokKatsayi5.setAttribute("class", "form-control");
    kokKatsayi5.setAttribute("type", "text");
    kokKatsayi5.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunAltiBir.appendChild(kokDerece5);
    sutunAltiIki.appendChild(kokKatsayi5);
    sutunAltiUc.appendChild(kokIciDeger5);

    //sütun divleri satır divine eklenir.
    satirAlti.appendChild(sutunAltiBir);
    satirAlti.appendChild(sutunAltiIki);
    satirAlti.appendChild(sutunAltiUc);

    satirBir.appendChild(satirAlti);

    //Altıncı Sayı
    //İlk sayının kolon divlerini içeren div
    var satirYedi = document.createElement("div");
    satirYedi.setAttribute("class", "row");
    satirYedi.setAttribute("id", "satirYedi");

    //İlk sayının derece div i
    var sutunYediBir = document.createElement("div");
    sutunYediBir.setAttribute("class", "col");
    sutunYediBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunYediIki = document.createElement("div");
    sutunYediIki.setAttribute("class", "col");
    sutunYediIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunYediUc = document.createElement("div");
    sutunYediUc.setAttribute("class", "col");
    sutunYediUc.setAttribute("id", "col");

    // İlk sayının input elemenları
    var kokDerece6 = document.createElement("input");
    var kokKatsayi6 = document.createElement("input");
    var kokIciDeger6 = document.createElement("input");

    kokDerece6.setAttribute("name", "2020_derece_6");
    kokDerece6.setAttribute("id", "2020_derece_6");
    kokDerece6.setAttribute("class", "form-control");
    kokDerece6.setAttribute("type", "text");
    kokDerece6.setAttribute("placeholder", "Kök Derecesi");

    kokIciDeger6.setAttribute("name", "2020_kokIciDeger_6");
    kokIciDeger6.setAttribute("id", "2020_kokIciDeger_6");
    kokIciDeger6.setAttribute("class", "form-control");
    kokIciDeger6.setAttribute("type", "text");
    kokIciDeger6.setAttribute("placeholder", "Kök İçi Değer");

    kokKatsayi6.setAttribute("name", "2020_katsayi_6");
    kokKatsayi6.setAttribute("id", "2020_katsayi_6");
    kokKatsayi6.setAttribute("class", "form-control");
    kokKatsayi6.setAttribute("type", "text");
    kokKatsayi6.setAttribute("placeholder", "Kök Katsayısı");

    //input elemanları sütun divlerine eklenir.
    sutunYediBir.appendChild(kokDerece6);
    sutunYediIki.appendChild(kokKatsayi6);
    sutunYediUc.appendChild(kokIciDeger6);

    //sütun divleri satır divine eklenir.
    satirYedi.appendChild(sutunYediBir);
    satirYedi.appendChild(sutunYediIki);
    satirYedi.appendChild(sutunYediUc);

    satirBir.appendChild(satirYedi);

    satirBir.style.marginTop = '30px';
    satirIki.style.marginTop = '10px';
    satirUc.style.marginTop = '10px';
    satirDort.style.marginTop = '10px';
    satirBes.style.marginTop = '10px';
    satirAlti.style.marginTop = '10px';
    satirYedi.style.marginTop = '10px';

    satirBir.style.backgroundColor = "#3d94ff";
    satirBir.style.padding = "10px";
    satirBir.style.borderRadius = "2em";

    var satirSekiz = document.createElement("div");
    satirSekiz.setAttribute("class", "row");
    satirSekiz.setAttribute("id", "satirSekiz");

    //İlk sayının derece div i
    var sutunSekizBir = document.createElement("div");
    sutunSekizBir.setAttribute("class", "col");
    sutunSekizBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunSekizIki = document.createElement("div");
    sutunSekizIki.setAttribute("class", "col");
    sutunSekizIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunSekizUc = document.createElement("div");
    sutunSekizUc.setAttribute("class", "col");
    sutunSekizUc.setAttribute("id", "col");

//İlk sayının derece div i
    var sutunSekizBir = document.createElement("div");
    sutunSekizBir.setAttribute("class", "col");
    sutunSekizBir.setAttribute("id", "col");

    //İlk sayının katsayı div i
    var sutunSekizIki = document.createElement("div");
    sutunSekizIki.setAttribute("class", "col");
    sutunSekizIki.setAttribute("id", "col");

    //İlk sayının kökiçideğer divi
    var sutunSekizUc = document.createElement("div");
    sutunSekizUc.setAttribute("class", "col");
    sutunSekizUc.setAttribute("id", "col");

    var sonucInput = document.createElement("INPUT");
    sonucInput.setAttribute("class", "form-control");
    sonucInput.setAttribute("name","2020_sonuc");
    sonucInput.setAttribute("id","2020_sonuc");
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
    hesaplaButon.setAttribute("onclick", 'ikiBinYirmiSorusuServleteGonder()');
    hesaplaButon.textContent = "Hesapla";

    satirSekiz.style.marginTop = '10px';

    sutunSekizBir.appendChild(sonucInput);
    sutunSekizIki.appendChild(silButon);
    sutunSekizUc.appendChild(hesaplaButon);

    //sütun divleri satır divine eklenir.
    satirSekiz.appendChild(sutunSekizBir);
    satirSekiz.appendChild(sutunSekizIki);
    satirSekiz.appendChild(sutunSekizUc);

    satirBir.appendChild(satirSekiz);

    var sonucGoster = document.createElement("div");
    sonucGoster.setAttribute("class", "row");
    sonucGoster.setAttribute("id", "sonucGoster");

    satirBir.appendChild(sonucGoster);

    var formId = document.getElementById("sayilarForm");
    formId.appendChild(satirBir);

    kaydir();
}

function kaydir(){
    window.scrollTo(0,document.body.scrollHeight);
}