class WelcomeMailer < ApplicationMailer

    def welcome_send(user)
        @user = user
        mail to: user.email, subject: "Welcome to The Good Plot", from: 'info@TheGoodPlot.com' 
    end
end
