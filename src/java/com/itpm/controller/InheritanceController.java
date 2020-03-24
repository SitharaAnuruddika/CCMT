/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itpm.controller;

import com.itpm.model.InheritanceDTO;
import com.itpm.model.InheritanceMethod;
import com.itpm.util.DBConnectionUtil;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author pasin_000
 */
public class InheritanceController {

    private static Connection connection;
    private static PreparedStatement ps;
    private static ResultSet rs;

    //==================retrieve the Inheritance ===================================
    public static ArrayList<InheritanceMethod> getinheritance() {

        ArrayList<InheritanceMethod> list = new ArrayList<InheritanceMethod>();
        try {
            connection = DBConnectionUtil.getConnection();

            ps = connection.prepareStatement("select * from inheritanceweight");
            rs = ps.executeQuery();

            while (rs.next()) {

                InheritanceMethod InheritanceMethod = new InheritanceMethod();
                InheritanceMethod.setID(rs.getString("ID"));
                InheritanceMethod.setInherited_Pattern(rs.getString("Inherited_Pattern"));
                InheritanceMethod.setWeight(rs.getInt("Weight"));

                list.add(InheritanceMethod);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            /*
			 * Close prepared statement and database connectivity at the end of transaction
             */
            try {
                if (ps != null) {
                    ps.close();
                }
                if (connection != null) {
//                    connection.close();
                }
            } catch (SQLException e) {
                //log.log(Level.SEVERE, e.getMessage());
                System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            } catch (Exception e) {

                e.printStackTrace();
            }
        }
        return list;

    }

    //==========================Update the inheritance ========================
    public int updateInhertance(ArrayList<InheritanceMethod> inheritance) {

        int result = 0;

        try {
            connection = DBConnectionUtil.getConnection();
            for (InheritanceMethod inheritance1 : inheritance) {

                ps = connection.prepareStatement("UPDATE inheritanceweight SET  `Weight`=? WHERE `ID`=?;");

                ps.setInt(1, inheritance1.getWeight());
                ps.setString(2, inheritance1.getID());

                result = ps.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (connection != null) {
//                    connection.close();
                }
            } catch (SQLException e) {
                System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            }
        }
        // Get the updated employee
        return result;

    }

//     =====================================================================================================
//     =====================================================================================================
    public static ArrayList<InheritanceDTO> measureInheritance(String fileName) throws FileNotFoundException, IOException {
        ArrayList<InheritanceDTO> inheritanceList = new ArrayList<>();

        FileReader fr = new FileReader("c://ccmt/uploads/" + fileName);
        BufferedReader br = new BufferedReader(fr);
        ArrayList<InheritanceMethod> alist = new ArrayList<>();
        alist = getinheritance();
        String s = null;
        String[] words = null;
        String input = "class";
        String[] check = null;
        int direct = 0;
        int indirect = 0;

        while ((s = br.readLine()) != null) //Reading Content from the file
        {

            words = s.split("\\W+");  //Split the word using space

            List<String> abcd = Arrays.asList(words);

            
            for (String word : words) {
                int nDI = 0;
                int i = abcd.indexOf(word);
                InheritanceDTO inherit = new InheritanceDTO();
                if (word.equals(input)) //Search for the given word
                {
                    for (int j = 0; j < words.length; j++) {
                        if(words[j].equals("extends")){
                            nDI++;
                            if(nDI>=1){
                                direct = 1;
                                indirect = nDI-1;
                            }
                        }
                    }

                    inherit.setClassName(words[i + 1]); 
                    inherit.setDirectInheritance(nDI);
                    inherit.setIndirectInheritance(direct);
                    inherit.setTotal(indirect);
                    inheritanceList.add(inherit);
                } else {

                }

            }

        }

        br.close();
        fr.close();
        return inheritanceList;
    }
}
