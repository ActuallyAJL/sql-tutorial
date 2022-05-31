--Query all of the entries in the Genre table
select * from Genre;
select * from Album;
--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
select * from Artist order by ArtistName;
--Write a SELECT query that lists all the songs in the Song table and include the Artist name
select s.Title, a.ArtistName from Song s left join Artist a on s.ArtistId = a.id;
--Write a SELECT query that lists all the Artists that have a Soul Album

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album

--Write a SELECT statement that lists the Albums with no songs

--Using the INSERT statement, add one of your favorite artists to the Artist table.

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.

--Using the INSERT statement, add some songs that are on that album to the Song table.

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

--NOTE: Direction of join matters. Try the following statements and see the difference in results.

--SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword

--Using ORDER BY and TOP 1, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

--Using ORDER BY and TOP 1, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--Modify the previous query to also display the title of the album.