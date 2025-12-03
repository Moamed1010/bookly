
import 'package:flutter/material.dart';

SnackBar buildErroeWidget(String errorMessege) {
    return SnackBar(
      backgroundColor: Colors.red,
      content: Text(
        errorMessege ,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
 
