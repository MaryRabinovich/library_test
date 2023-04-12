INSERT INTO authors (first_name, patronim, last_name) VALUES
('Джоан', NULL, 'Роулинг'),
('Александр', 'Сергеевич', 'Пушкин'),
('Джанни', NULL, 'Родари'),
('Марк', NULL, 'Твен'),
('Илья', 'Арнольдович', 'Ильф'),
('Евгений', 'Петрович', 'Петров');

INSERT INTO genres (genre) VALUES
('фэнтези'),
('приключения'),
('поэзия'),
('рассказы и повести'),
('сатира'),
('роман');

INSERT INTO books (title) VALUES
('Гарри Поттер'),
('Евгений Онегин'),
('Повести Белкина'),
('Приключения Чипполино'),
('Приключения Тома Сойера'),
('12 стульев');

INSERT INTO users (first_name, patronim, last_name, phone, email) VALUES
('Василий', 'Петрович', 'Чапаев', 1234567788, 'vasily@mail.ru'),
('Надежда', 'Константиновна', 'Крупская', 1112223344, 'nadezhda@mail.ru'),
('Сэм', NULL, 'Смит', 1231231233, 'smith@shtaty.com');

-- ########################################################################

INSERT INTO authors_books (author_id, book_id) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 6);

INSERT INTO genres_books (genre_id, book_id) VALUES
(1, 1),
(2, 4),
(2, 5),
(3, 2),
(4, 3),
(5, 6),
(6, 1),
(6, 5),
(6, 6);

INSERT INTO users_books (user_id, book_id, start_at, to_return_in) VALUES
(1, 1, NOW(), MAKE_INTERVAL(weeks => 2)),
(1, 1, NOW(), MAKE_INTERVAL(weeks => 3));