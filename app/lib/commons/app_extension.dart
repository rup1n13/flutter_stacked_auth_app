
import 'package:flutter/cupertino.dart';

/*
*  Application extension
* */


/// Account Profile Authorisation
extension Authorisation on Widget{

  Widget hideIf(bool condition) {
    return condition ?  const SizedBox() : this;
  }

  Widget showIf(bool condition) {
    return condition ?   this : const SizedBox();
  }

}

