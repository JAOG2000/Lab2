CREATE TABLE video(
idVideo int PRIMARY KEY,
titulo varchar(100),
repro int,
url varchar(100)
)

CREATE PROCEDURE sp_video_insertar
	@idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
	INSERT INTO video 
	VALUES (@idVideo,@titulo,@repro,@url)
end

CREATE PROCEDURE sp_video_eliminar
	@idVideo int
as
begin
	DELETE FROM video WHERE @idVideo = idVideo
end

EXEC sp_video_insertar 1,'Video',1, 'x'
EXEC sp_video_eliminar 1
SELECT * from video
