import 'dart:io';

import 'package:flutter/material.dart';

 String choosePlatForm() {
   final urlCHPlay = "https://play.google.com/store/apps/details?id=grammar."
      "englishgrammarpractice&hl=vi&gl=US";
   final urlAppStore = "https://apps.apple.com/vn/app/practice-english-grammar/id1542431728";
   final String links = Platform.isAndroid ? urlCHPlay : urlAppStore;
    return links;

}
