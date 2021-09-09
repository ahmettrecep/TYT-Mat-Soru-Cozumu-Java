package Servlet;

import konular.koklusayilar.model.KokluSayi;
import konular.koklusayilar.model.KokluSayiIslemleriImpl;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@WebServlet("/Servlet/ikiBinYirmi")
public class ikiBinYirmi extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        // Business Logic
        KokluSayiIslemleriImpl business = new KokluSayiIslemleriImpl();

        //Başarılı!!
        // Reading Request Header
        StringWriter writer = new StringWriter();
        StringBuilder buffer = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }
        String data = buffer.toString();
        System.out.println(data);

        JSONObject jsonObj = new JSONObject(new String(data));

        // Creating the first object with data that getting from header
        JSONArray birinci = new JSONArray();
        birinci.put(jsonObj.get("birinci"));
        JSONObject birinciSayi = birinci.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_1 = Integer.parseInt(birinciSayi.getString("birKokD"));
        double kokIciDeger_1 = Double.parseDouble(birinciSayi.getString("birKokID"));
        int kokKatsayi_1 = Integer.parseInt(birinciSayi.getString("birKokK"));
        KokluSayi koklusayi_1 = new KokluSayi(kokDerecesi_1,kokIciDeger_1,kokKatsayi_1);
        // Veri Sırası Test
        System.out.println(koklusayi_1.getKokDerecesi() + " / " + koklusayi_1.getKatsayi() + " / " + koklusayi_1.getKokIciDeger());

        // Creating the second object with data that getting from header
        JSONArray ikinci = new JSONArray();
        ikinci.put(jsonObj.get("ikinci"));
        JSONObject ikinciSayi = ikinci.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_2 = Integer.parseInt(ikinciSayi.getString("ikiKokD"));
        double kokIciDeger_2 = Double.parseDouble(ikinciSayi.getString("ikiKokID"));
        int kokKatsayi_2 = Integer.parseInt(ikinciSayi.getString("ikiKokK"));
        KokluSayi koklusayi_2 = new KokluSayi(kokDerecesi_2,kokIciDeger_2,kokKatsayi_2);
        // Veri Sırası Test
        System.out.println(koklusayi_2.getKokDerecesi() + " / " + koklusayi_2.getKatsayi() + " / " + koklusayi_2.getKokIciDeger());

        //Başarılı!!
        // Creating the first object with data that getting from header
        JSONArray ucuncu = new JSONArray();
        ucuncu.put(jsonObj.get("ucuncu"));
        JSONObject ucuncuSayi = ucuncu.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_3 = Integer.parseInt(ucuncuSayi.getString("ucKokD"));
        double kokIciDeger_3 = Double.parseDouble(ucuncuSayi.getString("ucKokID"));
        int kokKatsayi_3 = Integer.parseInt(ucuncuSayi.getString("ucKokK"));
        KokluSayi koklusayi_3 = new KokluSayi(kokDerecesi_3,kokIciDeger_3,kokKatsayi_3);
        // Veri Sırası Test
        System.out.println(koklusayi_3.getKokDerecesi() + " / " + koklusayi_3.getKatsayi() + " / " + koklusayi_3.getKokIciDeger());

        //Başarılı!!
        // Creating the second object with data that getting from header
        JSONArray dorduncu = new JSONArray();
        dorduncu.put(jsonObj.get("dorduncu"));
        JSONObject dorduncuSayi = dorduncu.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_4 = Integer.parseInt(dorduncuSayi.getString("dortKokD"));
        double kokIciDeger_4 = Double.parseDouble(dorduncuSayi.getString("dortKokID"));
        int kokKatsayi_4 = Integer.parseInt(dorduncuSayi.getString("dortKokK"));
        KokluSayi koklusayi_4 = new KokluSayi(kokDerecesi_4,kokIciDeger_4,kokKatsayi_4);
        // Veri Sırası Test
        System.out.println(koklusayi_4.getKokDerecesi() + " / " + koklusayi_4.getKatsayi() + " / " + koklusayi_4.getKokIciDeger());

        //Başarılı!!
        // Creating the first object with data that getting from header
        JSONArray besinci = new JSONArray();
        besinci.put(jsonObj.get("besinci"));
        JSONObject besinciSayi = besinci.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_5 = Integer.parseInt(besinciSayi.getString("besKokD"));
        double kokIciDeger_5 = Double.parseDouble(besinciSayi.getString("besKokID"));
        int kokKatsayi_5 = Integer.parseInt(besinciSayi.getString("besKokK"));
        KokluSayi koklusayi_5 = new KokluSayi(kokDerecesi_5,kokIciDeger_5,kokKatsayi_5);
        // Veri Sırası Test
        System.out.println(koklusayi_5.getKokDerecesi() + " / " + koklusayi_5.getKatsayi() + " / " + koklusayi_5.getKokIciDeger());

        //Başarılı!!
        // Creating the second object with data that getting from header
        JSONArray altinci = new JSONArray();
        altinci.put(jsonObj.get("altinci"));
        JSONObject altinciSayi = altinci.getJSONArray(0).getJSONObject(0);
        int kokDerecesi_6 = Integer.parseInt(altinciSayi.getString("altiKokD"));
        double kokIciDeger_6 = Double.parseDouble(altinciSayi.getString("altiKokID"));
        int kokKatsayi_6 = Integer.parseInt(altinciSayi.getString("altiKokK"));
        KokluSayi koklusayi_6 = new KokluSayi(kokDerecesi_6,kokIciDeger_6,kokKatsayi_6);
        // Veri Sırası Test
        System.out.println(koklusayi_6.getKokDerecesi() + " / " + koklusayi_6.getKatsayi() + " / " + koklusayi_6.getKokIciDeger());

        List<KokluSayi> sayilar = new LinkedList<KokluSayi>();
        sayilar.add(koklusayi_1);
        sayilar.add(koklusayi_2);
        sayilar.add(koklusayi_3);
        sayilar.add(koklusayi_4);
        sayilar.add(koklusayi_5);
        sayilar.add(koklusayi_6);

        Map<KokluSayi, KokluSayi> sonuc = business.ikiBinYirmiSorusu(sayilar);
        int toplam = 0;
        KokluSayi temp = null;
        String islemCiktisi = "Sonuc = ";
        for (Map.Entry<KokluSayi,KokluSayi> m : sonuc.entrySet()) {
            islemCiktisi += m.getKey().getKokIciDeger() + "'nin " + m.getValue().getKokIciDeger() + " ile carpimi; " + "\n";
            temp = business.dortIslem(m.getKey(), m.getValue(), '*');
            toplam += temp.getKatsayi();
        }
        islemCiktisi += "tamsayi yapar. Cozumun kilit noktasi sagda, ipucu basligi altinda gorulebilir.";
        System.out.println(islemCiktisi);
        System.out.println("Toplam : " + toplam);

        resp.getWriter().write(islemCiktisi + "\n" + "Toplam : " + toplam);

    }
}
