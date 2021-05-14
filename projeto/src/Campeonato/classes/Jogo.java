package Projeto.classes;

// ola

import java.util.Objects;

public class Jogo {
    private Integer idJogo;
    private Integer rodada;
    private String data;
    private String local;
    private String mandante;
    private String visitante;
    private Integer golsMandante;
    private Integer golsVisitante;

    public Jogo(Integer idJogo, Integer rodada, String data, String local, String mandante, String visitante, Integer golsMandante, Integer golsVisitante) {
        this.idJogo = idJogo;
        this.rodada = rodada;
        this.data = data;
        this.local = local;
        this.mandante = mandante;
        this.visitante = visitante;
        this.golsMandante = golsMandante;
        this.golsVisitante = golsVisitante;
    }

    public Jogo(Integer rodada, String data, String local, String mandante, String visitante) {
        this.rodada = rodada;
        this.data = data;
        this.local = local;
        this.mandante = mandante;
        this.visitante = visitante;

    }

    public Jogo(){

    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Jogo jogo = (Jogo) o;
        return Objects.equals(rodada, jogo.rodada) &&
                Objects.equals(data, jogo.data) &&
                Objects.equals(local, jogo.local) &&
                Objects.equals(mandante, jogo.mandante) &&
                Objects.equals(visitante, jogo.visitante) &&
                Objects.equals(golsMandante, jogo.golsMandante) &&
                Objects.equals(golsVisitante, jogo.golsVisitante);
    }

    @Override
    public int hashCode() {
        return Objects.hash(rodada, data, local, mandante, visitante, golsMandante, golsVisitante);
    }

    public Integer getIdJogo() {
        return idJogo;
    }

    public void setIdJogo(Integer idJogo) {
        this.idJogo = idJogo;
    }

    public Integer getRodada() {
        return rodada;
    }

    public void setRodada(Integer rodada) {
        this.rodada = rodada;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getMandante() {
        return mandante;
    }

    public void setMandante(String mandante) {
        this.mandante = mandante;
    }

    public String getVisitante() {
        return visitante;
    }

    public void setVisitante(String visitante) {
        this.visitante = visitante;
    }

    public Integer getGolsMandante() {
        return golsMandante;
    }

    public void setGolsMandante(Integer golsMandante) {
        this.golsMandante = golsMandante;
    }

    public Integer getGolsVisitante() {
        return golsVisitante;
    }

    public void setGolsVisitante(Integer golsVisitante) {
        this.golsVisitante = golsVisitante;
    }
}
