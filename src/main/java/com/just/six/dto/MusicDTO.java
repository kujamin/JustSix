package com.just.six.dto;

public class MusicDTO {
    private Long id;
    private String title;
    private String album;
    private String artist;
    private int playtime;
    private String lyrics;
    private String genre;
    private String situation;
    private String feel;
    private String weather;
    private String popular;
    private String lyricstype;
    private String country;
    private String writer;
    private String albumpath;
    private String link;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public int getPlaytime() {
        return playtime;
    }

    public void setPlaytime(int playtime) {
        this.playtime = playtime;
    }

    public String getLyrics() {
        return lyrics;
    }

    public void setLyrics(String lyrics) {
        this.lyrics = lyrics;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getSituation() {
        return situation;
    }

    public void setSituation(String situation) {
        this.situation = situation;
    }

    public String getFeel() {
        return feel;
    }

    public void setFeel(String feel) {
        this.feel = feel;
    }

    public String getWeather() {
        return weather;
    }

    public void setWeather(String weather) {
        this.weather = weather;
    }

    public String getPopular() {
        return popular;
    }

    public void setPopular(String popular) {
        this.popular = popular;
    }

    public String getLyricstype() {
        return lyricstype;
    }

    public void setLyricstype(String lyricstype) {
        this.lyricstype = lyricstype;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getAlbumpath() {
        return albumpath;
    }

    public void setAlbumpath(String albumpath) {
        this.albumpath = albumpath;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "MusicDTO{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", album='" + album + '\'' +
                ", artist='" + artist + '\'' +
                ", playtime=" + playtime +
                ", lyrics='" + lyrics + '\'' +
                ", genre='" + genre + '\'' +
                ", situation='" + situation + '\'' +
                ", feel='" + feel + '\'' +
                ", weather='" + weather + '\'' +
                ", popular='" + popular + '\'' +
                ", lyricstype='" + lyricstype + '\'' +
                ", country='" + country + '\'' +
                ", writer='" + writer + '\'' +
                ", albumpath='" + albumpath + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
