import 'package:get/get.dart';
import '../../utils/assets_path.dart';
import 'gallery_model/gallery_data_model.dart';

class GalleryController extends GetxController {
  final photos = <GalleryPhoto>[
    GalleryPhoto(
      image: AssetsPath.bannerTemple,
      title: 'Temple Front View',
      description: 'Shree Naklank Gurudham Temple Front View Halvad Shree Naklank Gurudham Halvad Shree Naklank Gurudham Halvad Shree Naklank Gurudham, Halvad Shree Naklank Gurudham, Halvad Shree Naklank Gurudham, Halvad Shree Naklank Gurudham, Halvad',
      name: "Ramdev Pir Mandir",
    ),
    GalleryPhoto(
      image: AssetsPath.iconAarti,
      title: 'Morning Aarti',
      description: 'Morning Aarti View',
      name: "Aarti",
    ),
    GalleryPhoto(
      image: AssetsPath.iconStore,
      title: 'Temple Store',
      description: 'Buy Prasad and Pooja Items from the temple store. Here you can find a wide variety of sacred items such as incense sticks, diyas, camphor, flowers, coconuts, holy threads, kumkum, chandan, idols, religious books, and other devotional products. All items are carefully selected to maintain purity and quality,Buy Prasad and Pooja Items from the temple store. Here you can find a wide variety of sacred items such as incense sticks, diyas, camphor, flowers, coconuts, holy threads, kumkum, chandan, idols, religious books, and other devotional products. All items are carefully selected to maintain purity and quality, making your worship and spiritual rituals more meaningful and complete.',
      name: "Store",
    ),
    GalleryPhoto(
      image: AssetsPath.iconHistory,
      title: 'History',
      description: 'History of Ramdev Pir',
      name: "History",
    ),
    GalleryPhoto(
      image: AssetsPath.iconGallery,
      title: 'Temple Gallery',
      description: 'Temple Photo Collection',
      name: "Gallery",
    ),
    GalleryPhoto(
      image: AssetsPath.iconAarti,
      title: 'Evening Aarti',
      description: 'Evening Aarti View',
      name: "Evening Aarti",
    ),
    GalleryPhoto(
      image: AssetsPath.bannerTemple,
      title: 'Main Entrance',
      description: 'Main Gate of Temple',
      name: "Entrance",
    ),
    GalleryPhoto(
      image: AssetsPath.iconAarti,
      title: 'Special Aarti',
      description: 'Special Occasion Aarti',
      name: "Special",
    ),
    GalleryPhoto(
      image: AssetsPath.bannerTemple,
      title: 'Temple View',
      description: 'Beautiful Temple View',
      name: "Temple View",
    ),
    GalleryPhoto(
      image: AssetsPath.iconAarti,
      title: 'Festival Aarti',
      description: 'Festival Time Aarti',
      name: "Festival",
    ),
    GalleryPhoto(
      image: AssetsPath.bannerTemple,
      title: 'Evening Darshan',
      description: 'Evening Darshan of Ramdev Pir',
      name: "Darshan",
    ),
    GalleryPhoto(
      image: AssetsPath.iconAarti,
      title: 'Night Aarti',
      description: 'Night Aarti View',
      name: "Night Aarti",
    ),
  ];
}
