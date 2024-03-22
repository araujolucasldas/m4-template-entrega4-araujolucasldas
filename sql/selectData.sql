SELECT * FROM books;

SELECT * FROM books_categories WHERE "categoryId" = 3;

SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."createdAt" AS "bookCreatedAt",
books."updatedAt" AS "bookUpdatedAt",
categories."id" AS "categoryId",
categories."name" AS "categoryName",
categories."createdAt" AS "categoryCreatedAt",
categories."updatedAt" AS "categoryUpdatedAt"
FROM books 
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId";

SELECT authors."id" AS "authorId",
authors."name" AS "authorName",
authors."bio",
books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."createdAt",
books."updatedAt"
FROM authors 
JOIN books ON authors."id" = books."authorId";