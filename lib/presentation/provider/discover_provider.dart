//Dentro del provider es lo que va a contener la aplicacion
import 'package:clon_tiktok/domain/entities/videos_post.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  //Esto es para iniciar la aplicacioncon nada
  bool initialLoading = true;
  //En este caso quiero que tenga una lista de videos
  List<VideosPost> videos = [];

  //Aqui es donde se van a cargar los videos
  Future<void> loadNextPage() async {
    //Todo: cargar videos
    //esto es lo que va a escuchar cuando todo se haya cargado
    notifyListeners();
  }
}