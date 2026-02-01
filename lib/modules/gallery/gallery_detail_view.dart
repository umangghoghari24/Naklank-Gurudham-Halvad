import 'package:flutter/material.dart';
import '../../widgets/zoomable_image.dart';
import 'gallery_model/gallery_data_model.dart';

class GalleryDetailView extends StatelessWidget {
  final GalleryPhoto photo;

  const GalleryDetailView({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(photo.title),),
      body: Column(
        children: [
          ZoomableImage(imagePath: photo.image,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              photo.description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
