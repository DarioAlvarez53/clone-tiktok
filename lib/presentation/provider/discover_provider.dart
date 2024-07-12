//Dentro del provider es lo que va a contener la aplicacion
import 'package:clon_tiktok/domain/entities/videos_post.dart';
import 'package:clon_tiktok/infraestructure/models/local_video_model.dart';
import 'package:clon_tiktok/shared/data/local_video_post.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {

  //Tareas a crear
  //TODO: Repository, DataSource
  //El data source no se va a colocar en el provider si no en el Repository
  //El repositoria me va a permitir lanzar las peticiones respectivas
  //El DataSource es la fuente de la data donde podemos tener varias: data local, data por internet, data json local etc.

  //Esto es para iniciar la aplicacioncon nada
  bool initialLoading = true;
  //En este caso quiero que tenga una lista de videos
  List<VideosPost> videos = [];

  //Aqui es donde se van a cargar los videos
  Future<void> loadNextPage() async {

    //simulando una carga HTTP asincrona
    await Future.delayed(const Duration(seconds: 2)); // aqui le digo a la peticion que espere el tiempo necesario

    //carga de videos
    final List<VideosPost> newVideos = videoPosts.map( 
      (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity() 
    ).toList();

    //Añade aqui
    videos.addAll(newVideos);
    initialLoading = false;


    //TODO: cargar videos
    //esto es lo que va a escuchar cuando todo se haya cargado
    notifyListeners();
  }
}