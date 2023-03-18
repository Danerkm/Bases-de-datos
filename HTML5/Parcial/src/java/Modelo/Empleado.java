package Modelo;



public class Empleado extends Persona {

    protected long salariobasico;
    protected int dias;

    public long getSalariobasico() {
        return salariobasico;
    }

    public void setSalariobasico(long salariobasico) {
        this.salariobasico = salariobasico;
    }

    public int getDias() {
        return dias;
    }

    public void setDias(int dias) {
        this.dias = dias;
    }

    public long calcularsalario() {
        return ((this.salariobasico / 30) * dias);
    }

    public void getSalariobasico(Object salario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
