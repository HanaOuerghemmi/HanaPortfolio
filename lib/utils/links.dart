import 'package:url_launcher/url_launcher.dart';

final Uri urlLinkedin = Uri.parse('https://www.linkedin.com/in/ou13hana/');
final Uri urlGithub = Uri.parse('https://github.com/HanaOuerghemmi');
final Uri urlEmail = Uri.parse('mailto:hana.ouerghemmi@holbertonstudents.com?');
final Uri urlCv = Uri.parse(
    'https://drive.google.com/file/d/1lK40mRB2tOkpq-2dREYcU2RuBsr7DMFo/view?usp=sharing');
final Uri uriWhatsapp = Uri.parse("https://wa.me/" + "+216 90 101 786");

final Uri urlGithubKoofin =
    Uri.parse("https://github.com/hanaouerghemmi/koofin");
final Uri urlGithubSimpleShell =
    Uri.parse("https://github.com/hanaouerghemmi/holbertonschool-simple_shell");
final Uri urlGithubRayek = Uri.parse("https://github.com/majdideveloper/rayek");

final Uri urlPreviewKoofin = Uri.parse(
    "https://medium.com/@5004_52812/hack-4-track-hackathon-69e013355e9b");
final Uri urlPreviewRayek = Uri.parse("https://ouhana.wixsite.com/rayek");


 Future<void> launchMyUrl(
    Uri link,
  ) async {
    if (!await launchUrl(link)) {
      throw Exception('Could not launch $link');
    }
  }
