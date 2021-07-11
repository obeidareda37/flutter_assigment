import 'package:flutter/material.dart';
import 'package:flutter_assigment_form/data/customer_data.dart';
import 'package:flutter_assigment_form/ui/register_page/custom_text_form_field_widget.dart';


class RegisterCustomerPage extends StatelessWidget {
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
              CustomerData.customerData.customer.email = value;
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
              CustomerData.customerData.customer.password = value;
            },
          ),
        ],
      ),
    );
  }
}
