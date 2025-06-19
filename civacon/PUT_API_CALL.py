# putapi.py

import requests   
import json

# API endpoint to update a book
book_id = 1  # You can change this to an existing book ID
url = f"https://fakerestapi.azurewebsites.net/api/v1/Books/{book_id}"

# Updated book data
updated_book = {
    "id": book_id,
    "title": "Updated Book Title",
    "description": "Updated description for the book.",
    "pageCount": 250,
    "excerpt": "Updated excerpt goes here.",
    "publishDate": "2025-06-17T00:00:00Z"
}

headers = {"Content-Type": "application/json"}

try:
    response = requests.put(url, headers=headers, data=json.dumps(updated_book))
    response.raise_for_status()
    updated_response = response.json()
    print("Book updated successfully:")
    print(json.dumps(updated_response, indent=4))
except requests.exceptions.RequestException as e:
    print("Error updating book:", e)
