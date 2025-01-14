


# Learn PostgreSQL - second edition

<a href="https://www.packtpub.com/product/learn-postgresql/9781838985288"><img src="https://static.packt-cdn.com/products/9781838985288/cover/smaller" alt="Learn PostgreSQL - second edition" height="256px" align="right"></a>



**Build and manage high-performance database solutions using PostgreSQL 16**

## What is this book about?

PostgreSQL is one of the fastest-growing open source object-relational Database Management Systems (DBMS) in the world. PostgreSQL provides enterprise level features, it’s scalable, secure and highly efficient, as well as easy to use and with a very rich ecosystem that include application drivers and tools.
In this book, you will explore PostgreSQL 16, the latest stable release, learning how to build secure, reliable and scalable database solutions using it.
Complete with hands-on tutorials and examples, a set of Docker images to follow step-by-step every example, this book will teach you how to achieve the right database design required for a reliable environment.

You will learn how to install, configure and manage a PostgreSQL server, managing users and connections and inspecting the server activity to seek for performance optimization needs. Thanks to a per-chapter summary and set of questions and answers, you will be able to check your acquired knowledge.

The book starts introducing the main concepts around PostgreSQL and how to install and connect to the database, and then progresses to the management of users, permissions and basic objects like tables. You will be taught about the Data Definition Language (DDL) and most common and useful statements and commands, as well as all the needed and common relational database concepts like foreign keys, trigger, functions and so on. Later, you will explore how to configure and tune your cluster to get the best out of your PostgreSQL service, how to create and manage indexes to fast data retrieval, and how to make and restore backup copies of your data. Last, you will learn how to create your own high availability solution by means of replications, either physical or logical, and you will get a glance at some of the most common and useful tools and extension you can apply to your cluster.
By the end of this book, you'll be well-versed in the Postgres database and be able to set up your own PostgreSQL instance and use it to build robust data-centric solutions.

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/183898528X) today!



## Book Outline

This book is for anyone interested in learning about the PostgreSQL database from scratch or anyone looking to build robust, scalable and highly available database applications. All the newest and coolest features of PostgreSQL will be presented, along with all the concepts a database administrator or an application developer need to get the best out of a PostgreSQL instance. Although prior knowledge of PostgreSQL is not required, familiarity with databases and the SQL language is expected.



The book is divided into five main parts. The following is a list of the book chapters.

### Part 1

1) Introduction to PostgreSQL
2) Getting to know your cluster
3) Managing Users and Connections

### Part 2

4) Basic Statements
5) Advanced Statements
6) Window Functions
7) Server Side Programming
8) Triggers and Rules
9) Partitioning

### Part 3

10)	Users, Roles and Database Security
11)	Transactions, MVCC, WALs and Checkpoints
12)	Extending the database - the Extension Ecosystem
13)	Query tuning, Indexes and Performance Optimization
14)	Logging and Auditing
15)	Backup and Restore
16)	Configuration and Monitoring

### Part 4

17) Physical Replication
18) Logical Replication

### Part 5

19) Useful Tools and Useful Extensions




## Chapters Content

Every chapter will have the following main structure:
- a *What you will learn* section that summarizes what the reader will learn thru the chapter;
- a *What you need to know* section  that reminds the user basic knowledge **required** to fully understand the contents of the chapter;
- an *Abstract* that introduces the chapter content at glance;
- a *Conclusions* section that provides a summary of the chapter and focus on the main concepts;
- a *References* section with links to documentation, articles and external resources;
- a *Verify Your Knowledge* section made by five questions and short answers to allow the reader to test her acquired knowledge.



## Docker images

This repository contains also a set of Docker images that are already configured and ready to run, so that readers can follow examples directly *without any need to install PostgreSQL directly on their machine*. In order to run the images, you need to have installed Docker and you must have enough privileges to run it with port forwarding enabled.

Within the folder `docker-images` there are folders specific to pretty much every chapter that contain the image(s) to run for the related chapter.
The special folder `standalone` contains the base Docker machine that can be used as starting point or when no specific per-chapter container is provided (tipycally for the Part 1 of the book).

In order to ease the execution of every container, a shell script named `run-pg-docker.sh` has been built, so that you can run such script passing as argument the name of the per-chapter Docker folder. As an example, in order to launch the Docker container related to *Chapter 5* you have to:

```shell
$ cd docker-images
$ sh run-pg-docker.sh chapter_05
```

The script will start the Docker container, downloading and installing required software within the container, and providing you to a shell prompt within the container. from such a prompt, you will be able to execute shell commands and connect to the database as explained in the book.


## Code Examples

All the code examples are contained in this repository.

### Naming conventions used in this repository

Every chapter has its own folder named after the chapter number, for instance `Chapter01` for the very first chapter.

In order to ease the execution of the code examples by readers, every chapter will have a set of source scripts that the reader can immediatly load into her database.

Every file is named after the its type, for example `.sql` for an SQL script or a collection of SQL statements.


### Pictures

Any picture will be named with the pattern `Chapter<CC>_picture<PP>.<type>` where:
- `CC` is the chapter number;
- `PP` is the picture number as listed within the chapter;
- `type` is a suffix related to the picture file type (e.g., `png` for a Portable Network Graphic image).

