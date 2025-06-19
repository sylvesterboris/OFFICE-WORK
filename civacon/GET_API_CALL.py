

import requests

# Endpoint for retrieving all books
url = "https://fakerestapi.azurewebsites.net/api/v1/Books"

try:
    response = requests.get(url)
    response.raise_for_status()  # Raises an error for bad responses (4xx or 5xx)
    books = response.json()

    print("List of Books:")
    for book in books[:5]:  # Limit output to first 5 books
        print(f"ID: {book['id']}, Title: {book['title']}")
except requests.exceptions.RequestException as e:
    print("Error fetching data:", e)
