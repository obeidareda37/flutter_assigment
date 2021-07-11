import 'package:flutter/material.dart';
import 'package:flutter_assigment_form/data/merchant_date.dart';

import 'custom_text_form_field_widget.dart';


class RegisterMerchantPage extends StatefulWidget {
  @override
  _RegisterMerchantPageState createState() => _RegisterMerchantPageState();
}

class _RegisterMerchantPageState extends State<RegisterMerchantPage> {
  String dropDownValue = MerchantData.merchantData.categories[0];
bool isEmail = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            labelText: 'Email',
            obscureText: false,
            validator: (String value) {
              if (value.length == 0) return 'Email should not empty !';
              if (!isEmail) return 'This not email !';
              return null;
            },
            onSaved: (String value) {
              MerchantData.merchantData.merchant.email = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: 'Password',
            obscureText: true,
            validator: (String value) {
              if (value.length == 0) return 'Password should not empty !';
              if (value.length <= 6) return 'less Than 6 digit !';
              return null;
            },
            onSaved: (String value) {
              MerchantData.merchantData.merchant.password = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: 'Shop Name',
            obscureText: false,
            validator: (String value) {
              if (value.length == 0) return 'Shop Name should not empty !';
              return null;
            },
            onSaved: (String value) {
              MerchantData.merchantData.merchant.shopName = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: 'Shop Address',
            obscureText: false,
            validator: (String value) {
              if (value.length == 0) return 'Shop Address should not empty !';
              return null;
            },
            onSaved: (String value) {
              MerchantData.merchantData.merchant.shopAddress = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: 'Bio',
            obscureText: false,
            validator: (String value) {
              if (value.length == 0) return 'Bio should not empty !';
              return null;
            },
            onSaved: (String value) {
              MerchantData.merchantData.merchant.bio = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: DropdownButtonFormField<String>(
                onSaved: (value) {
                  MerchantData.merchantData.merchant.category = value;
                },
                value: dropDownValue,
                onChanged: (newValue) {
                  dropDownValue = newValue;
                  setState(() {});
                },
                items: MerchantData.merchantData.categories.map((catogery) {
                  return DropdownMenuItem(
                      value: catogery, child: Text((catogery)));
                }).toList()),
          )
        ],
      ),
    );
  }
}
