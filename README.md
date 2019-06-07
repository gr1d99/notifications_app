# README

## Setup
1. Clone app
2. run `bundle install`
3. run `rake db:create`
4. open `application.rb` and update smtp_settings config
   ```ruby
   config.action_mailer.smtp_settings = {
     address:              'smtp.gmail.com',
     port:                 587,
     user_name:            '<username>',
     password:             '<password>',
     authentication:       'plain',
     enable_starttls_auto: true }
   ```
   Replace `<username>` with your Gmail account address
   
   Replace `<password>` with the password of the email you specified above.
5. Open `app/mailers/application_mailer.rb` and replace `'from@example.com'`with the email address you specified in **step 4**
6. Start server `rails s`
7. Send email notifications by making a post request to `http://localhost:3000/notifications`
   ```json
   {
   	  "notification": {
   	    "content": "hello world",
   		"recipients": ["your-email@gmail.com"]
   	  }
   }
   ```
