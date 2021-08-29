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
      kokDerece1.setAttribute("placeholder", "Kökün Derecesi");

      kokIciDeger1.setAttribute("name", grup_no +  "_kokIciDeger_" + komponent_no);
      kokIciDeger1.setAttribute("id", grup_no + "_kokIciDeger_" + komponent_no);
      kokIciDeger1.setAttribute("class", "form-control");
      kokIciDeger1.setAttribute("type", "text");
      kokIciDeger1.setAttribute("placeholder", "Kök İçindeki Değer");

      kokKatsayi1.setAttribute("name", grup_no +  "_kokKatsayi_" + komponent_no);
      kokKatsayi1.setAttribute("id", grup_no + "_kokKatsayi_"+ komponent_no);
      kokKatsayi1.setAttribute("class", "form-control");
      kokKatsayi1.setAttribute("type", "text");
      kokKatsayi1.setAttribute("placeholder", "Kökün Katsayısı");

      komponent_no = komponent_no + 1;

      var kokDerece2 = document.createElement("input");
      var kokIciDeger2 = document.createElement("input");
      var kokKatsayi2 = document.createElement("input");

      kokDerece2.setAttribute("name", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece2.setAttribute("type","text");
      kokDerece2.setAttribute("id", grup_no + "_kokDerecesi_" + komponent_no);
      kokDerece2.setAttribute("class", "form-control");
      kokDerece2.setAttribute("placeholder", "Kökün Derecesi");

      kokIciDeger2.setAttribute("name", grup_no +  "_kokIciDeger_" + komponent_no);
      kokIciDeger2.setAttribute("type", "text");
      kokIciDeger2.setAttribute("id", grup_no + "_kokIciDeger_" + komponent_no);
      kokIciDeger2.setAttribute("class", "form-control");
      kokIciDeger2.setAttribute("placeholder", "Kök İçindeki Değer");

      kokKatsayi2.setAttribute("name", grup_no + "_kokKatsayi_" + komponent_no);
      kokKatsayi2.setAttribute("type","text");
      kokKatsayi2.setAttribute("id", grup_no + "_kokKatsayi_"+ komponent_no);
      kokKatsayi2.setAttribute("class", "form-control");
      kokKatsayi2.setAttribute("placeholder", "Kökün Katsayısı");


      var sonucInput = document.createElement("INPUT");
      sonucInput.setAttribute("class", "form-control");
      sonucInput.setAttribute("name", grup_no + "_sonuc");
      sonucInput.setAttribute("placeholder", "Sonuç");

      var silButon = document.createElement("BUTTON");
      silButon.setAttribute("class", "btn btn-danger");
      silButon.setAttribute("name", grup_no + "_silButon");
      silButon.textContent = "Grubu Sil";
      silButon.setAttribute("onclick", 'silButonununGrupNosunuGetir(this.getAttribute("name"))');


      var hesaplaButon = document.createElement("BUTTON");
      hesaplaButon.setAttribute("class", "btn btn-success");
      hesaplaButon.setAttribute("type", "submit");
      hesaplaButon.setAttribute("name", grup_no + "_hesaplaButon");
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
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2020-1" id="soruButon5" class="btn btn-link">2020.1</button></li>
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
            <th class="bg-warning" scope="col" colspan="4">Operatörler</th>
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
          </tbody>
        </table>
        <!-- JS ile form bileşenleri eklenecek alan BAŞLANGIÇ -->
        <form action="/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/HesaplamaIslemleri" method="post" id="sayilarForm">
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
            <th class="bg-warning" scope="col">Operatör</th>
            <th class="bg-warning" scope="col">İşlevi</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>+</td>
            <td>Parametreleri girilen iki köklü sayı arasında toplama işlemi gerçekleştirir.</td>
          </tr>
          <tr>
            <td>-</td>
            <td>Parametreleri girilen iki köklü sayı arasında çıkarma işlemi gerçekleştirir.</td>
          </tr>
          <tr>
            <td>/</td>
            <td>Parametreleri girilen iki köklü sayı arasında bölme işlemi gerçekleştirir.</td>
          </tr>
          <tr>
            <td>*</td>
            <td>Parametreleri girilen iki köklü sayı arasında çarpma işlemi gerçekleştirir.</td>
          </tr>
          <tr>
            <td>√</td>
            <td>Bir köklü sayıda, kök içinde bulunan sayının çarpanlarından, kök dışına çıkabilecek olan var ise bu sayıyı dışarı çıkartarak sadeleştirme işlemi yapar.</td>
          </tr>
          <tr>
            <td>0/</td>
            <td>Bir köklü sayının, sadeleştiğinde tam sayı olup olmadığını hesaplar.(Kök içindeki değer 1'e eşit ise o sayı köklü sayı olmaktan çıkıp tam sayı kabul edilir.)</td>
          </tr>
          <tr>
            <td>^√==</td>
            <td>Parametreleri girilen iki köklü sayının derecelerinin ve kök içindeki değerlerinin eşit olup olmadığını kontrol eder.<td>
          </tr>
          <tr>
            <td>^==</td>
            <td>Parametreleri girilen iki köklü sayının sadece derecelerinin eşit olup olmadığını kontrol eder.</td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
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
    //var url = "#" +  grup_no + "_kokDerecesi_" + i
    //var textboxvalue = $("'" + url + "'").val();
    birinciKokDerecesi = document.getElementById(grup_no + "_kokDerecesi_" + i).value;
    birinciKatsayi = document.getElementById(grup_no + "_kokKatsayi_" + i).value;
    birinciKokIciDeger = document.getElementById(grup_no + "_kokIciDeger_" + i).value;
    i= i + 1;
    ikinciKokDerecesi = document.getElementById(grup_no + "_kokDerecesi_" + i).value;
    ikinciKatsayi = document.getElementById(grup_no + "_kokKatsayi_" + i).value;
    ikinciKokIciDeger = document.getElementById(grup_no + "_kokIciDeger_" + i).value;
    //alert(textboxvalue);
    //alert(birinciKokDerecesi.textContent);
    //alert(birinciKokDerecesi.val());
    i = 1;
    $.ajax({
      type:'POST',
      url:'/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/HesaplamaIslemleri',
      dataType: 'json',
      contentType:'application/json',
      data:  $('#sayilarForm').serialize() ,
      cache:false,
      success:function(data){
        alert(data);
        //$('#somediv').text(responseText);
      },
      error:function(){
        alert('error');
      }
    });
/*JSON.stringify({birinciKok : birinciKokDerecesi, birinciKatsayiDegeri : birinciKatsayi, birinciKokIci : birinciKokIciDeger,
              ikinciKok : ikinciKokDerecesi, ikinciKatsayiDegeri : ikinciKatsayi, ikinciKokIci : ikinciKokIciDeger}),*/
  /*$.ajax({
    type:"POST",//or GET
    url:'/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/HesaplamaIslemleri',
    data: {birinciKok : birinciKokDerecesi, birinciKatsayiDegeri : birinciKatsayi, birinciKokIci : birinciKokIciDeger,
          ikinciKok : ikinciKokDerecesi, ikinciKatsayiDegeri : ikinciKatsayi, ikinciKokIci : ikinciKokIciDeger},
    success:function(responsedata){
      alert("got response as "+"'"+responsedata+"'");
    }
  });*/



  /*$.ajax({
      type:"POST",//or GET
      url:'/TYT_Mat_Soru_Cozumu_Java_war_exploded/Servlet/HesaplamaIslemleri',
      data: {birinciKok : birinciKokDerecesi, birinciKatsayiDegeri : birinciKatsayi, birinciKokIci : birinciKokIciDeger,
      ikinciKok : ikinciKokDerecesi, ikinciKatsayiDegeri : ikinciKatsayi, ikinciKokIci : ikinciKokIciDeger},
      success:function(responsedata){
        alert("got response as "+"'"+responsedata+"'");
      }
  });*/

  }

/*
* birinciKokDerecesi.textContent, birinciKatsayiDegeri : birinciKatsayi.textContent, birinciKokIci : birinciKokIciDeger.textContent,
      ikinciKok : ikinciKokDerecesi.textContent, ikinciKatsayiDegeri : ikinciKatsayi.textContent, ikinciKokIci : ikinciKokIciDeger.textContent
* */



  /*$('document').ready(function(){

  })
  $.ajax({

    method: "POST",
    url: "/Servlet/HesaplamaIslemleri",
    data: { grup_no : silButonununGrupNosunuGetir(butonName) }
  })
          .success(function(){
            //do success stuff
          })
          .error(function(){
            //do error handling stuff
          });*/


</script>
</body>
</html>
