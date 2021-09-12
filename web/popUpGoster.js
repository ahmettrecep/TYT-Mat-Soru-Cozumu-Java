function popupGoster(soruNumarasi){
    var modal = document.getElementById("myModal");
    var span = document.getElementsByClassName("close")[0];
    modal.style.display="block";
    var icerik = document.getElementById("popupIcerik");
    var ipucu = document.getElementById("ipucu");
    if(soruNumarasi == "2020-1") {
        icerik.innerHTML = "<h3>Dikkat! Sayıların Asal Çarpanlarının Adedi, Kökün Derecesinin Kuvvetleri Kadar Olmalıdır!</h3>Bu soruda dikkat etmeniz gereken nokta; <b>hangi iki köklü sayının çarpımının tam sayı olduğunu bulmaktır.</b> <br>" +
            "Örneğin; kök içi değeri 5 olan sayı ile hangi sayıyı çarparsanız tam sayı elde edersiniz? Normalde bu çözümü zihnimizden de yapabiliriz. <br>>" +
            "Soruyu anlamak için çözüme bir adım daha yakından bakalım." +
            "Kök 5'ten bahsettik. 5 bir asal sayıdır. 5 ile geri kalan sayılardan hangi sayıyı çarparsak 5^2'ni ve diğer asal sayının karesini elde ederiz? " +
            "20'yi çarpanlarına ayırırsak 5*4 olduğunu ve 4'ü de 2^2(2'nin karesi) şeklinde yazabileceğimizi görürüz. Yani 20'nin kök dışına çıkabilmesi için bir adet 5 çarpanı eksik görünüyor. Öyleyse; <br> " +
            "5 ile 20'yi çarparsak 5*5*2*2 elde edeceğiz. Kök dışına da 5*2 çıkacaktır. Çünkü kökün derecesi 2 olarak verilmiş. " +
            "Operatörler tablosu altında da 2020.1 adlı butona bastığınızda sizden 6 adet sayı girmenizi bekleyecektir. Arka planda sorunun çözümü için aynı şekilde yukarıdaki yöntem izlenmektedir.<br>" +
            "<b>Yani her bir sayıyı diğer tüm sayılarla birer birer çarparak sonucun kök içi değerinin 1 olduğu değerleri aramaktadır.</b> <br>" +
            "<b>Soruyu okuduktan sonra sağdaki ipucu başlığına göz atman faydalı olacaktır.</b><br>" +
            "<b>Hadi deneyelim.</b>";
        ipucu.innerHTML = "Tüm sayıların kök dereceleri 2'dir. Yani karekök aranıyor. <br> --> 5 : Asal Sayı <br> -->  " + "8 : 2 * 2 * 2<br>-->  " + "12 : 2 * 2 * 3<br>-->  " + "18 : 2 * 3 * 3<br>-->  " + "20 : 2 * 2 * 5<br>-->  " + "27 : 3 * 3 * 3";
    }
    else if(soruNumarasi == "2017-2"){
        icerik.innerHTML = "<h3>Dikkat! Kökten Kurtarmak İçin Kök Derecesi Kadar Kuvvet Alabilirsin!</h3> Soruya şöyle bir baktığımızda birbirinden çok farklı sayılar görürüz. Pay kısmında farklı değerlere sahip köklü sayılar var ve payda değerleri de birbirinden farklı görünüyor." +
            "Peki burada bu sayıları daha kolay bir tipe nasıl dönüştürebiliriz? Pay değerlerinin karekök içinde olduğu aşikar. Dolayısıyla kökten kurtarmamız gerekir. Öyleyse;<br>" +
            "<b>a,b ve c sayılarının hepsinin karesini alırsak paylarını kökten kurtarmış oluruz ve hepsini ondalıklı sayılar tipinde karşılaştırabiliriz.</b> Böylece işlemlerimiz kolaylaşır.<br>" +
            "Karekök içindeki bir sayının karesini alırsak kökten kurtulur ve dışarıya kendisi olduğu gibi çıkar. Paydanın karesini aldığımızda ise kök içinde olmadığı için direkt kendisiyle çarpmış oluruz.<br>" +
            "Artık elimizde daha net değerler var. Geriye sadece sıralamak kaldı.<br>" +
            "<b>Soruyu okuduktan sonra sağdaki ipucu başlığına göz atman faydalı olacaktır.</b><br>" +
            "<b>Hadi deneyelim.</b>";
        ipucu.innerHTML = "Burada kök derecesinin 2 olduğunu görüyoruz. Öyleyse kökten kurtarmak için sayının karesini alabiliriz. Yani a^2, b^2 ve c^2 yapacağız. Sonrasında elimizde kökten kurtulmuş 3 adet sayı olacak. <b>Altın kural; tüm sayıları aynı işleme tabii tutarsan, birbirlerine olan oranları değişmez</b>";
    }
    else if(soruNumarasi == "sorularflash"){
        icerik.innerHTML = "<h3>Soruları <b>Sol Bölümden</b> Seçiyoruz.</h3>";
    }
    else if(soruNumarasi == "gorselflash"){
        icerik.innerHTML = "<h3>Seçtiğin Sorulara Ait Bilgilere ve Çözümlere <b>Orta Bölümden</b> Bakıyoruz.</h3>";
    }
    else if(soruNumarasi == "tanimflash"){
        icerik.innerHTML = "<h3>Köklü Sayılar Hakkında Yardımcı Bilgilere ve Soru İpuçlarına <b>Sağ Bölümden</b> Bakıyoruz.</h3>";
    }
}