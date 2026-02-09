import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openYoutube(String url) async {
  final uri = Uri.parse(url);
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

Future<void> openWhatsApp(String phone, String message) async {

  final Uri uri = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: '91$phone',
    queryParameters: {
      'text': message,
    },
  );

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    Get.snackbar("Error", "Unable to open WhatsApp");
  }
}
