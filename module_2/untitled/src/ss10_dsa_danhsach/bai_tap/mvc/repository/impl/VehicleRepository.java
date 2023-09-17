package ss10_dsa_danhsach.bai_tap.mvc.repository.impl;

import ss10_dsa_danhsach.bai_tap.mvc.repository.IVehicleRepository;

import java.util.ArrayList;

public class VehicleRepository<E> implements IVehicleRepository<E> {
    private ArrayList<E> vehicles = new ArrayList<>();

    @Override
    public void addVehicle(E e) {
        vehicles.add(e);
    }

    @Override
    public void displayVehicle() {
        for (E vehicle : vehicles) {
            System.out.println(vehicle.toString());
        }
    }

    @Override
    public void removeVehicle(int id) {
        vehicles.remove(id);
    }

    @Override
    public E getVehicleDetail(int id) {
        return vehicles.get(id);
    }
}