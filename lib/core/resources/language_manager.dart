


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seperateproject/core/utils/arabic.dart';
import 'package:seperateproject/core/utils/english.dart';

class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {'ar':ar,'en':en};

}
