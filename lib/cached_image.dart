import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cached image picker"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          children: [
            CachedNetworkImage(
                imageUrl: "",
              imageBuilder: (context, imageProvider)=> Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                  )
                ),
              ),
              placeholder: (context, url)=> CircularProgressIndicator(),
              errorWidget: (context, url, error)=> Icon(Icons.error_outlined),

            ),

          ],
        ),
      ),
    );
  }
}
