import 'package:get/get.dart';
import '../../utils/assets_path.dart';
import 'donation_model/donation_data_model.dart';

class DonationController extends GetxController {

  static const String commonBankDetails = '''
Bank Name: State Bank of India
Account Name: Shri Ramdev Pir Mandir Trust
Account No: 123456789012
IFSC Code: SBIN0001234
Branch: Halvad
UPI ID: ramdevmandir@sbi''';

  final donations = <DonationViewModel>[

    DonationViewModel(
      images: [
        AssetsPath.iconAarti,
        AssetsPath.templeDemo,
        AssetsPath.bannerTemple,
      ],
      title: 'mandir_donation'.tr,
      description: 'mandir_donation_desc'.tr,
      qrImage: AssetsPath.iconAarti,
      bankDetails: commonBankDetails,
    ),

    DonationViewModel(
      images: [
        AssetsPath.shivling,
        AssetsPath.bannerTemple,
        AssetsPath.bannerTemple,
        AssetsPath.templeDemo,
      ],
      title: 'gaushala_donation'.tr,
      description: 'gaushala_donation_desc'.tr,
      qrImage: AssetsPath.iconAarti,
      bankDetails: commonBankDetails,
    ),

    DonationViewModel(
      images: [
        AssetsPath.shivling,
        AssetsPath.bannerTemple,
        AssetsPath.templeDemo,
      ],
      title: 'annakshetra_donation'.tr,
      description: 'annakshetra_donation_desc'.tr,
      qrImage: AssetsPath.iconAarti,
      bankDetails: commonBankDetails,
    ),
  ];
}
