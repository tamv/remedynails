
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:remedynails/components/rounded_button.dart';
import 'package:remedynails/components/rounded_text_field.dart';

class EditProfilePage extends StatefulWidget {
    static final String pageId = 'account_page';

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: double.infinity,

        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: new Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Edit Profile", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: screenSize.height * 0.03),
                    Icon(Icons.account_circle, size: screenSize.height * 0.1),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedInputField(
                      hintText: "name",
                      icon: Icons.person_pin,
                      onChanged: (input) => {},
                      onValidate: (input) => null,
                    ),
                    RoundedInputField(
                      hintText: "phone number",
                      icon: Icons.phone_iphone,
                      onChanged: (input) => {},
                      onValidate: (input) => null,
                      formatter: new MaskTextInputFormatter(mask: '(###) ### - ####', filter: { "#": RegExp(r'[0-9]') }),
                    ),
                    RoundedInputField(
                      hintText: "date of birth",
                      icon: Icons.date_range,
                      onChanged: (input) => {},
                      onValidate: (input) => null,
                      formatter: new MaskTextInputFormatter(mask: '#### / ## / ##', filter: { "#": RegExp(r'[0-9]') }),
                    ),
                    SizedBox(height: screenSize.height * 0.03),
                    RoundedButton(
                      text: "UPDATE",
                      onPressed: () {},
                    ),
                  ],
                )
              )
            )
          ],
        )
      )
    );
  }
}