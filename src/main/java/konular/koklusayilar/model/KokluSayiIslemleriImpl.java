package konular.koklusayilar.model;

import java.util.*;

public class KokluSayiIslemleriImpl implements KokluSayiIslemleri {

    int asalBolen[] = {2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,71,73,79,83,89,97};

    @Override
    public boolean sayilarinKokDerecesiEsitMi(KokluSayi kokluSayi1, KokluSayi kokluSayi2) {
        if(kokluSayi1.getKokDerecesi() == kokluSayi2.getKokDerecesi()
                && kokluSayi1.getKokIciDeger() == kokluSayi1.getKokIciDeger())
            return true;
        else
            return false;
    }
    @Override
    public boolean sayilarinDerecesiEsitMi(KokluSayi kokluSayi1, KokluSayi kokluSayi2) {
        if(kokluSayi1.getKokDerecesi() == kokluSayi2.getKokDerecesi())
            return true;
        else
            return false;
    }
    @Override
    public KokluSayi dortIslem(KokluSayi kokluSayi1, KokluSayi kokluSayi2, char operator) {
        boolean kokDerece = sayilarinKokDerecesiEsitMi(kokluSayi1,kokluSayi2);
        boolean derece = sayilarinDerecesiEsitMi(kokluSayi1,kokluSayi2);
        KokluSayi sonucKokluSayi = new KokluSayi();
        //******************Alt 2 satır yeni oluşturuldu***************
        /*kokluSayi1 = kokluSayininEnSadeHaliniHesapla(kokluSayi1);
        kokluSayi2 = kokluSayininEnSadeHaliniHesapla(kokluSayi2);*/
        if((operator == '+' || operator == '-') && kokDerece){
            sonucKokluSayi.setKokDerecesi(kokluSayi1.getKokDerecesi());
            sonucKokluSayi.setKokIciDeger(kokluSayi1.getKokIciDeger());
            switch(operator){
                case '+':
                    sonucKokluSayi.setKatsayi(kokluSayi1.getKatsayi() + kokluSayi2.getKatsayi());
                    break;
                case '-':
                    sonucKokluSayi.setKatsayi(kokluSayi1.getKatsayi() - kokluSayi2.getKatsayi());
                    break;
                default:
                    System.out.println("default");
            }
        }
        else if((operator == '*' || operator == '/') && derece){
            sonucKokluSayi.setKokDerecesi(kokluSayi1.getKokDerecesi());
            switch (operator){
                case '*':
                    sonucKokluSayi.setKatsayi(kokluSayi1.getKatsayi() * kokluSayi2.getKatsayi());
                    sonucKokluSayi.setKokIciDeger(kokluSayi1.getKokIciDeger() * kokluSayi2.getKokIciDeger());
                    sonucKokluSayi = kokluSayininEnSadeHaliniHesapla(sonucKokluSayi);
                    break;
                case '/':
                    sonucKokluSayi.setKatsayi(kokluSayi1.getKatsayi() / kokluSayi2.getKatsayi());
                    sonucKokluSayi.setKokIciDeger(kokluSayi1.getKokIciDeger() / kokluSayi2.getKokIciDeger());
                    sonucKokluSayi = kokluSayininEnSadeHaliniHesapla(sonucKokluSayi);
                    break;
                default:
                    System.out.println("default2");
            }
        }else{
            return null;
        }
        return sonucKokluSayi;
    }

    @Override
    public KokluSayi kokluSayiyiKlonla(KokluSayi kokluSayi) {
        KokluSayi klonKokluSayi = new KokluSayi();
        klonKokluSayi.setKatsayi(kokluSayi.getKatsayi());
        klonKokluSayi.setKokDerecesi(kokluSayi.getKokDerecesi());
        klonKokluSayi.setKokIciDeger(kokluSayi.getKokIciDeger());
        klonKokluSayi.setIsaret(kokluSayi.isIsaret());
        return klonKokluSayi;
    }

