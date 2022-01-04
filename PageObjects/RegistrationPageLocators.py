# Locators for registration page
import string
import random

txt_firstName="id:input-firstname"
txt_lastName="id:input-lastname"
txt_email="id:input-email"
txt_phone="id:input-telephone"
txt_password="id:input-password"
txtPassword_confirm="id:input-confirm"
#radio_Subscribe_yes="xpath://input[@type='radio' and @value=1]"
#radio_Subscribe_no="xpath://input[@type='radio' and @value=0]"
chkbox_privacy = "xpath://input[@type='checkbox'  and @name='agree']"
btn_continue= "xpath://input[@type='submit'  and @value='Continue']"
link_logout ="xpath://li//a[text()='Logout']"
link_MyAccount="xpath://span[text()='My Account']"

# To generate random unique email for signup
def random_email(n):
    letters = string.ascii_lowercase
    choose = letters + str("0123456789_")
    email=  random.choice(letters)
    for i in range(n):
        email = email + random.choice(choose)

    email=email+"@gmail.com"
    return email

emailid= random_email(8)

