import 'dart:ui';

import 'package:flutter/material.dart';

class AppGlassContainer {

 static Widget clearGlass(widget){
    return BackdropFilter(
      blendMode: BlendMode.srcOver,
      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8,),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.5,
          ),
         /* boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 10,
              blurRadius: 0,
              offset: Offset(0, 4)
            )
          ]*/
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 4,
          ),
          child: widget
        ),
      ),
    );
  }
}