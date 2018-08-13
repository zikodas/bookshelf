# bookshelf
I present a web application for library management, implemented using HTML, CSS, JavaScript, PHP and MySQL

as user :
  - I can sign up using my cne, first and last name, password, specialty and ID photo
  - I can sign in using my cne, first and last name, password
  - I can display the list of books ordered by category
  - I can reserve a book

as admin :
  - I can sign in using username and password  
  - I can display the list of books
  - I can add, edit, or remove a book
  - I can display the list of students signed up
  - I can remove a student
  - I can display the list of pending reservations

the database named "bibliotheque" contains three tables : "etudiant","livre" and "reservation"
  - "etudiant" contains informations about students like : first and last name, cne password, specialty ...
  - "livre" contains informations about books like : book's title, authors, field ...
  - "reservation" contains information about the reservation, which book is booked and who is the person that reserve it

the file Library_DB.sql contains the database, and files.zip contains all the files that feed the application 
