package case_study.service;


import java.util.List;

public interface IPersonService<E> extends IFuramaService<E> {
        void edit(E e);
    List<E> searchByName(String name);

}
