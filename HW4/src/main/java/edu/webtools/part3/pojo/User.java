package edu.webtools.part3.pojo;

import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class User {
    private String email;
    private String password;
    private String confirmPassword;
    private String pic;
    private String gender;
    private String country;
    private String[] hobby;
    private String address;

    public User() {
    }

    public User(String email, String password, String confirmPassword, String pic, String gender, String country, String[] hobby, String address) {
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.pic = pic;
        this.gender = gender;
        this.country = country;
        this.hobby = hobby;
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", pic='" + pic + '\'' +
                ", gender='" + gender + '\'' +
                ", country='" + country + '\'' +
                ", hobby=" + Arrays.toString(hobby) +
                ", address='" + address + '\'' +
                '}';
    }
}
