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
  <script src="sayiEklemeKutular.js"></script>
  <script src="ismiHiddenaEkle.js"></script>
  <script src="globalDegiskenler.js"></script>
  <script src="grupSil.js"></script>
  <script src="hesaplaServleteGonder.js"></script>
  <script src="ikiBinOnYediNoktaIkiArayuz.js"></script>
  <script src="ikiBinOnYediNoktaIkiSorusuServleteGonder.js"></script>
  <script src="ikiBinYirmiNoktaBir.js"></script>
  <script src="ikiBinYirmiSorusuServleteGonder.js"></script>
  <script src="ismiGizliyeGonder.js"></script>
  <script src="popUpGoster.js"></script>
  <script src="silButonununGrupNosunuGetir.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css">
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
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"));popupGoster(this.getAttribute("value"));ikiBinOnYediNoktaIkiArayuz()' value="2017-2" id="soruButon1" class="btn btn-link">2017.2</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2017-3" id="soruButon2" class="btn btn-link">2017.3</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2018-1" id="soruButon3" class="btn btn-link">2018.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"))' value="2019-1" id="soruButon4" class="btn btn-link">2019.1</button></li>
                  <li><button onclick='kokluSayilarSoruGetir(this.getAttribute("value"));popupGoster(this.getAttribute("value"));ikiBinYirmiNoktaBir()' value="2020-1" id="soruButon5" class="btn btn-link">2020.1</button></li>
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
        <img src="/TYT_Mat_Soru_Cozumu_Java_war_exploded/assets/alt_image.png" id="soru" class="rounded mx-auto d-block"/>


        <table class="table table-sm table-dark">
          <thead align="center">
          <tr>
            <th class="bg-warning" scope="col" colspan="4">Aşağıdaki operatörlerden soruya uygun olanı seçebilirsiniz.
              Soru indeksli olanlar dışında diğer operatörler de işlem görmektedir.
            </th>
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
            <td><button type="button" onclick='ikiBinYirmiNoktaBir()' class="btn btn-primary" value="2017.2">2017.2</button></td>
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
        <table class="table table-sm table-dark" id="ucTable">
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
              Çözümlerle alakalı ipucunu görebilmek için önce en soldaki sorular menüsünden soruyu seçmelisin.
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


  /*
  *
  * Kontrol Edilmesi Gerekiyor.
  *
  * */

  $(document).ready(function(){
    setTimeout(function () {
      flashWhiteIlk();
    }, 500);
    setTimeout(function () {
      flashWhiteIlk();
    }, 1001);
    setTimeout(function () {
      flashWhiteIlk();
    }, 1502);
    setTimeout(function () {
      flashWhiteIlk();
    }, 2003);
    setTimeout(function () {
      flashWhiteIlk();
    }, 2504);

    setTimeout(function () {
      popupGoster("sorularflash");
    }, 2500);

    var div = document.getElementById("ilk");
    div.style.backgroundColor = "202327";


    setTimeout(function () {
      flashWhiteIki();
    }, 6005);
    setTimeout(function () {
      flashWhiteIki();
    }, 6506);
    setTimeout(function () {
      flashWhiteIki();
    }, 7007);
    setTimeout(function () {
      flashWhiteIki();
    }, 7508);
    setTimeout(function () {
      flashWhiteIki();
    }, 8009);

    var div = document.getElementById("iki");
    div.style.backgroundColor = "202327";

    setTimeout(function () {
      popupGoster("gorselflash");
    }, 8005);


    setTimeout(function () {
      flashWhiteUc();
    }, 11010);
    setTimeout(function () {
      flashWhiteUc();
    }, 11520);
    setTimeout(function () {
      flashWhiteUc();
    }, 12030);
    setTimeout(function () {
      flashWhiteUc();
    }, 12540);
    setTimeout(function () {
      flashWhiteUc();
    }, 13050);

    var div = document.getElementById("ucTable");
    div.style.backgroundColor = "202327";

    setTimeout(function () {
      popupGoster("tanimflash");
    }, 13000);

  });

  function flashWhiteIlk() {
    var div = document.getElementById("ilk");
    var originalColor = getComputedStyle(div).backgroundColor;

    div.style.backgroundColor = "white";

    for (let i = 0; i < 3; i++) {

      setTimeout(function () {
        div.style.backgroundColor = originalColor;

        var divIki = document.getElementById("iki");
        divIki.style.backgroundColor = "202327";
        var divUc = document.getElementById("ucTable");
        divUc.style.backgroundColor = "202327";
      }, 500);
    }
  }
  function flashWhiteIki() {
    var div = document.getElementById("iki");
    var originalColor = getComputedStyle(div).backgroundColor;

    div.style.backgroundColor = "white";

    for (let i = 0; i < 3; i++) {

      setTimeout(function () {
        div.style.backgroundColor = originalColor;
        var divIki = document.getElementById("ilk");
        divIki.style.backgroundColor = "202327";
        var divUc = document.getElementById("ucTable");
        divUc.style.backgroundColor = "202327";
      }, 500);
    }
  }

  function flashWhiteUc() {
    var div = document.getElementById("ucTable");
    div.className = "table table-sm table-light";

    for (let i = 0; i < 3; i++) {

      setTimeout(function () {
        var divIki = document.getElementById("iki");
        divIki.style.backgroundColor = "202327";
        var divUc = document.getElementById("ilk");
        divUc.style.backgroundColor = "202327";
        div.className = "table table-sm table-dark";
      }, 500);
    }
  }
</script>
</body>
</html>
