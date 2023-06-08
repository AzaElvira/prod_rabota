



select album_name, album_release_year from albums
	where album_release_year >= '20180101' and album_release_year <= '20190101';

select track_name, track_duration from tracks
	order by track_duration desc
	limit 1;

select track_name, track_duration from tracks
	where track_duration >= '00:03:30';
	
select collection_title, collection_date from compilation_albums
	where collection_date >= '20180101' and collection_date <= '20201231';
	
select id_artist, artist_name from artist
	where artist_name not like '%% %%';
	
select track_name from tracks
	where track_name like '%%my%%';
	
select track_name from tracks
	where track_name like '%%My%%';
	
select track_name from tracks
	where track_name like '%%мой%%';

select genre_name, count(id_artist) from genres
join genr_2_artist on genres.id_genre = genr_2_artist.id_genre_ag
group by genre_name

select count(album_name) from tracks 
join albums on tracks.id_album_t = albums.id_album
where album_release_year >= '20190101' and album_release_year <= '20201231'

select album_name, avg(track_duration) from tracks
join albums on tracks.id_album_t = albums.id_album
group by album_name

select artist_name from artists 
join artist_2_album on artists.id_artist = artist_2_album.id_artist_aa 
join albums on albums.id_album = artist_2_album.id_album_aa 
where album_release_year not between '20200101' and '20201231' 
group by artist_name

select collection_title from compilation_albums
join compilation_tracks on compilation_tracks.id_collection_ct = compilation_albums.id_collection
join tracks on compilation_tracks.id_track_ct = tracks.id_track
join albums on tracks.id_album_t = albums.id_album
join artist_2_album on artist_2_album.id_album_aa = Albums.id_album
join artists on artist_2_album.id_artist_aa = artists.id_artist
where artist_name = 'Taylor Swift'
group by collection_title

select album_name, count(genre_name) from albums 
join artist_2_album on albums.id_album = artist_2_album.id_album_aa 
join artists on artist_2_album.id_artist_aa = artists.id_artist 
join genr_2_artist on artists.id_artist = genr_2_artist.id_artist_ag 
join genres on genres.id_genre = genr_2_artist.id_genre_ag 
group by album_name 
having count(genre_name) > 1

select track_name from tracks
left join compilation_tracks on tracks.id_track = compilation_tracks.id_track_ct
where id_collection_ct is null

select artist_name, track_duration from tracks
join albums on tracks.id_album_t = albums.id_album
join artist_2_album on artist_2_album.id_album_aa = albums.id_album
join artists on artist_2_album.id_artist_aa = artists.id_artist 
where track_duration = (select min(track_duration) from tracks)

select album_name, count(track_name) from tracks
join albums on tracks.id_album_t = albums.id_album
group by album_name

select distinct album_name from albums
left join tracks on tracks.id_album_t = albums.id_album
where tracks.id_album_t in (
    select id_album_t from tracks
    group by id_album_t
    having count(id_album_t) = (
         select count(id_track)
         from tracks
         group by id_album_t
         order by count
         limit 1
)
)




