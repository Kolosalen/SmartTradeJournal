import 'package:flutter/material.dart';

final butStyle = ButtonStyle(
  padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
        )
    )
);
const butGradient = LinearGradient(
    colors: <Color>[
      Color.fromRGBO(90, 105, 237, 1),
      Color.fromRGBO(52, 129, 163, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
);
