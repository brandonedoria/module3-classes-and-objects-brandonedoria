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
 * @author Brandon Edoria
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods()
    {
        String hello = 'Hello, Salesforce!'; // Initialize string

        List<String> stringList = new List<String>(); // Initialize string list
        stringList.add(String.valueOf(hello.length())); // Get the length of the string, convert from integer to string, add to list
        stringList.add(hello.substring(0, 5)); // Get first 5 letters of string, add to list
        stringList.add(hello.toLowerCase()); // Convert the string to lower case, add to list
        
        return stringList; // Return the list
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input)
    {
        List<Boolean> checkList = new List<Boolean>(); // Initialize boolean list
        checkList.add(input.startsWith('Sales')); // Does it start with 'Sales'?
        checkList.add(input.endsWith('Force')); // Does it end with 'Force'?
        checkList.add(input.contains('Awesome')); // Does it contain 'Awesome'?
        
        return checkList;
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence)
    {
        List<String> duplicateWords = new List<String>(sentence.split(' ')); // Initialize list of strings & split strings by ' '
        Set<String> uniqueWords = new Set<String>(); // Initialize set of strings
        uniqueWords.addAll(duplicateWords); // Convert list to set to remove duplicates

        return String.join(uniqueWords, ' '); // Rejoin set of words into a string with spaces in between
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str)
    {
        Integer vowelCount = 0; // Initialize vowel count to 0

        for (String letter : str.split('')) // For loop goes through the length of the entire string
        {
            if (letter.equalsIgnoreCase('a') || letter.equalsIgnoreCase('e') || letter.equalsIgnoreCase('i') || letter.equalsIgnoreCase('o') || letter.equalsIgnoreCase('u')) // If it's a vowel, count it
            {
                vowelCount++;
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
    public static String findTheScientist()
    {
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'}; // PROVIDED
        List<String> nuthinButAGThang = new List<String>(); // Initialize list of strings

        for (String likeLasagna : scientistNames) // Collection loop
        {
            if (likeLasagna.containsIgnoreCase('g')) // If string contains 'g', add to list
            {
                nuthinButAGThang.add(likeLasagna);
            }
        }
        return String.join(nuthinButAGThang, ','); // Rejoin List of words into a string with commas in between
    }

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b)
    {
        return Math.abs(Math.pow(a, 2) - Math.pow(b, 2));
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber()
    {
        Integer randomNumber = 0; // Initialize random number

        if (randomNumber <= 50 || randomNumber >= 100) // If the number isn't between 50 and 100 including, generate another number
        {
            randomNumber = Integer.valueOf(Math.random() * 100);
        }

        return randomNumber;
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate()
    {
        Date currentDate = Date.today();
        return currentDate.format();
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt)
    {
        String currentDate = dt.format('EEEE'); // Convert DateTime variable to String of day of the week

        Map<String, String> dayToNumber = new Map<String, String>(); // Initialize Map
        dayToNumber.put('Monday', '1'); // Add key-value elements to map
        dayToNumber.put('Tuesday', '2');
        dayToNumber.put('Wednesday', '3');
        dayToNumber.put('Thursday', '4');
        dayToNumber.put('Friday', '5');
        dayToNumber.put('Saturday', '6');
        dayToNumber.put('Sunday', '7');

        return dayToNumber.get(currentDate); // Return the number of the day of the week for the given date
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
    public static Integer calculateYearDifference(Date d1, Date d2)
    {
        If (d1 == null || d2 == null) // Null check
        {
            return null;
        }
        
        return Math.abs(d2.year() - d1.year());
    }

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book
    {
        // Declare public instance variables - title, author, pages
        public String title;
        public String author;
        public Integer pages;
    
        // Book constructor to initialize the title and author. Don't initialize pages
        public Book(String title, String author)
        {
            this.title = title;
            this.author = author;
        }

        // Method that returns the details of the book
        public String getBookDetails()
        {
            return 'Title: ' + title + ', ' + 'Author: ' + author;
        }
    }
    

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails()
    {
        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book myBook = new Book('A Brief History of Time', 'Stephen Hawking');

        // Call the getBookDetails method on the book object to get the details of the book
        // Return the details of the book
        return myBook.getBookDetails();
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
    public static List<Book> generateBookList(Book myBook1)
    {
        // Create a list of Books
        List<Book> myBooks = new List<Book>();

        // Update the title and author of myBook1 using dot notation
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';

        // Update the pages for myBook1 to 352
        myBook1.pages = 352;

        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking');

        // Update the pages for A Brief History of Time to 256 since not in the contructor for Book class
        myBook2.pages = 256;

        // Add the books to the List of books
        myBooks.add(myBook1);
        myBooks.add(myBook2);

        return myBooks;  
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person
    {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        
        // Constructor to initialize the name and age
        public Person(String name, Integer age)
        {
            this.name = name;
            this.age = age;
        }
    
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
        public String introduceYourself()
        {
            return 'Hello, my name is ' + this.name + ' and I am ' + this.age + ' years old.';
        }

        // Getter method that returns the name of the person
        public String getName()
        {
            return this.name;
        }

        // Getter method that returns the age of the person
        public Integer getAge()
        {
            return this.age;
        }

        // Setter method that sets the name of the person
        public void setName(String name)
        {
            this.name = name;
        }

        // Setter method that sets the age of the person
        public void setAge(Integer age)
        {
            this.age = age;
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails()
    {
        List<String> tellMeAboutYourself = new List<String>(); // Initialize List

        // Create a new instance of Person class
        // Name the person 'John Doe' and set the age to 28
        Person newPerson = new Person('John Doe', 28);

        // Add the details of the person using the introduceYourself method
        tellMeAboutYourself.add(newPerson.introduceYourself());

        // Get the name of the person using the getter method and add it to the list
        tellMeAboutYourself.add(newPerson.getName());

        // Get the age of the person using the getter method and add it to the list
        tellMeAboutYourself.add(String.valueOf(newPerson.getAge()));

        return tellMeAboutYourself;
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age)
    {
        // Create a new instance of the Person class using the provided name and age
        return new Person(name, age);
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
    public static List<Person> createMultiplePersons(List<String> names, Integer age)
    {
        List<Person> personList = new List<Person>(); // Initialize list

        // Loop through each name in the provided list of names
        // Create a new Person object for each name
        // Add the new Person object to the list of Person objects
        for (String crowdedInHere : names)
        {
            Person newPerson = new Person(crowdedInHere, age);
            personList.add(newPerson);
        }

        // Return the list of Person objects
        return personList;
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
    public static Person getOlderPerson(Person person1, Person person2)
    {
        if (person1.getAge() > person2.getAge())
        {
            return person1;
        }
        else
        {
            return person2;
        }
    }
}