import 'package:flutter/material.dart';

const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Snowman',
    artist: 'WYS',
    album: 'Study Session',
    duration: '3:15',
  ),
  Song(
    id: '1',
    title: 'Distraction',
    artist: 'less.people',
    album: 'It\'s Over',
    duration: '2:18',
  ),
  Song(
    id: '2',
    title: 'Far Away',
    artist: 'Mila Coolness',
    album: 'Silent River',
    duration: '2:39',
  ),
  Song(
    id: '3',
    title: 'Call You Soon',
    artist: 'Louk, Glimlip',
    album: ' We Talk',
    duration: '2:35',
  ),
  Song(
    id: '4',
    title: 'Winter Sun',
    artist: 'Bcalm',
    album: 'Feelings',
    duration: '2:15',
  ),
  Song(
    id: '5',
    title: 'Hope',
    artist: 'No Spirit',
    album: 'Memories',
    duration: '1:57',
  ),
  Song(
    id: '6',
    title: 'A Better Place',
    artist: 'Project AER',
    album: 'Patterns',
    duration: '2:00',
  ),
  Song(
    id: '7',
    title: 'Misty Dawn',
    artist: 'BluntOne',
    album: 'Budapest',
    duration: '2:34',
  ),
  Song(
    id: '8',
    title: 'Hourglass',
    artist: 'Thaehan',
    album: 'Hourglass',
    duration: '1:43',
  ),
  Song(
    id: '9',
    title: 'After Sunset',
    artist: 'Project AER',
    album: 'Study Session',
    duration: '2:41',
  ),
  Song(
    id: '10',
    title: 'Child',
    artist: 'Ambulo',
    album: 'Polar',
    duration: '2:12',
  ),
  Song(
    id: '11',
    title: 'Arizona Zero',
    artist: ' Medicine',
    album: 'Evermore',
    duration: '2:31',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'lofi hip hop music - beats to relax/study to',
  imageURL: 'assets/lofigirl.jpg',
  description:
      'A daily selection of chill beats - perfect to help you relax & study 📚',
  creator: 'Lofi Girl',
  duration: '28 min',
  followers: '5,351,685',
  songs: lofihiphopMusic,
);
const homeScreenReccomendationImages = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6HXb9d2ZERFJ-uaswc1uaAYbhROB53U8TJQ&usqp=CAUL',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGDu4fPNjsgrxVqB36C-S1drFJQjCPbO7n2Q&usqp=CAU',
  'https://www.onmanorama.com/content/dam/mm/en/entertainment/entertainment-news/images/2018/10/9/manjari.jpg.transform/576x300/image.jpg',
  'https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-aplu0amnpvbj2lhmnae4ola523-20191104235656.jpeg',
  'https://articles.talentsofworld.com/wp-content/uploads/2022/08/6adcce88697f6403e30893d1b8d17373.jpg',
];
const searchSuggestionTileTitle = [
  'Podcasts',
  'Live Events',
  'Made For You',
  'New releases',
  'Hindi',
  'Punjabi',
  'Tamil',
  'Telugu',
  'Charts',
  'Pop',
  'Trending',
  'Love',
  "Discover",
  'Radio',
  'Mood',
  'Hip-Hop',
];
const madeForYouTitle = [
  'Daily Mix 1',
  'Daily Mix 2',
  'Daily Mix 3',
  'Daily Mix 4',
  'Daily Mix 5',
];

const madeForYouImages = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9QgsItwYwzeESajmJM1r2XKMIa8PykgHKlg&usqp=CAU',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://www.shutterstock.com/image-vector/retro-wave-music-album-cover-260nw-1747504967.jpg',
  'https://mir-s3-cdn-cf.behance.net/project_modules/fs/0ec5c569226647.5b79b483096c1.jpg',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',
];
const recentListening = [
  'https://a10.gaanacdn.com/gn_img/song/z8k3yd1Krx/k3y4gl50Kr/size_m_1658037089.webp',
  'https://play-lh.googleusercontent.com/HcGZg7cCppHTcto0K7X3aVZAewWipB6bmEf5wcdAyg4jfY47ETtDbdE0cKwS78-RH7tf',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYm3BctVRSLHElH_Jj7sKAG-CDrEu89AJOLw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRScEC5sHvZhkBueSX20C0Cb600KSjBnZbEA&usqp=CAU',
  'https://cdns-images.dzcdn.net/images/cover/8139fc6191e8f102e693c83f35093b59/264x264.jpg',
];
const recentlyPlayed = [
  'https://cdns-images.dzcdn.net/images/cover/8139fc6191e8f102e693c83f35093b59/264x264.jpg',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://media.ipassio.com/media/blog/10-easy-bollywood-hindi-songs-to-sing-for-beginners/blog_icon/easy-hindi-songs-to-sing-for-beginners.webp',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRScEC5sHvZhkBueSX20C0Cb600KSjBnZbEA&usqp=CAU',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
];
const IndiaBest = [
  'https://cdns-images.dzcdn.net/images/artist/d9cb8cec7abe361b969590d8bd74b0a5/500x500.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Y4YoODQoTH8DkL0-8Lgb_0B58j1EloS-wA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRniG7Z9_NHPQQayesHJ_8HWlMXhKPkYvTVPA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYm3BctVRSLHElH_Jj7sKAG-CDrEu89AJOLw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqtna251hzd0noFca1MTPqyI1Ohw1LY4X8sA&usqp=CAU',
];
const yourTopMixes = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRniG7Z9_NHPQQayesHJ_8HWlMXhKPkYvTVPA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRScEC5sHvZhkBueSX20C0Cb600KSjBnZbEA&usqp=CAU',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRScEC5sHvZhkBueSX20C0Cb600KSjBnZbEA&usqp=CAU',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',
];
const bestOfArtist=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYm3BctVRSLHElH_Jj7sKAG-CDrEu89AJOLw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqtna251hzd0noFca1MTPqyI1Ohw1LY4X8sA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9QgsItwYwzeESajmJM1r2XKMIa8PykgHKlg&usqp=CAU',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://cdns-images.dzcdn.net/images/artist/d9cb8cec7abe361b969590d8bd74b0a5/500x500.jpg',

];
const whatYouLike=[
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://cdns-images.dzcdn.net/images/artist/d9cb8cec7abe361b969590d8bd74b0a5/500x500.jpg',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
  'https://mir-s3-cdn-cf.behance.net/project_modules/fs/0ec5c569226647.5b79b483096c1.jpg',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',

];
const recommendToday=[
  'https://media.ipassio.com/media/blog/10-easy-bollywood-hindi-songs-to-sing-for-beginners/blog_icon/easy-hindi-songs-to-sing-for-beginners.webp',
  'https://mir-s3-cdn-cf.behance.net/project_modules/fs/0ec5c569226647.5b79b483096c1.jpg',
  'https://plus.unsplash.com/premium_photo-1677589330352-509c3d18f3a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWMlMjBhbGJ1bXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9QgsItwYwzeESajmJM1r2XKMIa8PykgHKlg&usqp=CAU',
  'https://archive.smashing.media/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',

];

final batmanImage =
    'https://i0.wp.com/batman-news.com/wp-content/uploads/2022/01/The-Batman-2022-Movie-Poster-01.jpeg?fit=2764%2C4096&quality=80&strip=info&ssl=1';
