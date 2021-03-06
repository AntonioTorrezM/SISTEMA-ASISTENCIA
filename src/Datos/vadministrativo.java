package Datos;

import java.sql.Date;

public class vadministrativo extends vcargo{
    private int idadministrativo;
    private int idcargo;
    private String nombres;
    private String apellidos;
    private String CI;
    private String telefono;
    private String direccion;
    private String email;
    private String sexo;
    private Date fecha_ingreso;

    public vadministrativo() {
    }

    public vadministrativo(int idadministrativo, int idcargo, String nombres, String apellidos, String CI, String telefono, String direccion, String email, String sexo, Date fecha_ingreso) {
        this.idadministrativo = idadministrativo;
        this.idcargo = idcargo;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.CI = CI;
        this.telefono = telefono;
        this.direccion = direccion;
        this.email = email;
        this.sexo = sexo;
        this.fecha_ingreso = fecha_ingreso;
    }

    public int getIdadministrativo() {
        return idadministrativo;
    }

    public void setIdadministrativo(int idadministrativo) {
        this.idadministrativo = idadministrativo;
    }

    @Override
    public int getIdcargo() {
        return idcargo;
    }

    @Override
    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return CI;
    }

    public void setDni(String CI) {
        this.CI = CI;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    } 
}