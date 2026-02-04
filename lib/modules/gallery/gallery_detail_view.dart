import 'package:calender/widgets/my_regular_text.dart';
import 'package:flutter/material.dart';
import '../../utils/styles.dart';
import '../../widgets/zoomable_image.dart';
import 'gallery_model/gallery_data_model.dart';

class GalleryDetailView extends StatelessWidget {
  final GalleryPhoto photo;

  const GalleryDetailView({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyRegularText(
            label: photo.name,
        style: Styles.blackShade18_16W600,),
      ),
      body: Column(
        children: [
          ZoomableImage(
            imagePath: photo.image,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: MyRegularText(
                  label: photo.description,
                  style: Styles.black16W400,
                  align: TextAlign.start,
                  maxLines: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
