import 'package:calender/modules/satsang/satsang_model/satsang_data_model.dart';
import 'package:get/get.dart';
import '../../utils/satsang_data.dart';

class SatsangController extends GetxController {

  final String channelUrl =
      "www.youtube.com/@NaklankGurudham9019";

  final satsangList = <SatsangItem>[
    SatsangItem(
      title: "ગુરુમુખી થવુ હોય તો શુ કરવું",
      url: "https://youtu.be/WJ1FJwztRtE?si=zK_HDTQcOBMFpr0d",
    ),
    SatsangItem(
      title: "સપના ઉત્તમ જોવો પુરા સદગુરુ કરશે",
      url: "https://youtu.be/QjlFkB3JXnA?si=kWH7viLJNNmhjZ4a",
    ),
    SatsangItem(
      title: "અષાઠી બીજ - ૨૦૨૫",
      url: "https://youtu.be/roskudQ-AX4?si=---GJJNncK1n28pl",
    ),
    SatsangItem(
      title: "બાપુએ સમજાવ્યો કૃષ્ણ-લીલા નો મહિમા",
      url: "https://youtu.be/brD33o-uMGk?si=cHZLD8GBNC8BPFp2",
    ),

  ];
}

