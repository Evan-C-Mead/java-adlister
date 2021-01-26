# JDBC

## Classes / Objects

- `DriverManager`: a class that manages the class we use to connect to the
  database
- `Connection`: an instance of this class represents a connection to MySQL
- `Statement`: an object created from the connection object, represents a
  single SQL query (i.e. statement)
- `ResultSet`: a representation of query results
- `SQLException`: indicates an error occurred while talking to the database
  (connection, or SQL syntax error)

## How to Use It

1. Connect to the database; obtain a connection object

    - register a driver (`DriverManager.registerDriver`)
    - `DriverManager.getConnection` and pass along credentials
    - happens once (constructor or factory)

2. Create a statement object

    - `connection.createStatement()`

3. Execute the statement with our sql based on it's type

    - `.execute` for `CREATE ...` or `DELETE`
    - `.executeUpdate` for `INSERT`, `UPDATE` statements, use
      `Statement.RETURN_GENERATED_KEYS` to obtain generated ids
    - `.executeQuery` for `SELECTS`

4. Work with the results of the query; the result set object

    - `.next` method to move through the results

## Database Credentials

It's not a good idea to have usernames and passwords in our code base, so we'll
create a class that is not tracked w/ version control to handle this, `Config`.
It has only properties and getters for a url, username, and password.

# JDBC Lesson Notes
[JDBC Handout]https://github.com/gocodeup/handouts/blob/master/content/java-iii/jdbc.md

### This Lesson is split up into two parts.

1. Introduce new syntax
  - Build out Album example with JDBCLecture Class
  - Make sure Database and Tables are migrated
  - Make sure MySQL dependency is in pom.xml
  - Connect to SQL using IntelliJ

2. Implement new syntax with full MVC example
  - Build out Contacts example with full MVC
  - Make sure contacts_db is created and migrate table
  - Create Contact.java Bean
  - Create Contacts interface
  - ContactListDao (Contacts implementation) w/o connection
    - Contacts are added manually in Constructor
  - Refactor DaoFactory to use ContactListDao
    - Test ContactListDao and test the application
    - Add ContactIndexServlet, ContactViewServlet
  - Create MySQLContactsDao w/Connection (contacts are added with seeder file)
  - Add Config class inside Dao directory to protect configurations