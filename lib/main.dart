import 'package:clon_tiktok/config/theme/app_theme.dart';
import 'package:clon_tiktok/presentation/provider/discover_provider.dart';
import 'package:clon_tiktok/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider()..loadNextPage()
        )
      ],
      child: MaterialApp(
        title: 'TikTok clone',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}