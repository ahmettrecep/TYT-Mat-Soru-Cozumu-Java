package Servlet;



//import org.json.JSONArray;
//import org.json.JSONException;
//import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Servlet/HesaplamaIslemleri")
public class HesaplamaIslemleri extends HttpServlet {
    /*public static String insertString(
            String originalString,
            String stringToBeInserted,
            int index)
    {

        // Create a new string
        String newString = new String();

        for (int i = 0; i < originalString.length(); i++) {

            // Insert the original string character
            // into the new string
            newString += originalString.charAt(i);

            if (i == index) {

                // Insert the string to be inserted
                // into the new string
                newString += stringToBeInserted;
            }
        }

        // return the modified String
        return newString;
    }*/
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();

        StringBuilder sb = new StringBuilder();
        BufferedReader br = req.getReader();
        String str;
        while( (str = br.readLine()) != null ){
            sb.append(str);
        }
        System.out.println(sb.toString());
        resp.getWriter().print(sb.toString());
        /*try {
            String yeniString = '{' + sb.toString();
            yeniString = insertString(yeniString, "}",43);
            //yeniString = insertString(yeniString, "}",45);
            JSONObject object = new JSONObject(yeniString);
            System.out.println(object.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }*/
        //System.out.println(sb.toString());




        /*String name = req.getParameter("yourname");
        System.out.println(name);
        resp.getWriter().print("Hi, " + name);
        System.out.println("servlet içi");
        String birinciKok;
        String birinciKatsayiDegeri;
        String birinciKokIci;

        String ikinciKok;
        String ikinciKatsayiDegeri;
        String ikinciKokIci;

        birinciKok = req.getParameter("birinciKok");
        birinciKatsayiDegeri = req.getParameter("birinciKatsayiDegeri");
        birinciKokIci = req.getParameter("birinciKokIci");

        ikinciKok = req.getParameter("ikinciKok");
        ikinciKatsayiDegeri = req.getParameter("ikinciKatsayiDegeri");
        ikinciKokIci = req.getParameter("ikinciKokIci");
        System.out.println(birinciKok + " / " + birinciKatsayiDegeri);
        resp.getWriter().print(birinciKok + " / " + birinciKatsayiDegeri);
        //System.out.println(birinciKok + " / "+ " servletin içi");*/

    }@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        doPost(req,resp);
    }

}
