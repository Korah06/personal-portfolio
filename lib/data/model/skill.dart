import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';

enum Skill {
  java('Java', DevIcons.javaPlain),
  spring('Spring', DevIcons.springPlain),
  mysql('mySQL', DevIcons.mysqlPlain),
  kotlin('Kotlin', DevIcons.kotlinPlain),
  swift('Swift', DevIcons.swiftPlain),
  flutter('Flutter', DevIcons.flutterPlain);

  final String name;
  final IconData icon;

  const Skill(this.name, this.icon);
}