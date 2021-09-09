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

@WebServlet("/Servlet/HesaplamaIslemleri")
public class HesaplamaIslemleri extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

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
        JSONObject jsonObj = new JSONObject(new String(data));

        //Başarılı!!
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

        //Başarılı!!
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
        // Getting the operator(which operation will processing)
        char operator = jsonObj.getString("operator").charAt(0);

        KokluSayi sonuc = business.dortIslem(koklusayi_1,koklusayi_2,operator);
        resp.getWriter().write("D :" + sonuc.getKokDerecesi() + " - " + "K :" + sonuc.getKatsayi() + " - " + "D :" + sonuc.getKokIciDeger());
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        doPost(req,resp);
    }
}