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