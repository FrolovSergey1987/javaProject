package entity;

import java.util.ArrayList;
import java.util.Objects;

public class User {
    private int ud;
    private String login;
    private String password;
    private ArrayList<Role> roles = new ArrayList<Role>();

    public User(int ud, String login, String password) {
        this.ud = ud;
        this.login = login;
        this.password = password;
    }

    public int getUd() {
        return ud;
    }

    public void setUd(int ud) {
        this.ud = ud;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public ArrayList<Role> getRoles() {
        return roles;
    }

    public void setRoles(ArrayList<Role> roles) {
        this.roles = roles;
    }
    public void addRole (Role role){
        roles.add(role);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return ud == user.ud && Objects.equals(login, user.login) && Objects.equals(password, user.password) && Objects.equals(roles, user.roles);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ud, login, password, roles);
    }

}
