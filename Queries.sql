--Query all of the entries in the Genre table
SELECT * FROM Genre;
SELECT * FROM Album;
SELECT * FROM Song;
--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
SELECT * FROM Artist ORDER BY ArtistName;
--Write a SELECT query that lists all the songs in the Song table and include the Artist name
--SELECT s.Title, a.ArtistName FROM Song s LEFT JOIN Artist a ON s.ArtistId = a.id;
--Write a SELECT query that lists all the Artists that have a Soul Album
/*SELECT DISTINCT 
	Artist.ArtistName , 
	Genre.Name 
FROM Album 
	LEFT JOIN Artist ON Album.ArtistId=Artist.Id 
	LEFT JOIN Genre ON Album.GenreId=Genre.Id 
WHERE Genre.Name='Soul';*/
--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
/*SELECT DISTINCT 
	Artist.ArtistName , 
	Genre.Name 
FROM Album 
	LEFT JOIN Artist ON Album.ArtistId=Artist.Id 
	LEFT JOIN Genre ON Album.GenreId=Genre.Id 
WHERE Genre.Name='Jazz' 
	OR Genre.Name='Rock';*/
--Write a SELECT statement that lists the Albums with no songs
/*SELECT DISTINCT
	Album.Title , 
	Song.Title 
FROM Album 
	LEFT JOIN Song ON Song.AlbumId=Album.Id 
WHERE Song.Title 
	IS NULL;*/
--Using the INSERT statement, add one of your favorite artists to the Artist table.
/*INSERT INTO 
	Artist (Artistname , YearEstablished) 
VALUES ('Queens of The Stone Age' , 1996);
--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO 
	Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
VALUES ('Era Vulgaris', '06/12/2007', 2753, 'Interscope Records', 28, 5);
--Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO 
	Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
VALUES ('Sick, Sick, Sick', 214, '5/08/2007', 5, 28, 23);
--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT Song.Title , Album.Title , Artist.ArtistName 
FROM Song 
	LEFT JOIN Album ON Song.AlbumId=Album.Id 
	LEFT JOIN Artist ON Album.ArtistId=Artist.Id 
WHERE Artist.ArtistName='Queens of The Stone Age';*/
--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*SELECT 
	Album.Title AS 'Album Title', 
	COUNT(Song.Id) AS 'SongCount' 
FROM Album 
	LEFT JOIN Song ON Song.AlbumId=Album.Id 
GROUP BY Album.Id , Album.Title;*/
--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*SELECT a.ArtistName , COUNT(s.Id) AS 'Number of Tracks'
FROM Artist a
LEFT JOIN Song s ON a.Id=s.ArtistId
GROUP BY a.Id , a.ArtistName;*/
--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/*SELECT a.ArtistName , COUNT(s.Id) AS 'Number of Tracks'
FROM Artist a
LEFT JOIN Song s ON a.Id=s.ArtistId
GROUP BY a.Id , a.ArtistName;*/
--Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
/*SELECT a.ArtistName , COUNT(DISTINCT al.Label) AS 'Number of Albums'
FROM Artist a
JOIN Album al ON al.ArtistId=a.Id
GROUP BY a.ArtistName
HAVING COUNT(DISTINCT al.Label) > 1;*/
--Using ORDER BY and TOP 1, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT TOP 1 *
FROM Album
ORDER BY AlbumLength DESC;
--Using ORDER BY and TOP 1, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--Modify the previous query to also display the title of the album.