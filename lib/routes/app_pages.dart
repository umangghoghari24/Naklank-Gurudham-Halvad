import 'package:get/get.dart';
import '../modules/abhishek/abhishek_binding.dart';
import '../modules/abhishek/abhishek_view.dart';
import '../modules/donation/donation_binding.dart';
import '../modules/donation/donation_view.dart';
import '../modules/gallery/gallery_binding.dart';
import '../modules/gallery/gallery_view.dart';
import '../modules/splash/splash_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/aarti/aarti_view.dart';
import '../modules/aarti/aarti_binding.dart';
import '../modules/bij/bij_view.dart';
import '../modules/bij/bij_binding.dart';
import '../modules/satsang/satsang_view.dart';
import '../modules/satsang/satsang_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.aarti,
      page: () => AartiView(),
      binding: AartiBinding(),
    ),
    GetPage(
      name: AppRoutes.abhishek,
      page: () =>  AbhishekView(),
      binding: AbhishekBinding(),
    ),
    GetPage(
      name: AppRoutes.bij,
      page: () => BijView(),
      binding: BijBinding(),
    ),
    GetPage(
      name: AppRoutes.satsang,
      page: () => SatsangView(),
      binding: SatsangBinding(),
    ),
    GetPage(
      name: AppRoutes.gallery,
      page: () => GalleryView(),
      binding: GalleryBinding(),
    ),
    GetPage(
      name: AppRoutes.donation,
      page: () => DonationView(),
      binding: DonationBinding(),
    ),

  ];
}
