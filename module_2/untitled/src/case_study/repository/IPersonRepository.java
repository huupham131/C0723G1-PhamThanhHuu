package case_study.repository;

import java.util.List;

public interface IPersonRepository<E> extends IFuramaRepository<E> {
     String COMMA = ",";
    void edit(E e);
    List<E> searchByName(String name);
}
