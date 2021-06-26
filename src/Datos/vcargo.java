package Datos;

public class vcargo {
     private int idcargo;
    private String descripcion;

    public vcargo() {
    }

    public vcargo(int idcargo, String descripcion) {
        this.idcargo = idcargo;
        this.descripcion = descripcion;
    }

    public int getIdcargo() {
        return idcargo;
    }

    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public String getCargodescripcion() {
        return descripcion;
    }

    public void setCargodescripcion(String descripcion) {
        this.descripcion = descripcion;
    }  
}