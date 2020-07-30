package Projeto.classes;

import Projeto.db.Jogodb;
import Projeto.db.Requisitosdb;

import java.util.Objects;

import static Projeto.db.Jogodb.*;

public class Requisitos {
    private Integer idTime;
    private Integer pontos;
    private Integer vitorias;
    private Integer derrotas;
    private Integer empates;
    private Integer GP;
    private Integer GC;
    private Integer CA;
    private Integer CV;

    public Requisitos(){

    }

    public Requisitos(Integer idTime, Integer pontos, Integer vitorias, Integer derrotas, Integer empates, Integer GP, Integer GC, Integer CA, Integer CV) {
        this.idTime = idTime;
        this.pontos = pontos;
        this.vitorias = vitorias;
        this.derrotas = derrotas;
        this.empates = empates;
        this.GP = GP;
        this.GC = GC;
        this.CA = CA;
        this.CV = CV;
    }


    public Integer getIdTime() {
        return idTime;
    }

    public void setIdTime(Integer idTime) {
        this.idTime = idTime;
    }

    public Integer getPontos() {
        return pontos;
    }

    public void setPontos(Integer pontos) {
        this.pontos = pontos;
    }

    public Integer getVitorias() {
        return vitorias;
    }

    public void setVitorias(Integer vitorias) {
        this.vitorias = vitorias;
    }

    public Integer getDerrotas() {
        return derrotas;
    }

    public void setDerrotas(Integer derrotas) {
        this.derrotas = derrotas;
    }

    public Integer getEmpates() {
        return empates;
    }

    public void setEmpates(Integer empates) {
        this.empates = empates;
    }

    public Integer getGP() {
        return GP;
    }

    public void setGP(Integer GP) {
        this.GP = GP;
    }

    public Integer getGC() {
        return GC;
    }

    public void setGC(Integer GC) {
        this.GC = GC;
    }

    public Integer getCA() {
        return CA;
    }

    public void setCA(Integer CA) {
        this.CA = CA;
    }

    public Integer getCV() {
        return CV;
    }

    public void setCV(Integer CV) {
        this.CV = CV;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Requisitos that = (Requisitos) o;
        return Objects.equals(idTime, that.idTime) &&
                Objects.equals(pontos, that.pontos) &&
                Objects.equals(vitorias, that.vitorias) &&
                Objects.equals(derrotas, that.derrotas) &&
                Objects.equals(empates, that.empates) &&
                Objects.equals(GP, that.GP) &&
                Objects.equals(GC, that.GC) &&
                Objects.equals(CA, that.CA) &&
                Objects.equals(CV, that.CV);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idTime, pontos, vitorias, derrotas, empates, GP, GC, CA, CV);
    }

    @Override
    public String toString() {
        return "Requisitos{" +
                "idTime=" + idTime +
                ", pontos=" + pontos +
                ", vitorias=" + vitorias +
                ", derrotas=" + derrotas +
                ", empates=" + empates +
                ", GP=" + GP +
                ", GC=" + GC +
                ", CA=" + CA +
                ", CV=" + CV +
                '}';
    }
}


