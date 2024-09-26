# **Project Report: Movie Database System (IMDb Clone)**

## **1. Introduction**
The **Movie Database System (IMDb Clone)** is a project designed to simulate a relational database system for storing movies, actors, and their relationships. This system allows users to efficiently store and retrieve data about movies, actors, genres, and reviews. It is modeled as a simplified version of IMDb, focusing on key entities and their relationships.

---

## **2. Project Objective**
The goal of this project is to design and implement a SQL-based database that:
1. Stores movie information such as name, genre, and reviews.
2. Stores actor details including actor names.
3. Establishes a many-to-many relationship between movies and actors.
4. Supports queries for retrieving related data from multiple tables.

---

## **3. Database Design**

### **3.1 Database Structure**
The project consists of three core tables:

1. **Movies**: Stores basic information about movies.
2. **Actors**: Stores actor information.
3. **Movie_Actors**: A junction table that links movies and actors along with the character names played by actors in the respective movies.

### **3.2 Table Structure**
1. **Movies Table**:
   - **movie_id**: Unique ID for each movie (Primary Key).
   - **m_name**: Name of the movie.
   - **genres**: Genre(s) of the movie.
   - **reviews**: Average review score for the movie (out of 10).

2. **Actors Table**:
   - **actor_id**: Unique ID for each actor (Primary Key).
   - **actor_name**: Name of the actor.

3. **Movie_Actors Table**:
   - **movie_id**: Foreign key linking to the Movies table.
   - **actor_id**: Foreign key linking to the Actors table.
   - **character_name**: The name of the character played by the actor in the movie.

### **3.3 Entity-Relationship Diagram (ERD)**
- **Movies** (1:N relationship with) **Movie_Actors**  
- **Actors** (1:N relationship with) **Movie_Actors**  
  This design reflects a many-to-many relationship between movies and actors.

---

## **4. SQL Implementation**

### **4.1 Database Creation**
The database `movie_db` is created to store all the related tables.


```sql
Create the movie_db database
CREATE DATABASE movie_db;
USE movie_db;
```
### **4.2 Table Creation**
Movies Table:
```sql

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    m_name VARCHAR(30),
    genres VARCHAR(30),
    reviews DECIMAL(3,1)
);
```
## **Actors Table:**
```sql

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(30)
);
```
## **Movie_Actors Junction Table**
```sql

CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    character_name VARCHAR(200),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);
```

## **5. Conclusion**
The Movie Database System successfully implements a relational database for movies and actors, focusing on efficient storage and relationships. The design and SQL code allow for easy querying of movie and actor information, and it serves as a strong foundation for further improvements or adding more features, such as user reviews and advanced search functionalities.
