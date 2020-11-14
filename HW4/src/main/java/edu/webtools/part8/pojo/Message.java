package edu.webtools.part8.pojo;

import org.springframework.stereotype.Component;

@Component
public class Message {

    private String mes;

    public Message() {
        mes = "This is part 8";
    }

    public Message(String mes) {
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
        return "Message{" +
                "mes='" + mes + '\'' +
                '}';
    }
}
