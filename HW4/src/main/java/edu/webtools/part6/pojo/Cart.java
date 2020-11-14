package edu.webtools.part6.pojo;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class Cart {
    private List<Item> cart;
    private Map<String, Item> map;

    public Cart() {
        this.cart = new ArrayList<>();
        this.map = new HashMap<>();
    }

    public Cart(List<Item> cart) {
        this.cart = cart;
        this.map = new HashMap<>();
    }

    public List<Item> getCart() {
        cart = new ArrayList<>(map.values());
        return cart;
    }

    public void setCart(List<Item> cart) {
        this.cart = cart;
    }

    public Item findItem(String name) {
        if (map.containsKey(name)) {
            return map.get(name);
        }
        return null;
    }

    public void addItem(Item item) {
        if (map.containsKey(item.getName())) {
            Item in = map.get(item.getName());
            in.setCount(in.getCount() + 1);
            map.put(item.getName(), in);
        } else {
            map.put(item.getName(), item);
        }
    }

    public void deleteItem(Item item) {

        map.remove(item.getName());
    }

    public void deleteItem(String name) {
        Item item = findItem(name);
        if (item != null)
            deleteItem(item);
    }

    public void modifyItemCount(String name, int count) {
        if (map.containsKey(name)) {
            Item tmp = map.get(name);
            tmp.setCount(count);
            map.put(name, tmp);
        }
    }
}
