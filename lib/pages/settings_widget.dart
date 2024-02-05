import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smart_trade_journal/pages/privacy_polity.dart';
import 'package:smart_trade_journal/pages/terms_of_use.dart';
import 'package:smart_trade_journal/res/butt_styles.dart';
import 'package:smart_trade_journal/res/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  var theme = darkTheme;
  final Uri supportLink = Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSdqdxG_629fJF-ZEWYMZx2p7PzONXFYO_OdpILKV-331KF6Dg/viewform');
  final Uri shareLink = Uri.parse('https://apps.apple.com/app/id64763982');

  Future<void> _launchUrl() async {
    if (!await launchUrl(supportLink)) {
      throw Exception('Could not launch $supportLink');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings',
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          centerTitle: true,
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        body:Padding(
          padding: const EdgeInsets.fromLTRB(24, 55, 24, 0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {Get.to(() => PrivacyPolityPage());},
                  style: butStyle,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color.fromRGBO(33, 39, 56, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/Security.svg'),
                        const SizedBox(width: 16),
                        Text("Privacy polity", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: () {Get.to(() => TermsOfUsePage()); },
                  style: butStyle,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color.fromRGBO(33, 39, 56, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/Doc.svg'),
                        const SizedBox(width: 16),
                        Text("Terms of use", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: _launchUrl,
                  style: butStyle,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color.fromRGBO(33, 39, 56, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/Support.svg'),
                        const SizedBox(width: 16),
                        Text("Support", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: () { Share.shareUri(shareLink);},
                  style: butStyle,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Color.fromRGBO(33, 39, 56, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/svg/Share.svg'),
                        const SizedBox(width: 16),
                        Text("Share", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}
