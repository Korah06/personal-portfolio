import 'package:url_launcher/url_launcher.dart';

void openWebsite({required String host, String? path}) async {
  final Uri url = Uri(
    scheme: 'https',
    host: host,
    path: path,
  );
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
