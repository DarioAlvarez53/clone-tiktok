//Par lo que nos sirve este archivo es para mapear como luce una petcion json

import 'package:clon_tiktok/domain/entities/videos_post.dart';

class LocalVideoModel {
  //Creando las instancias
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  //Creando el constructor
  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });
  
  //Creando el factory constructor from json
  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'], 
    videoUrl: json['videoUrl'], 
    likes: json['likes'], 
    views: json['views']
  );

  // Map<String, dynamic> toJson() => {
  //   'name': name,
  //   'videoUrl': videoUrl,
  //   'likes': likes,
  //   'views': views
  // };

  VideosPost toVideoPostEntity() => VideosPost(
    caption: name, 
    videoUrl: videoUrl,
    likes: likes,
    views: views
  );
}