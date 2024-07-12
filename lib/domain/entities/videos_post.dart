//Aqui es donde se escribe toda la regla de negocio, que es lo que se necesita para que la aplicacion fluya

class VideosPost {
  //creando las instancia para el constructor
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;
  //creando el constructor
  VideosPost({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });
}