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
        ArrayList<InheritanceMethod> weightList = new ArrayList<>();
        weightList = getinheritance();
        String s = null;
        String line = null;
        String[] words = null;

        String input = "class";
        String[] check = null;

        int inheritance_0 = 0;
        int inheritance_1 = 0;
        int inheritance_2 = 0;
        int inheritance_3 = 0;
        int inheritance_4 = 0;

        for (InheritanceMethod im : weightList) {
//            System.out.println(svm.getProgramComponent().equals("Key Word"));
            if (im.getInherited_Pattern().equals("A class with no inheritance (direct or indirect)")) {
                inheritance_0 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from one user-defined class")) {
                inheritance_1 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from two user-defined classes")) {
                inheritance_2 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from three user-defined classes")) {
                inheritance_3 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from more than three user-defin")) {
                inheritance_4 = im.getWeight();
            }

        }

        while ((s = br.readLine()) != null) //Reading Content from the file
        {

            words = s.split("\\W+");  //Split the word using space

            List<String> abcd = Arrays.asList(words);
            List<String> classList = new ArrayList<>();

            InheritanceDTO inherit = new InheritanceDTO();
            String classname = "";
            int nDI = 0;
            int nIDI = 0;
            if (!s.contains("//")) {
                for (String word : words) {

                    int i = abcd.indexOf(word);

                    if (word.equals(input)) //Search for the given word
                    {
                        if (words.length > 2) {
//                            aa:
                            for (int j = 0; j < words.length; j++) {
                                if (words[j].equals("extends")) {
                                    nDI++;
                                    classList.add(words[j + 1]);
                                    //////////////////////////////////////////////////////////  
                                    String[] iwrds = null;
                                    FileReader fir = new FileReader("c://ccmt/uploads/" + fileName);
                                    BufferedReader bufR = new BufferedReader(fir);
                                    while ((line = bufR.readLine()) != null) //Reading Content from the file
                                    {

                                        System.out.println(line);
                                        iwrds = line.split("\\W+");
                                        for (int k = 0; k < iwrds.length; k++) {
                                            System.out.println(iwrds[k] + "==" + words[j + 1] + ":" + iwrds[k].equals(words[j + 1]));
                                            if (iwrds[k].equals(words[j + 1])) {
                                                System.out.println("class : " + iwrds[k]);
                                                if (iwrds[k - 1].equals("class")) {//k-1 ==class
                                                    //niD  
                                                    System.out.println("length is: " + iwrds.length);
                                                    if (iwrds.length > 2) {
                                                        for (int x = 0; x < iwrds.length; x++) {
                                                            if (iwrds[x].equals("extends")) {
                                                                nIDI++;

                                                            }
                                                        }
                                                    }

                                                }
                                            }
                                        }
//                                        continue aa;
                                    }

                                }
                                /////////////////////////////////////////////////////////////////       

                            }
                        }
                        int Ci = 0;
                        if (nDI + nIDI == 0) {
                            Ci = inheritance_0;
                        } else if (nDI + nIDI == 1) {
                            Ci = inheritance_1;
                        } else if (nDI + nIDI == 2) {
                            Ci = inheritance_2;
                        } else if (nDI + nIDI == 3) {
                            Ci = inheritance_3;
                        } else {
                            Ci = inheritance_4;
                        }
                        classname = words[i + 1];
                        inherit.setClassName(classname);
                        inherit.setDirectInheritance(nDI);
                        inherit.setIndirectInheritance(nIDI);
                        inherit.setTotal(nDI + nIDI);
                        inherit.setCi(Ci);
                        inheritanceList.add(inherit);

                    } else {

                    }

                }
            }

        }

        br.close();
        fr.close();
        return inheritanceList;
    }

    //     =====================================================================================================
