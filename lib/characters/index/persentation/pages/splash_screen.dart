import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/core/assets/utils/images_source.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static String get routeName => 'splash_page';
  static String get routeLocation => '/$routeName';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const String route = '/menu';
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .whenComplete(() => context.go(route));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ImageSource.chargeImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
              CircularProgressIndicator(),
              SizedBox(
                height: 80.0,
              ),
            ])));
  }
}
