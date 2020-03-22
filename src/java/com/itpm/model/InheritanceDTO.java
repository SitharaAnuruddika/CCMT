/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itpm.model;

/**
 *
 * @author pasin_000
 */
public class InheritanceDTO {
  
    private String ClassName;//Classes
    private int directInheritance;// Direct Inheritance
    private int indirectInheritance;// Indirect Inheritance
    private int Total;// Total Inheritance
    private int Ci;

    public String getClassName() {
        return ClassName;
    }

    public void setClassName(String ClassName) {
        this.ClassName = ClassName;
    }

    public int getDirectInheritance() {
        return directInheritance;
    }

    public void setDirectInheritance(int directInheritance) {
        this.directInheritance = directInheritance;
    }

    public int getIndirectInheritance() {
        return indirectInheritance;
    }

    public void setIndirectInheritance(int indirectInheritance) {
        this.indirectInheritance = indirectInheritance;
    }

    public int getTotal() {
        return Total;
    }

    public void setTotal(int Total) {
        this.Total = Total;
    }

    public int getCi() {
        return Ci;
    }

    public void setCi(int Ci) {
        this.Ci = Ci;
    }
    
    
}
