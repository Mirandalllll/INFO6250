package edu.webtools.part6.pojo;

import org.springframework.stereotype.Component;

@Component
public class Item {
    private String name;
    private int count;

    public Item() {
    }

    public Item(String name, int count) {
        this.name = name;
        this.count = count;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
