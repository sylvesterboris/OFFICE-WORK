# auth_post.py

import requests
import json

# Step 1: Authenticate and get token
auth_url = "https://fakerestapi.azurewebsites.net/api/v1/Users/authenticate"
credentials = {
    "userName": "string",  # Use actual username if available
    "password": "string"  # Use actual password if available
}

try:
    auth_response = requests.post(auth_url, json=credentials)
    auth_response.raise_for_status()
    token = auth_response.json().get("token")

    if not token:
        raise Exception("Authentication failed. No token received.")

    print("Authenticated successfully. Token received.")

    # Step 2: Create a new book using the token
    book_url = "https://fakerestapi.azurewebsites.net/api/v1/Books"
    headers = {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json"
    }

    new_book = {
        "id": 2000,
        "title": "Secure Book Upload",
        "description": "Book created using authenticated POST",
        "pageCount": 321,
        "excerpt": "An excerpt after login.",
        "publishDate": "2025-06-17T00:00:00Z"
    }

    book_response = requests.post(book_url, headers=headers, data=json.dumps(new_book))
    book_response.raise_for_status()
    print("Book posted successfully:")
    print(json.dumps(book_response.json(), indent=4))

except requests.exceptions.RequestException as e:
    print("Error during request:", e)
except Exception as e:
    print("General error:", e)
