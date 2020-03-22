/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itpm.model;

/**
 *
 * @author Harindu
 */
public class SizeDTO { 
    
    private String CodeLine;
    private int Nkw;// key words
    private int Nid;// identifiers
    private int Nop;// operators
    private int Nnv;// numarical values
    private int Nsl;// strig literals
    private int Cs; // complexity of Size

    public String getCodeLine() {
        return CodeLine;
    }

    public void setCodeLine(String CodeLine) {
        this.CodeLine = CodeLine;
    }

    public int getNkw() {
        return Nkw;
    }

    public void setNkw(int Nkw) {
        this.Nkw = Nkw;
    }

    public int getNid() {
        return Nid;
    }

    public void setNid(int Nid) {
        this.Nid = Nid;
    }

    public int getNop() {
        return Nop;
    }

    public void setNop(int Nop) {
        this.Nop = Nop;
    }

    public int getNnv() {
        return Nnv;
    }

    public void setNnv(int Nnv) {
        this.Nnv = Nnv;
    }

    public int getNsl() {
        return Nsl;
    }

    public void setNsl(int Nsl) {
        this.Nsl = Nsl;
    }

    public int getCs() {
        return Cs;
    }

    public void setCs(int Cs) {
        this.Cs = Cs;
    }
    
    
    
}
