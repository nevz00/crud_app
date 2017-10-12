CREATE SCHEMA test DEFAULT CHARACTER SET utf8;

CREATE TABLE test.books(
  id INT(11) NOT NULL AUTO_INCREMENT,
  book_title VARCHAR(100) NOT NULL,
  book_author VARCHAR(100) NOT NULL,
  book_printyear INT(11) NOT NULL,
  description VARCHAR(255) NOT NULL,
  isbn VARCHAR(20) NOT NULL,
  readalready TINYINT(1) NOT NULL,
  PRIMARY KEY (id));
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book1', 'Author1', 2001, 'Something about this book1', 'dagfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book2', 'Author2', 2002, 'Something about this book2', 'dagfd345fgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book3', 'Author3', 2003, 'Something about this book3', 'dagfgfdhdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book4', 'Author4', 2004, 'Something about this book4', 'dagfdfg4234da324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book5', 'Author5', 2005, 'Something about this book5', 'dagfdfg34gfjhjda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book6', 'Author6', 2006, 'Something about this book6', 'dagfdfgd123a324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book7', 'Author7', 2007, 'Something about this book7', 'dagfdfg21331da324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book8', 'Author8', 2008, 'Something about this book8', 'dagfdfgdjfj3a324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book9', 'Author9', 2009, 'Something about this book9', 'dagf12321dfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book10', 'Author10', 2010, 'Something about this book10', 'dag456hgfhfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book11', 'Author11', 2011, 'Something about this book11', 'dagfddfhfghfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book12', 'Author12', 2012, 'Something about this book12', 'dagfdf45345gda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book13', 'Author13', 2013, 'Something about this book13', 'dagfdfdfggda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book14', 'Author14', 2014, 'Something about this book14', '12321dagfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book15', 'Author15', 2015, 'Something about this book15', 'dagfdf123213gda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book16', 'Author16', 2016, 'Something about this book16', 'd123agfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book17', 'Author17', 2017, 'Something about this book17', '234dagfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book18', 'Author18', 2016, 'Something about this book18', 'da12321gfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book19', 'Author19', 2015, 'Something about this book19', 'da1233gfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book20', 'Author20', 2015, 'Something about this book20', 'd123213agfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book21', 'Author21', 2014, 'Something about this book21', 'd34345agfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book22', 'Author22', 2012, 'Something about this book22', 'da6465gfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book23', 'Author23', 2013, 'Something about this book23', 'da414gfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book24', 'Author24', 2011, 'Something about this book24', '5767dagfdfgda324',0);
INSERT INTO test.books (book_title, book_author, book_printyear, description, isbn, readalready) VALUES ('Book25', 'Author25', 2010, 'Something about this book25', '7567dagfdfgda324',0);