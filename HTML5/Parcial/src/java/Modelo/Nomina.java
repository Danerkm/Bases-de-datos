package Modelo;

public class Nomina extends Empleado {

    public long getAuxilioTransporte() {
        long auxilio = 0;
        if (this.salariobasico < (2 * 737117)) {
            auxilio = (83140 / 30) * this.getDias();
        } else {
            auxilio = 0;
        }
        return auxilio;
    }

    public long getSalud() {
        return (long) (super.calcularsalario() * 0.03);
    }

    public long getPension() {
        return (long) (super.calcularsalario() * 0.04);
    }

    public long calcularsalario() {
        return super.calcularsalario() + getAuxilioTransporte() - getSalud() - getPension();
//        String saludo="HOLA MUNDO";
//    request.setAttribute("saludo", saludo);
    }



}
