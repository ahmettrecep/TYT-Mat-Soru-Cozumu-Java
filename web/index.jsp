<%--
  Created by IntelliJ IDEA.
  User: Recep
  Date: 12.08.2021
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>√ Köklü Sayılar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script type="text/javascript">
    var grup_no = 1;
    var komponent_no = 1;

    function ismiHiddenaEkle(name){
      var hiddenEleman = document.getElementById("grupNoTutan");
      hiddenEleman.value = name;
      hesaplaServleteGonder();
    }

    function silButonununGrupNosunuGetir(butonName){
      grupSil(butonName.charAt(0));
    }

    function grupSil(butonGrupNo){
      document.getElementById(butonGrupNo + "_satir_1").remove();
    }
    function sayiEklemeKutular(operatorTipi){
      var satir_1Div = document.createElement("div");
      satir_1Div.setAttribute("class", "row");
      satir_1Div.setAttribute("id", grup_no + "_satir_1");
      var satir_2Div = document.createElement("div");
      satir_2Div.setAttribute("class", "row");
      var satir_3Div = document.createElement("div");
      satir_3Div.setAttribute("class", "row");
      satir_3Div.setAttribute("id", "operator")
      var satir_4Div = document.createElement("div");
      satir_4Div.setAttribute("class", "row");
      var satir_5Div = document.createElement("div");
      satir_5Div.setAttribute("class", "row");


      var node = "";
      switch (operatorTipi) {
        case "+":
          node = document.createTextNode('+');
          break;
        case "-":
          node = document.createTextNode('-');
          break;
        case "*":
          node = document.createTextNode('*');
          break;
        case "/":
          node = document.createTextNode('/');
          break;
        case "√":
          node = document.createTextNode('√');
          break;
        case "0/":
          node = document.createTextNode('0/');
          break;
        case "^√==":
          node = document.createTextNode('^√==');
          break;
        case "^==":
          node = document.createTextNode('^==');
          break;
        default:
          node = document.createTextNode('Hata');
      }
      satir_3Div.appendChild(node);
      satir_3Div.style.textAlign = "center";
      satir_3Div.style.fontSize = "14pt";
      satir_3Div.style.fontColor = "#ffffff";

      var satir_2_sutun_1Div = document.createElement("div");
      var satir_2_sutun_2Div = document.createElement("div");
      var satir_2_sutun_3Div = document.createElement("div");
      satir_2_sutun_1Div.setAttribute("class", "col");
      satir_2_sutun_2Div.setAttribute("class", "col");
      satir_2_sutun_3Div.setAttribute("class", "col");

      var satir_4_sutun_1Div = document.createElement("div");
      var satir_4_sutun_2Div = document.createElement("div");
      var satir_4_sutun_3Div = document.createElement("div");
      satir_4_sutun_1Div.setAttribute("class", "col");
      satir_4_sutun_2Div.setAttribute("class", "col");
      satir_4_sutun_3Div.setAttribute("class", "col");

      var satir_5_sutun_1Div = document.createElement("div");
      var satir_5_sutun_2Div = document.createElement("div");
      var satir_5_sutun_3Div = document.createElement("div");
      satir_5_sutun_1Div.setAttribute("class", "col");
      satir_5_sutun_2Div.setAttribute("class", "col");
      satir_5_sutun_3Div.setAttribute("class", "col");



      var kokDerece1 = document.createElement("input");
      var kokKatsayi1 = document.createElement("input");
      var kokIciDeger1 = document.createElement("input");

      kokDerece1.setAttribute("name", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece1.setAttribute("id", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece1.setAttribute("class", "form-control");
      kokDerece1.setAttribute("type", "text");
      kokDerece1.setAttribute("placeholder", "Kök Derecesi");

      kokIciDeger1.setAttribute("name", grup_no +  "_kokIciDeger_" + komponent_no);
      kokIciDeger1.setAttribute("id", grup_no + "_kokIciDeger_" + komponent_no);
      kokIciDeger1.setAttribute("class", "form-control");
      kokIciDeger1.setAttribute("type", "text");
      kokIciDeger1.setAttribute("placeholder", "Kök İçi Değer");

      kokKatsayi1.setAttribute("name", grup_no +  "_kokKatsayi_" + komponent_no);
      kokKatsayi1.setAttribute("id", grup_no + "_kokKatsayi_"+ komponent_no);
      kokKatsayi1.setAttribute("class", "form-control");
      kokKatsayi1.setAttribute("type", "text");
      kokKatsayi1.setAttribute("placeholder", "Kök Katsayısı");

      komponent_no = komponent_no + 1;

      var kokDerece2 = document.createElement("input");
      var kokIciDeger2 = document.createElement("input");
      var kokKatsayi2 = document.createElement("input");

      kokDerece2.setAttribute("name", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece2.setAttribute("type","text");
      kokDerece2.setAttribute("id", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece2.setAttribute("class", "form-control");
      kokDerece2.setAttribute("placeholder", "Kök Derecesi");

      kokIciDeger2.setAttribute("name", grup_no +  "_kokIciDeger_" + komponent_no);
      kokIciDeger2.setAttribute("type", "text");
      kokIciDeger2.setAttribute("id", grup_no + "_kokIciDeger_" + komponent_no);
      kokIciDeger2.setAttribute("class", "form-control");
      kokIciDeger2.setAttribute("placeholder", "Kök İçi Değer");

      kokKatsayi2.setAttribute("name", grup_no + "_kokKatsayi_" + komponent_no);
      kokKatsayi2.setAttribute("type","text");
      kokKatsayi2.setAttribute("id", grup_no + "_kokKatsayi_"+ komponent_no);
      kokKatsayi2.setAttribute("class", "form-control");
      kokKatsayi2.setAttribute("placeholder", "Kök Katsayısı");


      var sonucInput = document.createElement("INPUT");
      sonucInput.setAttribute("class", "form-control");
      sonucInput.setAttribute("name", grup_no + "_sonuc");
      sonucInput.setAttribute("id", grup_no + "_sonuc");
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
      hesaplaButon.setAttribute("onclick", 'ismiHiddenaEkle(this.getAttribute("name"))');
      hesaplaButon.textContent = "Hesapla";

      komponent_no = 1;
      grup_no = grup_no + 1;

      satir_2_sutun_1Div.appendChild(kokDerece1);
      satir_2_sutun_2Div.appendChild(kokKatsayi1);
      satir_2_sutun_3Div.appendChild(kokIciDeger1);

      satir_2Div.appendChild(satir_2_sutun_1Div);
      satir_2Div.appendChild(satir_2_sutun_2Div);
      satir_2Div.appendChild(satir_2_sutun_3Div);

      satir_4_sutun_1Div.appendChild(kokDerece2);
      satir_4_sutun_2Div.appendChild(kokKatsayi2);
      satir_4_sutun_3Div.appendChild(kokIciDeger2);

      satir_4Div.appendChild(satir_4_sutun_1Div);
      satir_4Div.appendChild(satir_4_sutun_2Div);
      satir_4Div.appendChild(satir_4_sutun_3Div);

      satir_5_sutun_1Div.appendChild(sonucInput);
      satir_5_sutun_2Div.appendChild(silButon);
      satir_5_sutun_3Div.appendChild(hesaplaButon);

      satir_5Div.appendChild(satir_5_sutun_1Div);
      satir_5Div.appendChild(satir_5_sutun_2Div);
      satir_5Div.appendChild(satir_5_sutun_3Div);

      satir_1Div.appendChild(satir_2Div);
      satir_1Div.appendChild(satir_3Div);
      satir_1Div.appendChild(satir_4Div);
      satir_1Div.appendChild(satir_5Div);

      satir_1Div.style.marginTop = '30px';
      satir_3Div.style.marginTop = '10px';
      satir_4Div.style.marginTop = '10px';
      satir_5Div.style.marginTop = '10px';

      satir_1Div.style.backgroundColor = "#18A2D9";
      satir_1Div.style.padding = "10px";
      satir_1Div.style.borderRadius = "2em";

      var formId = document.getElementById("sayilarForm");
      formId.appendChild(satir_1Div);
    }
    function hesaplaServleteGonder(){

//make an ajax call and get status value using the same 'id'
      var butonAdi= document.getElementById("grupNoTutan").value;
      var grup_no = butonAdi.charAt(0);
      var i = 1;

      var birinciKokDerecesi;
      var birinciKatsayi;
      var birinciKokIciDeger;

      var ikinciKokDerecesi;
      var ikinciKatsayi;
      var ikinciKokIciDeger;
      var sonuc;
      var operator = document.getElementById("operator").textContent;
      //var url = "#" +  grup_no + "_kokDerecesi_" + i
      //var textboxvalue = $("'" + url + "'").val();
      var birKokD = grup_no + "_kokDerecesi_" + i;
      var birKokK = grup_no + "_kokKatsayi_" + i;
      var birKokID = grup_no + "_kokIciDeger_" + i;
      birinciKokDerecesi = document.getElementById(grup_no + "_kokDerecesi_" + i).value;
      birinciKatsayi = document.getElementById(grup_no + "_kokKatsayi_" + i).value;
      birinciKokIciDeger = document.getElementById(grup_no + "_kokIciDeger_" + i).value;
      sonuc = document.getElementById(grup_no + "_sonuc");
      i= i + 1;
      var ikiKokD = grup_no + "_kokDerecesi_" + i;
      var ikiKokK = grup_no + "_kokKatsayi_" + i;
      var ikiKokID = grup_no + "_kokIciDeger_" + i;
      ikinciKokDerecesi = document.getElementById(grup_no + "_kokDerecesi_" + i).value;
      ikinciKatsayi = document.getElementById(grup_no + "_kokKatsayi_" + i).value;
      ikinciKokIciDeger = document.getElementById(grup_no + "_kokIciDeger_" + i).value;
      i = 1;


      let url = '/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/HesaplamaIslemleri';
      let xhr = new XMLHttpRequest();
      xhr.open("POST", url, true);
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencode");
      var data;
      data = JSON.stringify({
        "birinci":[{
        birKokD: birinciKokDerecesi,
        birKokK: birinciKatsayi,
        birKokID: birinciKokIciDeger}],

        "ikinci":[{
        ikiKokD: ikinciKokDerecesi,
        ikiKokK: ikinciKatsayi,
        ikiKokID: ikinciKokIciDeger
      }],"operator": operator
      });
      xhr.send(data);
      xhr.onload = function(){
       sonuc.readOnly = true
        sonuc.value = xhr.responseText;
      }
    }
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
      soruIndex.innerHTML += '2020.1';

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

      soruIndex.style.fontSize = '12pt';
      satirBir.style.marginTop = '30px';
      satirIki.style.marginTop = '10px';
      satirUc.style.marginTop = '10px';
      satirDort.style.marginTop = '10px';
      satirBes.style.marginTop = '10px';
      satirAlti.style.marginTop = '10px';
      satirYedi.style.marginTop = '10px';

      satirBir.style.backgroundColor = "#18A2D9";
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

      var formId = document.getElementById("sayilarForm");
      formId.appendChild(satirBir);
    }
    function ismiGizliyeGonder(){
      var hiddenEleman = document.getElementById("grupNoTutan");
      hiddenEleman.value = name;
    }
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

      let url = '/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/ikiBinYirmi';
      let xhr = new XMLHttpRequest();
      xhr.open("POST", url, true);
      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencode");
      var data;
      data = JSON.stringify({
        "birinci":[{
          birKokD: kokDereceBir,
          birKokK: kokKatsayiBir,
          birKokID: kokIciDegerBir}],

        "ikinci":[{
          ikiKokD: kokDereceIki,
          ikiKokK: kokKatsayiIki,
          ikiKokID: kokIciDegerIki
        }],

        "ucuncu":[{
          ucKokD: kokDereceUc,
          ucKokK: kokKatsayiUc,
          ucKokID: kokIciDegerUc
        }],
        "dorduncu":[{
          dortKokD: kokDereceDort,
          dortKokK: kokKatsayiDort,
          dortKokID: kokIciDegerDort
        }],

        "besinci":[{
          besKokD: kokDereceBes,
          besKokK: kokKatsayiBes,
          besKokID: kokIciDegerDort
        }],
        "altinci":[{
          altiKokD: kokDereceAlti,
          altiKokK: kokKatsayiAlti,
          altiKokID: kokIciDegerAlti
        }]
      });
      xhr.send(data);
      xhr.onload = function(){
        sonuc.readOnly = true
        sonuc.value = xhr.responseText;
      }
    }

    function popupGoster(){
      var modal = document.getElementById("myModal");
      var span = document.getElementsByClassName("close")[0];
      modal.style.display="block";
      var icerik = document.getElementById("popupIcerik");
      icerik.textContent = "Bu soruda dikkat etmeniz gereken nokta; hangi iki köklü sayının çarpımının tam sayı olduğunu bulmaktır. \n\n\n" +
              "\tÖrneğin; kök içi değeri 5 olan sayı ile hangi sayıyı çarparsanız tam sayı elde edersiniz? Normalde bu çözümü zihnimizden de yapabiliriz. \n\n\n" +
              "\tSoruyu anlamak için çözüme bir adım daha yakından bakalım. \n\n\n" +
              "Kök 5'ten bahsettik. 5 bir asal sayıdır. 5 ile geri kalan sayılardan hangi sayıyı çarparsak 5^2'ni ve diğer asal sayının karesini elde ederiz?" +
              "20'yi çarpanlarına ayırırsak 5*4 olduğunu ve 4'ü de 2^2(2'nin karesi) şeklinde yazabileceğimizi görürüz. Öyleyse; \n\n\n " +
              "\t5 ile 20'yi çarparsak 5*5*2*2 elde edeceğiz. Kök dışına da 5*2 çıkacaktır. Çünkü kökün derecesi 2 olarak verilmiş. \n\n\n" +
              "\tOperatörler tablosu altında da 2020.1 adlı butona bastığınızda sizden 6 adet sayı girmenizi bekleyecektir. Arka planda sorunun çözümü için aynı şekilde yukarıdaki yöntem izlenmektedir.\n\n\n" +
              "Yani her bir sayıyı diğer tüm sayılarla birer birer çarparak sonucun kök içi değerinin 1 olduğu değerleri aramaktadır. " +
              "Buyrun deneyelim.";
    }

  </script>
  <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{
      background-color:#202327;
    }
    #sayilarForm{
      font-size:8pt;
      margin-top:5%;
    }
    #ilk{
      background-color: #202327;
      font-size:10pt;
      color:#ffb703;
      border-right:1px solid #505862;
    }
    #iki{
      background-color: #202327;
      border-right:1px solid #505862;
    }
    #ikininrow{
      padding:10px;
    }
    #uc{
      background-color:#202327;
      width:100%;
    }
    body{
      font-family:poppins;
    }
    ul{
      list-style:none;
    }
    #ul{
      margin:0;
      padding:0;
    }
    .caret{
      cursor:pointer;
      user-select:none;
      font-size:11pt;
    }
    .caret::before {
      content: "\25B6";
      color: #ffb703;
      display: inline-block;
      margin-right: 5px;
    }
    .caret-down::before {
      transform: rotate(90deg);
    }
    .nested{
      display:none;
    }
    .active{
      display: block;
    }
    .konularBaslik{
      text-align: center;
      vertical-align: middle;
      font-size:14pt;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      padding-top: 100px; /* Location of the box */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
      background-color: #fefefe;
      margin: auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
    }

    /* The Close Button */
    .close {
      color: #aaaaaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col" id="ilk">
      <div class="konularBaslik"><span><b>SORULAR</b></span></div>
      <div class="outer">
        <ul id="ul">
          <li><span class="caret">Konular</span>
            <ul class="nested">
              <li><span class="caret">Köklü Sayılar</span>
                <ul class="nested">
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2017-1" id="soruButon0" class="btn btn-link">2017.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2017-2" id="soruButon1" class="btn btn-link">2017.2</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2017-3" id="soruButon2" class="btn btn-link">2017.3</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2018-1" id="soruButon3" class="btn btn-link">2018.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2019-1" id="soruButon4" class="btn btn-link">2019.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"));popupGoster()' value="2020-1" id="soruButon5" class="btn btn-link">2020.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2021-1" id="soruButon6" class="btn btn-link">2021.1</button></li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <div class="col-md-5" id="iki">
      <span align="center"><b>ÇÖZÜM</b></span>
      <div class="row" id="ikininrow">
        Çıkmış Soru
        <!-- <img src="assets/2021-1.png" alt="Smiley face" height="42" width="42"> -->
        <!--<input type="image" src="assets/2021-1.png"/> -->
        <img src="/TYT_Mat_Soru_Cozumu_Java_war_exploded/assets/pen_alt.png" id="soru" class="rounded mx-auto d-block"/>


        <table class="table table-sm table-dark">
          <thead align="center">
          <tr>
            <th class="bg-warning" scope="col" colspan="4">Aşağıdaki operatörlerden </th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="+">+</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="-">-</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="*">*</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="/">/</button></td>
          </tr>
          <tr>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="√">√</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="0/">0/</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="^√==">^√==</button></td>
            <td><button type="button" onclick='sayiEklemeKutular(this.getAttribute("value"))' class="btn btn-primary" value="^==">^==</button></td>
          </tr>
          <tr>
            <td><button type="button" onclick='ikiBinYirmiNoktaBir()' class="btn btn-primary" value="2020.1">2020.1</button></td>
          </tr>
          </tbody>
        </table>
        <!-- JS ile form bileşenleri eklenecek alan BAŞLANGIÇ -->
        <form method="post" id="sayilarForm">
          <input type="hidden" name="grupNoTutan" id="grupNoTutan"></input>

        </form>
        <!-- JS ile form bileşenleri eklenecek alan BAŞLANGIÇ -->

      </div>
    </div>

    <div class="col-sm" id="uc">
      <div class="row">
        <table class="table table-sm table-dark">
          <thead>
          <tr>
            <th class="bg-warning" scope="col">Bir Köklü Sayının Anatomisi</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td align="center"><img src="/TYT_Mat_Soru_Cozumu_Java_war_exploded/assets/anatomi.png" align="center"></td>
          </tr>
          <tr>
            <td>Yukarıda bir köklü sayının anatomisini görebilirsiniz. Bir köklü sayı 3 temel bileşenden oluşur. Bu bileşenler; <br>
              <b>1-) Derece        :</b> Bir köklü sayının tam sayı olması için herhangi bir asal sayıdan kaç adet çarpan olması gerektiğini bildirir. Köklü sayının derecesi 2 olduğunda yazılmaz. <br>
              <b>2-) Katsayı       :</b> Köklü sayı ile çarpım durumundadır. Katsayısı olmayan köklü sayının katsayısı değeri 1'dir. Kök içinden, derece kadar kuvveti sağlayan çarpan kök dışına çıkarılıp, o anki katsayı ile çarpılır.<br>
              <b>3-) Kök İçi Değer :</b> Kök içinde bulunan sayıdır. <br>
            </td>
          </tr>
          </tbody>
          <thead>
        <tr>
          <th class="bg-warning" scope="col">İpucu</th>
        </tr>
        </thead>
          <tbody>
          <tr>
            <td id="ipucu">
              Yanda operatorler kısmında
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span id="spanx" class="close">&times;</span>
    <p id="popupIcerik">Some text in the Modal..</p>
  </div>

</div>


<script type="text/javascript">

  var toggler = document.getElementsByClassName("caret");
  var i;

  for (i = 0; i<toggler.length; i++) {
    toggler[i].addEventListener("click", function() {
      this.parentElement.querySelector(".nested").classList.toggle("active");
      this.classList.toggle("caret-down");
    });
  }

  function kokluSayilarSoruGetir(val){
    var soruUrl = "/TYT_Mat_Soru_Cozumu_Java_war_exploded/assets/";
    document.getElementById("soru").src = soruUrl + val + ".png";
  }
</script>
<script>
  var modal = document.getElementById("myModal");
  var span = document.getElementById("spanx");
  span.onclick = function (){
    modal.style.display = "none";
  }

  window.onclick = function (event){
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>
</body>
</html>
