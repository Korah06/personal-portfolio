import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

enum Skill {
  java('Java', BoxIcons.bxl_java),
  spring('Spring', BoxIcons.bxl_spring_boot),
  flutter('Flutter', BoxIcons.bxl_flutter);

  final String name;
  final IconData icon;

  const Skill(this.name, this.icon);
}