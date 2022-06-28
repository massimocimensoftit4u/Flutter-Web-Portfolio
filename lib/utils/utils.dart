import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future<void> openMail() => openUrl("mailto:info@chtoura-city.de");

  static Future<void> openMyLocation() => openUrl(
      "https://www.google.com/maps/place/Chtoura+City+GmbH/@50.1316334,8.8608713,17z/data=!3m1!4b1!4m5!3m4!1s0x47bd11e905683c31:0xf19cd2158dd772ba!8m2!3d50.1316322!4d8.8631183");
  static Future<void> openMyPhoneNo() => openUrl("tel:+4917621847766");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/0");
}
