import 'package:flutter/material.dart';
import 'package:adillasite/app/sections/contact/contact.dart';
import 'package:adillasite/app/sections/home/home.dart';
import 'package:adillasite/app/sections/portfolio/portfolio.dart';
import 'package:adillasite/app/sections/services/services.dart';
import 'package:adillasite/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
