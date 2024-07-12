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
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye)
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
        Text( formatNumber(value) ),
      ],
    );
  }
}

//Conversion del valor
String formatNumber(int number) {
  if(number >= 1000) {
    return '${(number/1000).toStringAsFixed(1)}k';
  } else if (number > 99000){
    return '${(number/1000000).toStringAsFixed(1)}M';
  } else {
    return number.toString();
  }
}