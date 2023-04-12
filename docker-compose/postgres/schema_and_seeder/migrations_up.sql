CREATE TABLE IF NOT EXISTS authors (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    patronim TEXT,
    last_name TEXT NOT NULL
    -- foreign names can have another structure
);

CREATE TABLE IF NOT EXISTS books (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genres (
    id SERIAL PRIMARY KEY,
    genre TEXT NOT NULL,
    UNIQUE (genre)
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    patronim TEXT, 
    last_name TEXT NOT NULL,
    phone INTEGER NOT NULL,
    email TEXT NOT NULL
);

-- #############################################

CREATE TABLE IF NOT EXISTS authors_books (
    id SERIAL PRIMARY KEY,
    author_id INTEGER REFERENCES authors (id),
    book_id INTEGER REFERENCES books (id)
);

CREATE TABLE IF NOT EXISTS genres_books (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES genres (id),
    book_id INTEGER REFERENCES books (id)
);

CREATE TABLE IF NOT EXISTS users_books (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users (id),
    book_id INTEGER REFERENCES books (id),
    start_at TIMESTAMP,
    to_return_in INTERVAL
);