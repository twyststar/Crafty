# _Crafty_

#### _Mock Craft Buying and Selling Website, 7.7.2017_

#### By _**Starlynne Start**_

## Description

_This page is designed as marketplace where guests can see products, members can comment on products, sellers have CRUD for their own products, and administrators have CRUD for everything. Assignment goals were to implement user authentication, authorization, to only show certain views dependent upon auth status, file storage with ActiveRecord and Paperclip, and to allow CRUD functionality to authorized users. Epicodus solo project in Rails Authentication._

## Setup/Installation Requirements
_You will need Ruby/Rails and postgres to run this app locally._

* _Clone this repository_
* _Run command 'bundle install'_
* _Use command t to open a second terminal window, in that window run the command 'psql'_
* _Back in the original window, run command 'rake db:create db:migrate'_
* _Run command 'rails serve'_
* _Open your web browser and type in 'localhost:3200'_

### Test Users/Admin Dashboard

_On migration, 3 test users will be created to show the various levels of access._

    * _test@test.com , an Admin_
    * _usertest@test.com, a standard user_
    * _sellertest@test.com, a seller

_all three passwords are 'password'_

_To access the Admin Dashboard:_
  * _log in as admin_
  * _visit your profile page_
  * _follow link for Admin Dashboard_

## Known Bugs

_None_

## Support and contact details

_Comment, concerns or suggestions welcome! lewis.start0905@gmail.com_

## Technologies Used

_HTML/CSS, Bootstrap, Ruby/Rails, ActiveRecord, Paperclip, Devise_

### License

*MIT*

Copyright (c) 2017 **_S.Start and E.Baharie_**
