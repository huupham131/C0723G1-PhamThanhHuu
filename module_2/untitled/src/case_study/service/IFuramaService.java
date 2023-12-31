package case_study.service;

import java.util.List;

public interface IFuramaService<E> {
    void add(E e);

    void delete(String id);

    List<E> display();
}
