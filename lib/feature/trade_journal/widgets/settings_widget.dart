import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_trade_journal/theme/butt_styles.dart';
import 'package:smart_trade_journal/theme/theme.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  var theme = darkTheme;

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
                  onPressed: () { },
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
                        SizedBox(width: 16),
                        Text("Privacy polity", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: () { },
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
                        SizedBox(width: 16),
                        Text("Terms of use", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: () { },
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
                        SizedBox(width: 16),
                        Text("Support", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                      ],
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: () { },
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
                        SizedBox(width: 16),
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
