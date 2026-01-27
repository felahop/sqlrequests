INSERT INTO Genres(genre)
VALUES 
('Hip-Hop'),
('Pop'),
('Electronic'),
('Rock');

INSERT INTO Artists(name)
VALUES 
('Eminem'),
('The Weeknd'),
('Deadmau5'),
('Skrillex'),
('Daft Punk'),
('Inagine Dragons');

INSERT INTO GenreArtist(genre_id, artist_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 6),
(2, 6);

INSERT INTO Albums(name, release_year)
VALUES 
('The Marshall Mathers LP', 2000),
('After Hours', 2020),
('Random Album Title', 2008),
('Discovery', 2001),
('The Slim Shady LP', 1999),
('Origins', 2018);

INSERT INTO ArtistAlbum(artist_id, album_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(5, 4),
(1, 5),
(6, 6);

INSERT INTO Tracks(name, duration_seconds, album_id)
VALUES 
('Stan', 404, 1),
('The Real Slim Shady', 284, 1),
('Blinding Lights', 200, 2),
('Save Your Tears', 215, 2),
('Faxing Berlin', 277, 3),
('I Remember', 548, 3),
('One More Time', 320, 4),
('Harder Better Faster Stronger', 224, 4),
('Lose Yourself', 326, 1),
('Starboy', 230, 2),
('My Name Is', 258, 5),
('My Fault', 242, 5);

INSERT INTO Collections(name, release_year)
VALUES 
('Hip-Hop Classics', 2018),
('Electronic Legends', 2019),
('Pop Hits 2020', 2020),
('Rock Anthems', 2017),
('Best of 2000s', 2015);

INSERT INTO TrackCollection(track_id, collection_id)
VALUES 
(1, 1),
(1, 5),
(2, 1),
(3, 3),
(4, 3),
(5, 2),
(6, 2),
(7, 5),
(8, 5),
(9, 1),
(10, 3),
(11, 1);