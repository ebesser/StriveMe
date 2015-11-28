# **StriveMe**

(Please note, this project is not currently being maintained on <a href=’www.striveme.com’>StriveMe.com</a>)

StriveMe is a simple way to keep track of your accomplishments and wins through a quick email. After signing up, users are given a unique, encoded URL, which houses all of their notes:
 
 ![enter image description here](http://www.striveme.com/assets/product_screenshot-d7046a05b10d2780f5a7c0ad0ff9b257.png)

Users create new journal entries by sending an email to notes@striveme.com

**Problem**

Professionals work hard every day towards specific goals to better their companies and themselves but are incredibly bad at keeping track of their wins, accomplishments, and progress over the course of business quarters or a year.

**Solution**

StriveMe allows users to recognize, keep track of, and store their wins by sending quick emails to a StriveMe email address.

**Technologies**

 - Mandrill's API/Ruby Gem handles incoming emails that are turned into notes
 - Mailchimp was used to 
 - a .env file (using the dotenv-rails gem) is used to hide environment variables (email, Mandrill, and Mailchimp credentials)

**Tutorial**

[This tutorial by GoRails](https://gorails.com/episodes/sending-emails-with-mandrill?utm_content=buffer6d758&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer) was very useful in building this app, particularly setting up the recognition of send emails through SMTP.
