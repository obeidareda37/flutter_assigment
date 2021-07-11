
import 'package:flutter/material.dart';
import 'package:flutter_assigment_form/data/customer_data.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome ${CustomerData.customerData.customer.email}'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(CustomerData.customerData.customer.email),
              Text(CustomerData.customerData.customer.password),
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
