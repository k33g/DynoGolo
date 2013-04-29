package org.k33g;


public class TinyToon implements Toon {

    private String name = null;

    public TinyToon(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String hello(String message) {
        return "HELLO I'M "+this.name+" : "+ message;
    }

    @Override
    public String speak(String message) {
        return "BLABLA BY "+this.name+" : "+ message;
    }

    public void scream() {
        System.out.println("YEEEEEEEEEEAAAAAAAAAAAHHHHHHH !!!!");
    }

    public void shout() {
        System.out.println("YEEEEEEEEEEAAAAAAAAAAAHHHHHHH !!!!");
    }
}