//     =====================================================================================================
    public static ArrayList<InheritanceDTO> measureInheritanceforAllfactors(String fileName) throws FileNotFoundException, IOException {
        ArrayList<InheritanceDTO> inheritanceList = new ArrayList<>();

        FileReader fr = new FileReader("c://ccmt/uploads/" + fileName);
        BufferedReader br = new BufferedReader(fr);
        ArrayList<InheritanceMethod> weightList = new ArrayList<>();
        weightList = getinheritance();
        String s = null;
        String line = null;
        String[] words = null;

        String input = "class";
        String[] check = null;

        int inheritance_0 = 0;
        int inheritance_1 = 0;
        int inheritance_2 = 0;
        int inheritance_3 = 0;
        int inheritance_4 = 0;

        for (InheritanceMethod im : weightList) {
//            System.out.println(svm.getProgramComponent().equals("Key Word"));
            if (im.getInherited_Pattern().equals("A class with no inheritance (direct or indirect)")) {
                inheritance_0 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from one user-defined class")) {
                inheritance_1 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from two user-defined classes")) {
                inheritance_2 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from three user-defined classes")) {
                inheritance_3 = im.getWeight();
            } else if (im.getInherited_Pattern().equals("A class inheriting from more than three user-defin")) {
                inheritance_4 = im.getWeight();
            }

        }

        while ((s = br.readLine()) != null) //Reading Content from the file
        {
            int Ci = 0;
            words = s.split("\\W+");  //Split the word using space

            List<String> abcd = Arrays.asList(words);
            List<String> classList = new ArrayList<>();

            InheritanceDTO inherit = new InheritanceDTO();
            String classname = "";
            int nDI = 0;
            int nIDI = 0;
            if (!s.contains("//")) {
                for (String word : words) {
                    
                    int i = abcd.indexOf(word);

                    if (word.equals(input)) //Search for the given word
                    {
                        if (words.length > 2) {
//                            aa:
                            for (int j = 0; j < words.length; j++) {
                                if (words[j].equals("extends")) {
                                    nDI++;
                                    classList.add(words[j + 1]);
                                    //////////////////////////////////////////////////////////  
                                    String[] iwrds = null;
                                    FileReader fir = new FileReader("c://ccmt/uploads/" + fileName);
                                    BufferedReader bufR = new BufferedReader(fir);
                                    while ((line = bufR.readLine()) != null) //Reading Content from the file
                                    {

                                        System.out.println(line);
                                        iwrds = line.split("\\W+");
                                        for (int k = 0; k < iwrds.length; k++) {
                                            System.out.println(iwrds[k] + "==" + words[j + 1] + ":" + iwrds[k].equals(words[j + 1]));
                                            if (iwrds[k].equals(words[j + 1])) {
                                                System.out.println("class : " + iwrds[k]);
                                                if (iwrds[k - 1].equals("class")) {//k-1 ==class
                                                    //niD  
                                                    System.out.println("length is: " + iwrds.length);
                                                    if (iwrds.length > 2) {
                                                        for (int x = 0; x < iwrds.length; x++) {
                                                            if (iwrds[x].equals("extends")) {
                                                                nIDI++;

                                                            }
                                                        }
                                                    }

                                                }
                                            }
                                        }
//                                        continue aa;
                                    }

                                }
                                /////////////////////////////////////////////////////////////////       

                            }
                        }

                        if (nDI + nIDI == 0) {
                            Ci = inheritance_0;
                        } else if (nDI + nIDI == 1) {
                            Ci = inheritance_1;
                        } else if (nDI + nIDI == 2) {
                            Ci = inheritance_2;
                        } else if (nDI + nIDI == 3) {
                            Ci = inheritance_3;
                        } else {
                            Ci = inheritance_4;
                        }
                        classname = words[i + 1];

                    } else {

                    }

                }
            }
            inherit.setClassName(classname);
            inherit.setDirectInheritance(nDI);
            inherit.setIndirectInheritance(nIDI);
            inherit.setTotal(nDI + nIDI);
            inherit.setCi(Ci);
            inheritanceList.add(inherit);
        }

        br.close();
        fr.close();
        return inheritanceList;
    }

}
