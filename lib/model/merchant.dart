
import 'package:flutter_assigment_form/model/user.dart';

class Merchant extends User {
  String shopName;
  String shopAddress;
  String bio;
  String category;

  Merchant([String email, String password, this.shopName, this.shopAddress,
      this.bio, this.category])
      : super(email, password);
}