*Images could appear differently from the printed book due to graphical needs*.

[We also provide a PDF file](https://static.packt-cdn.com/downloads/9781838985288_ColorImages.pdf)
that has color images of the screenshots/diagrams used in this book.


### Command prompts

In the book code listings and examples, the command prompts are one of the two that follows:
- a `$` stands for an Unix shell prompt (like Bourne, Bash, Zsh);
- a `forumdb=>` stands for the `psql(1)` command prompt when an active connection to the database is opened.

As an example, the following is a command issued on the operating system:

```shell
$ sudo service postgresql restart
```

while the following is a query issued within an active database connection:

```sql
forumdb=> SELECT CURRENT_TIMESTAMP;
```

### Administrative/Superusers command prompts

Whenere there is the need to execute a command or a statement with administrative privileges, the command prompt will reflect it using a `#` sign as the end part of the command prompt. For example, the following is an SQL statement issued as PostgreSQL administrator:

```sql
forumdb=# SELECT pg_terminate_backend( 987 );
```

ùPlease note the presence of the `#` in the `forumdb=#` prompt, as opposed to the `>` sign in the normal user `forumdb=>` prompt.

In the case a command on the operating system must be run with superuser (`root`) privileges, the command will be run via `sudo(1)`, as in:

```sql
$ sudo initdb -D /postgres/data/16
```

and therefore in this case the command prompt will not change, rather the presence of the `sudo(1)` command indicates `root` privileges are required.

## Creating the example database

The book is built over an example database that implements an *online forum* storage. In order to be able to execute any example of any chapter, the reader has to initialize the forum database.

The scripts in the folder `setup`, executed in lexicographically order, implement the example database and setup the environment so that other examples can be run against the database.

In particular, in order to get the database structure as shown in Chapter 4 and the followings, you have to executed something has follows:

```shell
psql -U <your-username> -h <database-host> < setup/00-forum-database.sql
```

where
- `your-username` is a PostgreSQL username of choice;
- `database-host` is the host the database is running on, if different from `localhost`.

The end result will be to have the `forumdb` created and populated with tables.
You can also invoke the script interactively from within a `psql` connection, such as:

```shell
psql -U <your-username> -h <database-host> template1

template1=> \i setup/-00-forum-database.sql
```

The simplest form to get the example database up and running is the following one (assuming you are running PostgreSQL locally):

```shell
$ psql -U postgres   template1 -c 'CREATE ROLE forumdb_user WITH LOGIN CREATEDB;'
$ psql -U forum_user template1 < setup/00-forum-database.sql
```



### Related products
- PostgreSQL 11 Server Side Programming - Quick Start Guide [[Packt]](https://www.packtpub.com/product/postgresql-11-server-side-programming-quick-start-guide/9781789342222) [[Amazon]](https://www.amazon.com/PostgreSQL-Server-Programming-Quick-Start-ebook/dp/B07L1MP1F8/ref=sr_1_1?crid=2I7PGMZDCI9O0&dchild=1&keywords=postgresql+11+server+side+programming+quick+start+guide&qid=1605375687&sprefix=postgresql+11+server+%2Caps%2C278&sr=8-1)
- Mastering PostgreSQL 12 [[Packt]](https://www.packtpub.com/product/mastering-postgresql-12-third-edition/9781838988821) [[Amazon]](https://www.amazon.com/dp/1838988823)
- PostgreSQL 12 High Availability Cookbook - Third Edition [[Packt]](https://www.packtpub.com/product/postgresql-12-high-availability-cookbook-third-edition/9781838984854) [[Amazon]](https://www.amazon.com/dp/1838984852)



## Get to Know the Authors
**Luca Ferrari**
has been passionate about computer science since the Commodore 64 era, and today holds a master's degree (with honors) and a Ph.D. from the University of Modena and Reggio Emilia. He has written several research papers, technical articles, and book chapters. In 2011, he was named an Adjunct Professor by Nipissing University. An avid Unix user, he is a strong advocate of open source, and in his free time, he collaborates with a few projects. He met PostgreSQL back in release 7.3 days; he was a founder and former president of the Italian PostgreSQL Users’ Group (ITPUG). He also talks regularly at technical conferences and events and delivers professional training.


**Enrico Pirozzi**
has been passionate about computer science since he was a 13-year-old, his first computer was a Commodore 64, and today he holds a master's degree from the University of Bologna. He has participated as a speaker at national and international conferences on PostgreSQL. He met PostgreSQL back in release 7.2, he was a co-founder of the first PostgreSQL Italian mailing list and the first Italian PostgreSQL website, and he talks regularly at technical conferences and events and delivers professional training. Right now, he is employed as a PostgreSQL database administrator at Zucchetti Hospitality (Zucchetti Group S.p.a).



### Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSdy7dATC6QmEL81FIUuymZ0Wy9vH1jHkvpY57OiMeKGqib_Ow/viewform) if you have any feedback or suggestions.



### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781838985288">https://packt.link/free-ebook/9781838985288 </a> </p>
