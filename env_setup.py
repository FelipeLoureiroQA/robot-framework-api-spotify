# from dotenv import load_dotenv
# import os

# load_dotenv()

# BEARER_TOKEN = os.getenv('BEARER_TOKEN')

# def bearer():
#     BEARER_TOKEN = BEARER_TOKEN.connect(
#     BEARER_TOKEN="BEARER_TOKEN"
# )
#     return BEARER_TOKEN

from dotenv import load_dotenv
import os

# Pra testar
var = os.getenv('token')
print(var)

def load_environment_variables():
    load_dotenv()
    for key, value in os.environ.items():
        if key.startswith('token'):
            print(f'{key}={value}')

if __name__ == '__main__':
    load_environment_variables()



