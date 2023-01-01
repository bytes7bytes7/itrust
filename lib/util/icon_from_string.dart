import 'package:flutter/material.dart';

// TODO: add all icons
IconData iconFromString(String name) {
  switch (name) {
    case 'person':
      return Icons.person;
    case 'bookmark':
      return Icons.bookmark;
  }

  return Icons.question_mark;
}
