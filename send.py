from twilio.rest import Client
import geocoder
# You had to sign up with a twilio account in order to use the api...
#In your code. So that's what we did in line 6-7. This is our trial account
account_sid = "ACae9e65dcf624aa2b5d6497fb4285d76d"
auth_token  = "6bb331a6ed94fa73d5de624161841d9a"
g = geocoder.ip('me')
#User name is taken in the begining of the app setup and saved forever.
#We would then deploy it into the actual message
#same for picture
userName= input("Enter user full name")
counter=0

#Uses identification and token defined in 6-7 as parameters for the client
client = Client(account_sid, auth_token)
numbers_to_message = ['+12404212456', '+12407311090', '+12014969100']
for number in numbers_to_message:
    sos = client.messages.create(
        media_url=['https://pbs.twimg.com/media/A7nSGtLCUAAq6iz.jpg'], 
        from_="+12056712546",
        to= number,
        body= ("YOU ARE AT RISK OF BEING GENTRIFIED!!!!"),
    )

print(sos.sid)
while counter<=30:
 counter+=1
 if counter>25:
    g = geocoder.ip('me')
    print(sos.sid)


