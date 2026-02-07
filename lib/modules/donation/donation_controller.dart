import 'package:get/get.dart';
import '../../utils/assets_path.dart';
import '../../utils/string.dart';
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
        AssetsPath.templeDemo,
        AssetsPath.templeDemo,
        AssetsPath.bannerTemple,
      ],
      title: SC.mandirDonation.tr,
      description: SC.mandirDonationDesc.tr,
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
      title: SC.gaushalaDonation.tr,
      description: SC.gaushalaDonationDesc.tr,
      qrImage: AssetsPath.iconAarti,
      bankDetails: commonBankDetails,
    ),

    DonationViewModel(
      images: [
        AssetsPath.shivling,
        AssetsPath.bannerTemple,
        AssetsPath.templeDemo,
      ],
      title: SC.annakshetraDonation.tr,
      description: SC.annakshetraDonationDesc.tr,
      qrImage: AssetsPath.iconAarti,
      bankDetails: commonBankDetails,
    ),
  ];
}
