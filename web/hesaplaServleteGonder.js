function hesaplaServleteGonder(){
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