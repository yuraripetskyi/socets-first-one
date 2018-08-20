package com.example.socets.models;

public class IncomingMessage {

    private String msg;

    @Override
    public String toString() {
        return "IncomingMessage{" +
                "msg='" + msg + '\'' +
                '}';
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public IncomingMessage(String msg) {
        this.msg = msg;
    }

    public IncomingMessage() {
    }
}
