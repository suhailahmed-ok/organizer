import requests


def check_website():
    response = requests.get("https://example.com")
    return response.status_code


print("dockerising done")
