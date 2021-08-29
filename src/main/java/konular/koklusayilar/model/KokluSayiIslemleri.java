package konular.koklusayilar.model;


import java.util.List;
import java.util.Map;

public interface KokluSayiIslemleri {

    public boolean sayilarinKokDerecesiEsitMi(KokluSayi kokluSayi1, KokluSayi kokluSayi2);
    public boolean sayilarinDerecesiEsitMi(KokluSayi kokluSayi1, KokluSayi kokluSayi2);
    public KokluSayi kokluSayininEnSadeHaliniHesapla(KokluSayi kokluSayi);
    public void isaretsizKokluSayiyiEkranaYazdir(KokluSayi kokluSayi);
    public KokluSayi kokluSayiyiKlonla(KokluSayi kokluSayi);
    public KokluSayi dortIslem(KokluSayi kokluSayi1, KokluSayi kokluSayi2, char operator);
    public boolean tamKareMi(KokluSayi kokluSayi);
    public boolean tamSayiMi(KokluSayi kokluSayi);
    public Map<KokluSayi,KokluSayi> ikiBinYirmiSorusu(List<KokluSayi> sayilar);

}