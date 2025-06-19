# postapi.py

import requests
import json

# Endpoint for creating a book
url = "https://fakerestapi.azurewebsites.net/api/v1/Books"

# Example book data
book_data = {
    "id": 1001,
    "title": "New Book From Aman",
    "description": "A test book created via API",
    "pageCount": 150,
    "excerpt": "This is a brief excerpt from the book.",
    "publishDate": "2025-06-17T00:00:00Z"
}

headers = {"Content-Type": "application/json"}

try:
    response = requests.post(url, headers=headers, data=json.dumps(book_data))
    response.raise_for_status()
    created_book = response.json()
    print("Book created successfully:")
    print(json.dumps(created_book, indent=4))
except requests.exceptions.RequestException as e:
    print("Error creating book:", e)
