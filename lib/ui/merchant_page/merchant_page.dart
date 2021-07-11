import 'package:flutter/material.dart';
import 'package:flutter_assigment_form/data/merchant_date.dart';

class MerchantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome ${MerchantData.merchantData.merchant.email}'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(MerchantData.merchantData.merchant.email),
              Text(MerchantData.merchantData.merchant.password),
              Text(MerchantData.merchantData.merchant.shopName),
              Text(MerchantData.merchantData.merchant.shopAddress),
              Text(MerchantData.merchantData.merchant.bio),
              Text(MerchantData.merchantData.merchant.category),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(('Sign Out')))
            ],
          ),
        ));
  }
}
