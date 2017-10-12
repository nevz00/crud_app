package com.springapp.bookmanager.controller;

import com.springapp.bookmanager.model.Book;
import com.springapp.bookmanager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {
    public static final int MAX_USERS_PER_PAGE = 10;
    private BookService bookService;
    private int currentPage = 1;
    private int maxNumberOfPages;

    @Autowired
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public String listUsers(Model model) {
        List<Book> allBooks = bookService.listBooks();
        List<Book> booksToDisplay = new ArrayList<Book>(MAX_USERS_PER_PAGE);

        if (allBooks.size() % MAX_USERS_PER_PAGE == 0)
            maxNumberOfPages = allBooks.size() / MAX_USERS_PER_PAGE;
        else
            maxNumberOfPages = allBooks.size() / MAX_USERS_PER_PAGE + 1;

        for (int i = (currentPage-1)*MAX_USERS_PER_PAGE;
             i < (currentPage-1)*MAX_USERS_PER_PAGE + MAX_USERS_PER_PAGE && i < allBooks.size();
             i++)
            booksToDisplay.add(allBooks.get(i));

        model.addAttribute("book", new Book());
        model.addAttribute("pageNumber", currentPage);
        model.addAttribute("listBooks", booksToDisplay);

        return "books";
    }

    @RequestMapping(value = "books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book) {
        if (book.getId() == 0)
            this.bookService.addBook(book);
        else
            this.bookService.updateBook(book);

        return "redirect:/books";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        this.bookService.removeBook(id);

        return "redirect:/books";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model) {
        List<Book> allBooks = bookService.listBooks();
        List<Book> booksToDisplay = new ArrayList<Book>(MAX_USERS_PER_PAGE);

        if (allBooks.size() % MAX_USERS_PER_PAGE == 0)
            maxNumberOfPages = allBooks.size() / MAX_USERS_PER_PAGE;
        else
            maxNumberOfPages = allBooks.size() / MAX_USERS_PER_PAGE + 1;

        for (int i = (currentPage-1)*MAX_USERS_PER_PAGE;
             i < (currentPage-1)*MAX_USERS_PER_PAGE + MAX_USERS_PER_PAGE && i < allBooks.size();
             i++)
            booksToDisplay.add(allBooks.get(i));
        model.addAttribute("book", this.bookService.getBookById(id));
        model.addAttribute("listBooks", booksToDisplay);

        return "books";
    }
    @RequestMapping(value = "bookdata")
    public String bookData(@RequestParam("id") int id, Model model) {

            model.addAttribute("book", this.bookService.getBookById(id));

        return "bookdata";
    }

    @RequestMapping(value = "nextPage", method = RequestMethod.GET)
    public String nextPage(Model model) {
        List<Book> allBooks = bookService.listBooks();
        if (++currentPage > maxNumberOfPages)
            currentPage = maxNumberOfPages;
        List<Book> booksToDisplay = new ArrayList<Book>(MAX_USERS_PER_PAGE);

        for (int i = (currentPage-1)*MAX_USERS_PER_PAGE;
             i < (currentPage-1)*MAX_USERS_PER_PAGE + MAX_USERS_PER_PAGE && i < allBooks.size();
             i++)
            booksToDisplay.add(allBooks.get(i));

        model.addAttribute("book", new Book());
        model.addAttribute("pageNumber", currentPage);
        model.addAttribute("listBooks", booksToDisplay);

        return "books";
    }

    @RequestMapping(value = "previousPage", method = RequestMethod.GET)
    public String previousPage(Model model) {
        List<Book> allBooks = bookService.listBooks();
        if (--currentPage < 1)
            currentPage = 1;
        List<Book> booksToDisplay = new ArrayList<Book>(MAX_USERS_PER_PAGE);

        for (int i = (currentPage-1)*MAX_USERS_PER_PAGE;
             i < (currentPage-1)*MAX_USERS_PER_PAGE + MAX_USERS_PER_PAGE && i < allBooks.size();
             i++)
            booksToDisplay.add(allBooks.get(i));

        model.addAttribute("book", new Book());
        model.addAttribute("pageNumber", currentPage);
        model.addAttribute("listBooks", booksToDisplay);

        return "books";
    }
}

