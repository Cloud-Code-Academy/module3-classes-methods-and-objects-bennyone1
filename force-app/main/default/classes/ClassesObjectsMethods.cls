/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Benjamin Pierre
 */

public with sharing class ClassesObjectsMethods {
    
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        String myString = 'Hello, Salesforce!';
        Integer stringLength = myString.length();
        String subString = myString.subString(0 , 5);
        String lowerCase = myString.toLowerCase();
        String lengthAsString = String.valueof(stringLength);
        
        List<String> resultList = new List<String>();
        resultList.add(lengthAsString);
        resultList.add(subString);
        resultList.add(lowerCase);
        
        return resultList;
    }
    


    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        List<Boolean> myList = new List<Boolean>();
        myList.add(input.startsWith('Sales'));
        myList.add(input.endsWith('Force'));
        myList.add(input.contains('Awesome'));
        
        return myList;
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        List<String> wordList = sentence.split(' ');
        Set<String> uniqueSet = new Set<String>(wordList);
        List<String> uniqueWords = new List<String>(uniqueSet);

        return String.join(uniqueWords, ' ');
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        Integer vowelCount = 0;
        Set<String> vowels = new Set<String>{'a', 'e' , 'i' , 'o' , 'u'};
    
        for(Integer i = 0; i < str.length(); i++) {
            String character = str.substring(i, i + 1).toLowerCase();
            if (vowels.contains(character)) {
                vowelCount ++;
            }
        }
        return vowelCount;
    }
    
        
        
    
    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};
        String finalString = ' ';
        List<String> myList = new List<String>();

        for(String scientist : scientistNames) {
            if (scientist.contains('g') || scientist.contains('G')) { 
                myList.add(scientist);
            }
        }
            return String.join(myList, ',');
    }

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        Double a1 = Math.pow(a, 2);  
        Double b1 =  Math.pow(b, 2);
        Double finalDiff = Math.abs(b1) - Math.abs(a1);

        return Math.abs(finalDiff);
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        Integer min = 50;
        Integer max = 100;
        Integer randomNumber = min + (Integer)Math.floor(Math.random() * (max - min));

        return randomNumber; 
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        Date todaysDate = System.today();
        String formattedDate = todaysDate.format();

        return formattedDate;
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        Map<String , String> mapDaysToNumbers = new Map<String , String>();
        mapDaysToNumbers.put('Monday' , '1');
        mapDaysToNumbers.put('Tuesday' , '2');
        mapDaysToNumbers.put('Wednesday' , '3');
        mapDaysToNumbers.put('Thursday' , '4');
        mapDaysToNumbers.put('Friday' , '5');
        mapDaysToNumbers.put('Saturday' , '6');
        mapDaysToNumbers.put('Sunday' , '7');

        String dayToCheck = dt.format('EEEE');
        if (!mapDaysToNumbers.containsKey(dayToCheck)) {
            return 'Error: Key not found.';
        } else {
            return mapDaysToNumbers.get(dayToCheck);
        }
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        if (d1 == null || d2 == null) {
        return null;
       } 
       Integer d1Year = d1.year();
       Integer d2Year = d2.year();
       Integer totalYears = Math.abs(d2Year - d1Year);
        
       return totalYears; 
    }
    
    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare private instance variables - title, author, pages
        private String title;
        private String author;
        private Integer pages;
        
        // Constructor to initialize title, author, and pages
        public Book(String title, String author, Integer pages) {
            this.title = title;
            this.author = author;
            this.pages = pages;
        }
            //Getter methods for title, author, pages
        public String getTitle() {
            return title;
        }
        public String getAuthor() {
            return author;
        }
        public Integer getPages() {
            return pages;
        }
            //setter methods for title, author, pages
        public void setTitle(String newTitle) {
            title = newTitle;
        }
        public void setAuthor(String newAuthor) {
           author = newAuthor;
        }
        public void setPages(Integer newPages) {
            pages = newPages;
        }
        public String getBookDetails() {
            String finalString = 'Title: ' + title + ',' + ' Author: ' + author;
            return finalString;
        }
    }
     

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails(String title, String author, Integer pages) {     
        Book book1 = new Book(title, author, pages);
        
            return book1.getBookDetails(); 
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        List<Book> bookList = new List<Book>();

        myBook1.setTitle('Harry Potter and the Chamber of Secrets');      // Update the title and author of myBook1
        myBook1.setAuthor('J.K. Rowling');
        myBook1.setPages(352);                   // Update the pages for myBook1 to 352

        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking', 256);
        bookList.add(myBook1);
        bookList.add(myBook2);
        
        return bookList;    
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        private String name;                // Declare private two instance variables - (TEXT) name and (Number) age
        private Integer age;
            
        public Person(String name, Integer age) {
        this.name = name;
        this.age = age;
        }
        public String introduceYourself() {
            return 'Hello, my name is '+ name + ' and I am ' + age + ' years old.';
        }
        public String getName() {
        return name;
        }
        public Integer getAge() {
        return age;
        }
        public void setName(String newName) {
        name = newName;
        }
        public void setAge(Integer newAge) {
        age = newAge;
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails(String name, Integer age) {
        List<String> results = new List<String>();
        Person person1 = new Person(name, age);
        String personName = person1.getName();
        String personAge = String.valueOf(person1.getAge());

        String intro = person1.introduceYourself();
        results.add(intro);
        results.add(personName);
        results.add(personAge);  
                
        return results; 
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        Person createPerson1 = new Person(name , age);
        String createPerson1Name = createPerson1.getName();
        Integer createPerson1Age = createPerson1.getAge();
       
        return createPerson1; 
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> people = new List<Person>();
        for (Integer i = 0; i < names.size(); i++) {
            String name = names.get(i);
            Person newPerson = new Person(name, age);
            people.add(newPerson);    
        }
        return people; 
    }


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        if (person1.getAge() > person2.getAge()) {
            return person1;
        } else if (person2.getAge() > person1.getAge()) {
            return person2;
        } else if (person2.getAge() == person1.getAge()) {
            return person1;
        }
            return null;
    }
}
