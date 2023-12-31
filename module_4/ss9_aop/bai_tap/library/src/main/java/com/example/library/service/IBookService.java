package com.example.library.service;

import com.example.library.model.Book;

import java.util.List;

public interface IBookService {
    List<Book> getAllBook();
    Book getBook(int id);
    void update(Book book);
}
