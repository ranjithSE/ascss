# Documentation repo

Find the documentations and/or submissions [here](https://github.com/tamu-asc/documentations)

# Code related information

## System Requirements

* Ruby version: 2.6.1

* Rails version: 5.2.2

* Configuration: Please copy the master.key file shared to you in the config folder

To run the application on heroku, we need an environment variable in the heroku application which is the secret key used for the encryption. That file should never be checked in into the github.
The command to do that is 
```bash
heroku config:set RAILS_MASTER_KEY=`cat config/master.key`
```


# Rails model generation commands
```bash
rails g model User username:uniq password:digest
```
 
```bash
rails g migration AddNewFieldsToUsers role:integer email:uniq first_name:string last_name:string
```

```bash
bin/rails g model Course title:string semester:integer year:integer credits:integer code:string
```

```bash
bin/rails g model Section title:string course:references
```
 
```bash
bin/rails g model CourseStudent username:string user:references course:references
```

```bash
bin/rails g model CourseInstructor username:string user:references course:references
```

```bash
bin/rails g model Session name:string course_instructor:references start_time:datetime end_time:datetime address:text description:text
```

```bash
bin/rails g model SessionAttendance session:references course_student:references in_time:datetime
```

