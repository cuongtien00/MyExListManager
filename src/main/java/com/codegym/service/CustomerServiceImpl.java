package com.codegym.service;

import com.codegym.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Thuy Duong", "amazing@gmail.com", "Thai Nguyen"));
        customers.put(2, new Customer(2, "Ngo Mai Huyen", "trecon@gmail.com", "Hai Phong"));
        customers.put(3, new Customer(3, "Luong Dan Phuong", "thefirst@gmail.com", "Ha Noi"));
        customers.put(4, new Customer(4, "Linh Hong Dieu Tran", "LHDT@gmail.com", "Cao Bang"));
        customers.put(5, new Customer(5, "Tra Oanh", "idoltiktok@gmail.com", "Nha Trang"));
        customers.put(6, new Customer(6, "Mai Ly", "gaydoxuong@gmail.com", "Phu Quoc"));
        customers.put(7, new Customer(7, "Tra My", "nguclep@gmail.com", "Ke Bang"));

    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);

    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
