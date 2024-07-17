from dotenv import load_dotenv
import os

load_dotenv()

token = os.getenv('token')

# Pra testar se o token foi carregado corretamente
print(token)