    @Override
    public KokluSayi kokluSayininEnSadeHaliniHesapla(KokluSayi kokluSayi) {
        KokluSayi yeniKokluSayi = kokluSayiyiKlonla(kokluSayi);
        int sayac = 0;
        int diziIndis = 0;
            while (yeniKokluSayi.getKokIciDeger() != 1 && diziIndis < 22) {
                if (yeniKokluSayi.getKokIciDeger() % asalBolen[diziIndis] == 0) {
                    sayac++;
                    yeniKokluSayi.setKokIciDeger(yeniKokluSayi.getKokIciDeger() / asalBolen[diziIndis]);
                    if (sayac == yeniKokluSayi.getKokDerecesi()) {
                        yeniKokluSayi.setKatsayi(yeniKokluSayi.getKatsayi() * asalBolen[diziIndis]);
                        kokluSayi.setKokIciDeger(yeniKokluSayi.getKokIciDeger());
                        kokluSayi.setKatsayi(kokluSayi.getKatsayi() * asalBolen[diziIndis]);
                        sayac = 0;
                    }
                }
                else {
                    sayac = 0;
                    diziIndis++;
                }
            }
            return kokluSayi;
    }

    @Override
    public void isaretsizKokluSayiyiEkranaYazdir(KokluSayi kokluSayi) {
        System.out.print(kokluSayi.getKokDerecesi());
        System.out.print(". Dereceden ");
        System.out.print(kokluSayi.getKatsayi());
        System.out.print('√');
        System.out.println(kokluSayi.getKokIciDeger());
    }

    @Override
    public boolean tamKareMi(KokluSayi kokluSayi) {
        double sqrt=Math.sqrt(kokluSayi.getKokIciDeger());
        return ((sqrt - Math.floor(sqrt)) == 0);
    }

    @Override
    public boolean tamSayiMi(KokluSayi kokluSayi) {
        if(kokluSayi.getKokIciDeger() == 1)
            return true;
        else
            return false;
    }

    @Override
    public Map<KokluSayi,KokluSayi> ikiBinYirmiSorusu(List<KokluSayi> sayilar) {
        Map<KokluSayi,KokluSayi> sonuc = new HashMap<KokluSayi,KokluSayi>();
        KokluSayi islemdekiKoklu;
        List<KokluSayi> sayilarYedekBir = new LinkedList<KokluSayi>();
        List<KokluSayi> sayilarYedekAsil = new LinkedList<KokluSayi>();
        sayilarYedekAsil.addAll(sayilar);
        int indis = 0;
        int toplam = 0;
        for(int i=0;i<sayilarYedekAsil.size();i++){
            indis = 0;
            sayilarYedekBir.addAll(sayilarYedekAsil);
            islemdekiKoklu = sayilarYedekAsil.get(i);
            sayilarYedekBir.remove(i);
            int j = 0;
            while(!sayilarYedekBir.isEmpty()){
                indis++;
                boolean derecelerEsitMi = sayilarinDerecesiEsitMi(islemdekiKoklu,sayilarYedekBir.get(j));
                if(derecelerEsitMi){
                    KokluSayi sonucSayisi = dortIslem(islemdekiKoklu, sayilarYedekBir.get(j), '*');
                    //System.out.println(islemdekiKoklu.getKokIciDeger() + " * " + sayilarYedekBir.get(j).getKokIciDeger() + " = " + sonucSayisi.getKokIciDeger());
                    if(sonucSayisi.getKokIciDeger() == 1){
                        sonuc.put(islemdekiKoklu, sayilarYedekBir.get(j));
                        sayilarYedekAsil.remove(indis);
                    }
                    sayilarYedekBir.remove(j);
                }
            }
        }

        return sonuc;
    }

    public KokluSayi kokluSayininKaresiniAl(KokluSayi kokluSayi){
        kokluSayi.setKokIciDeger(kokluSayi.getKokIciDeger() * kokluSayi.getKokIciDeger());
        kokluSayi.setKatsayi(kokluSayi.getKatsayi() * kokluSayi.getKatsayi());
        kokluSayi = kokluSayininEnSadeHaliniHesapla(kokluSayi);
        return kokluSayi;
    }

    public String ikiBinOnYediNoktaIkiSorusu(KokluSayi kokluSayi1, KokluSayi kokluSayi2, KokluSayi kokluSayi3,
                                             int paydaBir, int paydaIki,int paydaUc){



        return "";
    }
}