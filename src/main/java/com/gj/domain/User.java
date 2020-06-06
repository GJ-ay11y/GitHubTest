package com.gj.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class User {
    private int age;
    private String name;
    private Date birthday;

    public String getBirStr(){

        if(birthday != null){
            //格式化日期
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd    HH:mm:ss");
            //返回字符串
            return sdf.format(birthday);
        }else{
            return " ";
        }


    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
