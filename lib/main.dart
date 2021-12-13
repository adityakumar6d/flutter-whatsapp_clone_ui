import 'package:flutter/material.dart';
import 'package:my_flutter_app_1/whatsapp_home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
          primaryColor: const Color(0xff075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff25D366))),
      home: new WhatsAppHome(),
    ),
  );
}
