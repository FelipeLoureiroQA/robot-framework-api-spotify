from dotenv import load_dotenv
import os

def load_env_vars():
    load_dotenv()

    env_vars = {
        'BEARER_TOKEN': os.environ('BEARER_TOKEN'),
    }

    return env_vars

if __name__ == "__main__":
    load_env_vars()
