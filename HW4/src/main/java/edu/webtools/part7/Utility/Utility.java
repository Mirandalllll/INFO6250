package edu.webtools.part7.Utility;

public class Utility {
    private String mes;

    public Utility() {
        mes = "This is part 7";

    }

    public Utility(String mes) {
        this.mes = mes;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    @Override
    public String toString() {
        return "Utility{" +
                "mes='" + mes + '\'' +
                '}';
    }
}