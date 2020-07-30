package Projeto.classes;

import java.util.Objects;

public class Time {

    private Integer id;
    private String nome;
    private String estadio;

    public Time(){

    }

    public Time(Integer id, String nome, String estadio){
        this.id = id;
        this.nome = nome;
        this.estadio = estadio;
    }

    public Time(String nome, String estadio){
        this.nome = nome;
        this.estadio = estadio;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Time time = (Time) o;
        return Objects.equals(id, time.id) &&
                Objects.equals(nome, time.nome) &&
                Objects.equals(estadio, time.estadio);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome, estadio);
    }

    @Override
    public String toString() {
        return "Times{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", estadio='" + estadio + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstadio() {
        return estadio;
    }

    public void setEstadio(String estadio) {
        this.estadio = estadio;
    }
}
