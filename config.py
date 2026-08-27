import os

TOKEN = os.getenv("TOKEN")
API_KEY = ""
MAILSLURP_API_KEY = os.getenv("MAILSLURP_API_KEY")

print("TOKEN ustawiony:", bool(TOKEN))
print("TOKEN długość:", len(TOKEN or ""))

LastUsedEmail = ""
LastUserName = ""
LastRecoveryCode = ""
AUTHVALUE = ""
