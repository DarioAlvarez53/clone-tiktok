import 'package:animate_do/animate_do.dart';
import 'package:clon_tiktok/config/helpers/human_format.dart';
import 'package:clon_tiktok/domain/entities/videos_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {

  //Aqui traemos lo que vamos a recibir
  final VideosPost video;

  const VideoButtons({
    super.key, 
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        const SizedBox(height: 20,),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye),
        const SizedBox(height: 20,),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline)
        )
      ],
    );
  }
}
class _CustomIconButton extends StatelessWidget {

  //Lo que se va a recibir
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value, 
    required this.iconData, 
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(
            iconData, 
            color: color,
            size: 30,
          )
        ),
        if(value > 0)
        Text( HumanFormat.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}