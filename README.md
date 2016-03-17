# Assessment

This is an open-book **checkpoint** assessment focusing on building a simple Yellow Pages contact list ruby app using ActiveRecord with SQL database.

The intention of this assessment is to establish an awareness for your current understanding and how would you progress more effectively in the coming week. Once you're aware your points of improvement, you can spend more time during the weekend to improve. **There is no pass or fail cases so breath out.** Chillax. =)

Included is the ruby framework for the assessment, sourced and upgraded from NEXTAcademy "Ar-ToDo" skeleton.

# Purpose
The test is to ensure you are familiar with the basic of ActiveRecord working with the database like sqlite3 using Ruby. At the end of the assessment, you should be able to:

1) Understand ActiveRecord and How it Works

    1.1) Able to answer what ActiveRecord is
    1.2) Able to answer what ActiveRecord Model and Controllers
    1.3) Able to show how to use Model from ActiveRecord

2) Apply ActiveRecord and Sqlite3 into ruby application

    2.1) Able to show how to use and integrate sqlite3 with ActiveRecord
    2.2) Able to create and migrate a migration file
    2.3) Able to explore sqlite3 database through Ruby Model without using SQL statement.
    2.4) Able to create SQL database table through Ruby Model without using SQL statement.
    2.5) Able to CRUD data into SQL database through Ruby Model without using SQL statement.

3) Knows the critical points during application development.

> Critical points:
>
> Refers to naming (Capitalization, camel case etc), filename, classes, relation etc.

    3.1) Able to explain and show critical points for migration files
    3.2) Able to explain and show critical points for database table creation
    3.3) Able to explain and show critical points for model and database relation

4) Using ARGV

<br><br>

# Objectives
The main objective for this assessment is to achieve your contact list app exercise designated by your mentor. This supplied framework should give you a quick start for developing your ruby code.

> Note:
>
> You'll be exposed to GIT version control software.
>
> For the GIT related question, ALWAYS ask your mentor to help you out.
>
> **Do not waste time exploring during the assessment time.**


# App Requirements
You have the freedom to plan your datebase tables, code structures and testing.
However, by minimum it should acheive the following items:

<br>
## 1) User is able to do 'ruby app.rb --list'
This will list out all the contact details. Example:

```
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
$
```

<br><br>

## 2) User is able to do 'ruby app.rb --add <NAME> <PHONE> <ADDRESS>'
This will add a new user named <NAME> with the phone number <PHONE> and address
<ADDRESS> into the database. Example:

```
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY

$ ruby app.rb --add Kelvin +622152232 "52, White House, Washinton DC"
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$
```

<br><br>

## 3) User is able to do 'ruby app.rb --update <id> <NAME> <PHONE> <ADDRESS>'
This will update the user details with the id == <id>, such as <NAME>, <PHONE>
and <ADDRESS>. Should the user is not found, a friendly error should be raised.
Example: 

```
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --update 2 Holloway +12422352425 "22, Okland Street, 41750, NY"
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +12422352425    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --update 5
Hey, Something went wrong! I can't find that USER! Are you sure that is the
right ID?

$ 
```


<br><br>

## 4) User is able to do 'ruby app.rb --delete <id>'
This will delete the user with the <id> from the list. Should the user is
not found, a friendly error should be raised. Example:

```
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --delete 2
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --delete 3
Hey, Something went wrong! I can't find that USER! Are you sure that is the
right ID?

$
```

>**IMPORTANT NOTE**:
>
> Take note of the list number. It should be self-updated in an ascending
> order from (1-infinity). Hence, be careful with the id that you're using.
>

## 5) Optional: Integrate each users with his/her company and personal profile
This is a feature request after finishing all the steps above. Now, expand
your app to be able to hold additional details such as company and personal
profile.

<br>
You're allowed to design your own app commands, like

```
$ ruby app.rb add --user 1 --company "Stark Industries" --pokemon "Mew"
```

and upgrade your table from your existing app.

<br><br>

# Assessment Time
Maximum **5 hours**


# Preparation
1) Coordinate with your mentors for setting up your assessment.


2) Fork this repo out by clicking the "Fork" button on the top on the GitHub page. Ask help when needed.


3) Open a new terminal for your assessment.


4) Access to desktop.
```
$ cd ~/Desktop
```
<br />
5) Execute a cloning from your own repo.
```
$ git clone <your repo address>
```
<br />
6) Enter the repo.
```
$ cd <repo-name>
```
<br />
7) Begin your test
> Note:
>
> Remember to commit small and often. Some good references:
>
> ```$ git add <filename>```
>
> ```$ git commit -m "your commit messages```
>
> ```$ git push```
>
> Ask mentor if you're bound into git issue.
<br />

> **Important Note**:
>
> You should write your main functions inside "**app.rb**" file.
>
> Then, you can create Additional class object files and place them inside controllers/models/views depending on its nature.
>
> User will execute only "**ruby app.rb**" to run your app.


    7.1) Explore and try to understand the framework, observe the structure. (See Tips)
    7.2) Observe the demo codes and figure out how they require one another.
    7.3) Once done, begin your coding.

>**TIP**:
>
> There is one missing folder for database migration.
> Perhaps you can check out your past homework in regards of the missing folder.

<br />
8) Once done, perform your last "git push" to your repo.

9) Inform your mentor with the GitHub link.

10) Your mentor will download it from your GitHub and will perform the assessment for you.

# Good Luck
