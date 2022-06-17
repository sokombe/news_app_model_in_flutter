import 'package:flutter/material.dart';

snackshow(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
    message,
    textAlign: TextAlign.center,
  )));
}