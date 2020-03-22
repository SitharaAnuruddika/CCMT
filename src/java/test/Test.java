/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.itpm.controller.SizeVariableMethodController;
import com.itpm.model.SizeVariableMetod;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author user
 */
public class Test {

    static SizeVariableMethodController svmc = new SizeVariableMethodController();

    public static void main(String[] args) {
        ArrayList<SizeVariableMetod> lists = new ArrayList<SizeVariableMetod>();

        SizeVariableMetod sizevariablemethod = new SizeVariableMetod();
        SizeVariableMetod sizevariablemethod1 = new SizeVariableMetod();
        SizeVariableMetod sizevariablemethod2 = new SizeVariableMetod();
        SizeVariableMetod sizevariablemethod3 = new SizeVariableMetod();
        SizeVariableMetod sizevariablemethod4 = new SizeVariableMetod();

        sizevariablemethod.setId("S1");
        sizevariablemethod.setWeight(1);
        lists.add(sizevariablemethod);

        sizevariablemethod1.setId("S2");
        sizevariablemethod1.setWeight(2);
        lists.add(sizevariablemethod1);

        sizevariablemethod2.setId("S3");
        sizevariablemethod2.setWeight(3);
        lists.add(sizevariablemethod2);

        sizevariablemethod3.setId("S4");
        sizevariablemethod3.setWeight(4);
        lists.add(sizevariablemethod3);

        sizevariablemethod4.setId("S5");
        sizevariablemethod4.setWeight(6);
        lists.add(sizevariablemethod4);

//        SizeVariableMethodController svmc = new SizeVariableMethodController();
        System.out.println(svmc.updateSave(lists));
//        for (SizeVariableMetod account : accounts) {
//            System.out.println(account.getId() + " " + account.getProgramComponent() + " " + account.getWeight());
//
//        }

    }

}
