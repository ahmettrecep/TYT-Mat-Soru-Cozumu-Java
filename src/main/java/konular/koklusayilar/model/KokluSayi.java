package konular.koklusayilar.model;

public class KokluSayi {
    private int kokDerecesi;
    private double kokIciDeger;
    private double katsayi;
    private boolean isaret;

    public KokluSayi(){}
    public KokluSayi(double kokIciDeger, int katsayi){
        kokDerecesi = 2;
        isaret = true;
        this.kokIciDeger = kokIciDeger;
        this.katsayi = katsayi;
    }
    public KokluSayi(int kokDerecesi, double kokIciDeger, int katsayi, boolean isaret) {
        this.kokDerecesi = kokDerecesi;
        this.kokIciDeger = kokIciDeger;
        this.katsayi = katsayi;
        this.isaret = isaret;
    }

    public KokluSayi(int kokDerecesi, double kokIciDeger, int katsayi) {
        this.kokDerecesi = kokDerecesi;
        this.kokIciDeger = kokIciDeger;
        this.katsayi = katsayi;
    }

    public int getKokDerecesi() {
        return kokDerecesi;
    }

    public void setKokDerecesi(int kokDerecesi) {
        this.kokDerecesi = kokDerecesi;
    }

    public double getKokIciDeger() {
        return kokIciDeger;
    }

    public void setKokIciDeger(double kokIciDeger) {
        this.kokIciDeger = kokIciDeger;
    }

    public double getKatsayi() {
        return katsayi;
    }

    public void setKatsayi(double katsayi) {
        this.katsayi = katsayi;
    }

    public boolean isIsaret() {
        return isaret;
    }

    public void setIsaret(boolean isaret) {
        this.isaret = isaret;
    }
}
