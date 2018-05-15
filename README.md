# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Anthony Stark is admin
To sign in add password by running:

``` rails c ```

then:

``` admin = Admin.find(1)
admin.password = "avengersassemble"
admin.save ```

password will be stored as hash and will now be accepted on login
