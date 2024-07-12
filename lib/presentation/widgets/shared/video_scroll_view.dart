import 'package:clon_tiktok/presentation/widgets/shared/video_buttons.dart';
import 'package:flutter/material.dart';
import 'package:clon_tiktok/domain/entities/videos_post.dart';

class VideoScrollView extends StatelessWidget {

  //Recibimos la lista de videos
  final List<VideosPost> videos;

  const VideoScrollView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder( //El buldier es para que valla construyendo de uno en uno
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,//este es para especificar cuantos items tengo
      itemBuilder: (context, index) {
        final VideosPost videoPost = videos[index];
        //Construccion de la pantalla
        return Stack(
          children: [
            //Video Player + Gradiente

            //Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(
                video: videoPost
              )
            ),
          ],
        );
      },
    );
  }
}