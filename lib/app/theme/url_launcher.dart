import 'package:url_launcher/url_launcher_string.dart';

Future<void> openemail(String urlMail) async {
  await launchUrlString(urlMail);
}

class UrlLaunchers {
  static Future<void> openWa() async {
    final urlWa = "https://wa.me/+6289696997506";
    await launchUrlString(urlWa, mode: LaunchMode.externalApplication);
  }
}
