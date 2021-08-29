package konular.koklusayilar.model;

import konular.koklusayilar.model.KokluSayiIslemleriImpl;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class KokluSayiIslemleriTest extends KokluSayiIslemleriImpl {
    public static void main(String[] args) {
        KokluSayiIslemleriImpl islemler = new KokluSayiIslemleriImpl();

        //
        //
        // 2020 sorusu test
        //
        //
        KokluSayi kokluSayi1 = new KokluSayi(2, 5, 1);
        KokluSayi kokluSayi2 = new KokluSayi(2, 8, 1);
        KokluSayi kokluSayi3 = new KokluSayi(2, 12, 1);
        KokluSayi kokluSayi4 = new KokluSayi(2, 18, 1);
        KokluSayi kokluSayi5 = new KokluSayi(2, 20, 1);
        KokluSayi kokluSayi6 = new KokluSayi(2, 27, 1);
        KokluSayi kokluSayi7 = new KokluSayi(2, 32, 1);
        KokluSayi kokluSayi8 = new KokluSayi(2, 18, 1);

        KokluSayi kokluSayi9 = new KokluSayi(2, 1029, 1);
        KokluSayi kokluSayi10 = new KokluSayi(2, 21, 1);
        List<KokluSayi> sayilar = new LinkedList<KokluSayi>();
        sayilar.add(kokluSayi1);
        sayilar.add(kokluSayi2);
        sayilar.add(kokluSayi3);
        sayilar.add(kokluSayi4);
        sayilar.add(kokluSayi5);
        sayilar.add(kokluSayi6);
        sayilar.add(kokluSayi7);
        sayilar.add(kokluSayi8);
        sayilar.add(kokluSayi9);
        sayilar.add(kokluSayi10);

        Map<KokluSayi, KokluSayi> sonuc = islemler.ikiBinYirmiSorusu(sayilar);
        System.out.println("sonuc bos mu : " + sonuc.isEmpty());
        for (Map.Entry<KokluSayi,KokluSayi> m : sonuc.entrySet()) {
            System.out.println(m.getKey().getKokIciDeger() + " : " + m.getValue().getKokIciDeger());
        }
        //
        //
        // 2020 sorusu test
        //
        //

        // Sadeleştirme Çalışıyor mu TEst
        /*KokluSayi kokluSayi = new KokluSayi(2,128, 2);
        KokluSayi kokluSayi2 = new KokluSayi(2,64,3);
        KokluSayi tamKoklu = new KokluSayi(2,72,1);
        KokluSayi kupCozumu = new KokluSayi(3,27,1);
        KokluSayi sayi = new KokluSayi(2,360,1);
        KokluSayi sayi2 = new KokluSayi(2,260,1);

        KokluSayiIslemleriImpl islemler = new KokluSayiIslemleriImpl();
        kokluSayi = islemler.kokluSayininEnSadeHaliniHesapla(kokluSayi);
        kokluSayi2 = islemler.kokluSayininEnSadeHaliniHesapla(kokluSayi2);

        System.out.println("İşlenenlerin En Sade Hali : ");
        System.out.print("128 : ");
        kokluSayi = islemler.kokluSayininEnSadeHaliniHesapla(kokluSayi);
        islemler.isaretsizKokluSayiyiEkranaYazdir(kokluSayi);
        System.out.println();

        System.out.print("64 : " );
        kokluSayi2 = islemler.kokluSayininEnSadeHaliniHesapla(kokluSayi2);
        islemler.isaretsizKokluSayiyiEkranaYazdir(kokluSayi2);
        System.out.println();

        System.out.print("360 : " );
        sayi = islemler.kokluSayininEnSadeHaliniHesapla(sayi);
        islemler.isaretsizKokluSayiyiEkranaYazdir(sayi);
        System.out.println();

        System.out.print("260 : " );
        sayi2 = islemler.kokluSayininEnSadeHaliniHesapla(sayi2);
        islemler.isaretsizKokluSayiyiEkranaYazdir(sayi2);
        System.out.println();*/

        /*KokluSayiIslemleriImpl islemler = new KokluSayiIslemleriImpl();
        KokluSayi kokluSayi = new KokluSayi(2,128, 2);
        KokluSayi kokluSayi2 = new KokluSayi(2,64,3);
        KokluSayi tamKoklu = new KokluSayi(2,72,1);
        KokluSayi kupCozumu = new KokluSayi(3,27,1);
        KokluSayi sayi = new KokluSayi(2,360,1);
        KokluSayi sayi2 = new KokluSayi(2,260,1);

        KokluSayi sonuc = islemler.dortIslem(kokluSayi, kokluSayi2, '+');
        System.out.print("Toplama İşleminin Sonucu : ");
        sonuc = islemler.kokluSayininEnSadeHaliniHesapla(sonuc);
        islemler.isaretsizKokluSayiyiEkranaYazdir(sonuc);
        System.out.println();
        sonuc = islemler.dortIslem(kokluSayi, kokluSayi2, '-');
        System.out.print("Çıkarma İşleminin Sonucu : ");
        islemler.isaretsizKokluSayiyiEkranaYazdir(sonuc);
        System.out.println();
        sonuc = islemler.dortIslem(kokluSayi, kokluSayi2, '*');
        System.out.print("Çarpma İşleminin Sonucu : ");
        islemler.isaretsizKokluSayiyiEkranaYazdir(sonuc);
        System.out.println();
        sonuc = islemler.dortIslem(kokluSayi2, kokluSayi, '/');
        System.out.print("Bölme İşleminin Sonucu : ");
        islemler.isaretsizKokluSayiyiEkranaYazdir(sonuc);
        System.out.println();
        System.out.println("Kup Çözümü");
        islemler.isaretsizKokluSayiyiEkranaYazdir(islemler.kokluSayininEnSadeHaliniHesapla(kupCozumu));
        boolean tamKareSonuc = islemler.tamKareMi(tamKoklu);
        System.out.println("Tam Kare : " + tamKareSonuc);*/
    }
}