import 'package:flutter/material.dart';
import 'package:flutter_application_3/modals/addressInfo.dart';

class UserInfo {
  String name;
  String email;
  String phoneNumber;
  AddressInfo address;

  UserInfo({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
  });
}

class UserInfoForm extends StatefulWidget {
  const UserInfoForm({Key? key}) : super(key: key);

  @override
  State<UserInfoForm> createState() => _UserInfoFormState();
}

class _UserInfoFormState extends State<UserInfoForm> {
  final _formKey = GlobalKey<FormState>();
  late final UserInfo _userInfo =
      UserInfo(name: '', email: '', phoneNumber: '', address: AddressInfo());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.name = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.email = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Phone Number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.phoneNumber = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Province'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your province';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.address.province = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'District'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your district';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.address.district = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Ward'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your ward';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.address.ward = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Street'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your street';
              }
              return null;
            },
            onSaved: (value) {
              _userInfo.address.street = value!;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Do something with the user info
                print(_userInfo);
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
