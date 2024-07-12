import 'package:clon_tiktok/presentation/provider/discover_provider.dart';
import 'package:clon_tiktok/presentation/widgets/shared/video_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //Traer la instancia del provider
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
        ? const Center(child: CircularProgressIndicator(strokeWidth: 2,)) //en caso de que el initialLoading sea true
        : VideoScrollView(videos: discoverProvider.videos) //y si no
    );
  }
}