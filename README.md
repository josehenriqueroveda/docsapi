# 🗂️ Document Management System

This is a Document Management System (DMS) built with Ruby on Rails 7.2. The system allows the management of documents, including their versioning, publishing details, and organizing them into specific shelves. Authors are also associated with documents for tracking purposes.

## Features

- **Authors:** Manage information about authors responsible for the documents.
- **Document Shelves:** Organize documents into shelves with limits on the number of documents they can contain.
- **Documents:** Create, read, update, and delete documents with versioning, publication dates, and statuses.

## Requirements

- Ruby 3.x
- Rails 7.2
- PostgreSQL with the `plpgsql` extension enabled

## Database Schema

The system consists of the following tables:

### Authors

Stores information about the authors of the documents.

| Column      | Type      | Description                           |
|-------------|-----------|---------------------------------------|
| name        | string    | The name of the author                |
| department  | string    | The department the author belongs to  |
| created_at  | datetime  | Timestamp when the author was created |
| updated_at  | datetime  | Timestamp when the author was updated |

### Document Shelves

Holds data about document shelves which can have a limited number of documents.

| Column      | Type      | Description                                    |
|-------------|-----------|------------------------------------------------|
| key_area    | string    | The key area or category of the shelf           |
| limit       | integer   | The maximum number of documents allowed on the shelf |
| created_at  | datetime  | Timestamp when the shelf was created            |
| updated_at  | datetime  | Timestamp when the shelf was updated            |

### Documents

Contains all the documents with associations to `Authors` and `Document Shelves`.

| Column        | Type      | Description                                      |
|---------------|-----------|--------------------------------------------------|
| title         | string    | The title of the document                        |
| version       | string    | The version of the document                      |
| info          | string    | Additional information about the document        |
| published_at  | date      | The publication date of the document             |
| status        | string    | The status of the document (e.g., active, draft) |
| doc_shelf_id  | bigint    | Foreign key linking to the Document Shelf        |
| author_id     | bigint    | Foreign key linking to the Author                |
| url           | string    | URL to the document or resource                  |
| created_at    | datetime  | Timestamp when the document was created          |
| updated_at    | datetime  | Timestamp when the document was updated          |

#### Indexes

- `index_documents_on_author_id`: Ensures quick lookup by author.
- `index_documents_on_doc_shelf_id`: Ensures quick lookup by document shelf.

#### Foreign Keys

- `documents.author_id`: Links each document to an author.
- `documents.doc_shelf_id`: Links each document to a document shelf.

## Setup Instructions

1. Clone the repository:

    ```bash
    git clone <repository-url>
    cd <project-directory>
    ```

2. Install the required gems:

    ```bash
    bundle install
    ```

3. Setup the database:

    ```bash
    rails db:create db:migrate
    ```

4. Start the Rails server:

    ```bash
    rails server
    ```

5. Access the application at:

    ```
    http://localhost:3000
    ```

## API Documentation

To view the available API routes, run:

```bash
rails routes
```

For a more detailed API documentation, consider adding `rswag` to generate Swagger-like documentation.