// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/*
string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
*/

// #### QUESTION 1 ####

// String stringClass = 'Hello, Salesforce!';

// String stringLength = String.valueOf(stringClass.length());
// System.debug(stringLength);
// String stringSubstring = stringClass.substring(0, 5);
// System.debug(stringSubstring);
// String stringLower = stringClass.toLowerCase();
// System.debug(stringLower);

// List<String> stringList = new List<String>();
// stringList.add(String.valueOf(stringClass.length()));
// stringList.add(stringClass.substring(0, 5));
// stringList.add(stringClass.toLowerCase());
// System.debug(stringList);


// #### QUESTION 2 ####
/*
String stringContent = 'Salesforce is Awesome!';
        
Boolean startWithSales = stringContent.startsWith('Sales');
Boolean endstWithForce = stringContent.endsWith('Force');
Boolean containsAwesome = stringContent.contains('Awesome');

System.debug(startWithSales);
System.debug(endstWithForce);
System.debug(containsAwesome);
*/


// #### QUESTION 3 ####

String testString = 'Hello Hello Salesforce Salesforce';
List<String> stringList = testString.split(' ');
Set<String> stringSet = new Set<String>();
stringSet.addAll(stringList);
String.join(stringSet, ' ');

System.debug(stringList);
System.debug(stringSet);
System.debug(String.join(stringSet, ' '));


// #### QUESTION 4 ####

// String str = 'The quick brown fox jumps over the lazy dog';
// System.debug(str);

// String stringLower = str.toLowerCase();
// List<String> stringList = new List<String>(stringLower.split(''));
// Integer vowelCount = 0;
// System.debug(stringList);

// for (Integer i = 0; i < stringLower.length(); i++)
// {
//     if (stringList[i] == 'a'|| stringList[i] == 'e'|| stringList[i] == 'i'|| stringList[i] == 'o'|| stringList[i] == 'u')
//     {
//         vowelCount++;
//     }
// }

// for (Integer i = 0; i < stringLower.length(); i++)
// {
//     String letter = stringLower.substring(i, i + 1);
//     System.debug(letter);
//     if (letter == 'a'|| letter == 'e'|| letter == 'i'|| letter == 'o'|| letter == 'u')
//     {
//         vowelCount++;
//     }
// }

// System.debug(vowelCount);

// #### QUESTION 5 ####
/*
List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

List<String> gScientists = new List<String>();

for (String containsG : scientistNames)
{
    if (containsG.containsIgnoreCase('g') == true)
    {
        gScientists.add(containsG);
    }
}

String gString = String.join(gScientists, ',');

System.debug(gScientists);
System.debug(gString);
*/

// #### QUESTION 6 ####
/*
System.debug(Math.abs(Math.pow(3, 2) - Math.pow(4, 2)));
*/


// #### QUESTION 7 ####
/*
Integer randomNumber = Integer.valueOf(Math.random() * 100);

if ( randomNumber <=50 || randomNumber >= 100 )
{
    randomNumber = Integer.valueOf(Math.random() * 100);
    System.debug(randomNumber);
}

System.debug('The final number is: ' + randomNumber);
*/

// Integer randomNumber = Math.round(Math.random() * (100 - 50)) + 50;
// System.debug(randomNumber);

// #### QUESTION 8 ####
/*
Date todayDate = Date.today();
System.debug(todayDate.format());
*/


// #### QUESTION 9 ####
/*
DateTime currentDate = Date.today();
String currentDateString = currentDate.format('EEEE');

Map<String, Integer> dayToNumber = new Map<String, Integer>();
dayToNumber.put('Monday', 1);
dayToNumber.put('Tuesday', 2);
dayToNumber.put('Wednesday', 3);
dayToNumber.put('Thursday', 4);
dayToNumber.put('Friday', 5);
dayToNumber.put('Saturday', 6);
dayToNumber.put('Sunday', 7);


System.debug(dayToNumber);
System.debug(currentDateString);
System.debug(dayToNumber.get(currentDateString));
*/

// #### QUESTION 10 ####
/*
date myDate1 = date.newInstance(1988, 12, 17);
date myDate2 = date.newInstance(2024, 12, 17);

System.debug(Math.abs(myDate1.year() - myDate2.year()));
*/

// #### QUESTION 11 ####

// public class Book
// {
//     // Declare public instance variables - title, author, pages
//     Public String title;
//     Public String author;
//     Public Integer pages;

//     // Book constructor to initialize the title and author
//     public Book(String title, String author)
//     {
//         this.title = title;
//         this.author = author;
//     }

//     // Method that returns the details of the book
//     public String getBookDetails()
//     {
//         return 'Title: ' + title + ', ' + 'Author: ' + author;
//     }
// }


//     // Create a list of books
//     List<Book> myBooks = new List<Book>();

//     // Update the title and author of myBook1
//     Book harryPotter = new Book('Harry Potter and the Chamber of Secrets', 'J.K. Rowling');

//     System.debug(harryPotter);

//     // Update the pages for myBook1 to 352
//     harryPotter.pages = 352;
//     System.debug(harryPotter);

//     // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
//     Book briefHistory = new Book('A Brief History of Time', 'Stephen Hawking');
//     // Update the pages for A Brief History of Time to 256
//     briefHistory.pages = 256;
//     System.debug(briefHistory);

//     // Add the book to the list
//     myBooks.add(harryPotter);
//     myBooks.add(briefHistory);





// #### QUESTION 17 ####

// List<String> stringList = new List<String>();
// stringList.add('Hello');
// stringList.add('World');
// stringList.add('my');
// stringList.add('name');
// stringList.add('is');
// stringList.add('Brandon');
// System.debug(stringList);
// System.debug(stringList[1]);
// System.debug(stringList.size());

// List<String> newStringList = new List<String>();

// for (Integer i = 0; i < stringList.size(); i++)
// {
//     String newString = stringList[i];
//     newStringList.add(newString);
//     System.debug(newStringList);
// }

// System.debug(newStringList);









