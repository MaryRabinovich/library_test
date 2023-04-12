SELECT 
	public.books.title as book_title,
	STRING_AGG(CONCAT(
		public.authors.first_name, ' ',
		public.authors.patronim, ' ',
		public.authors.last_name
	), ', ') as authors
FROM public.books
LEFT JOIN public.authors_books ON public.books.id = public.authors_books.book_id
LEFT JOIN public.authors ON public.authors_books.author_id = public.authors.id
GROUP BY public.books.id;

-- one book by line, with all it's authors