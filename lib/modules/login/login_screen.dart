import 'package:archive_project/modules/home/screen/management_home_screen.dart';
import 'package:archive_project/ui/component/button/archive_generic_button.dart';
import 'package:archive_project/ui/component/input/archive_generic_input.dart';
import 'package:archive_project/ui/component/text/archive_generic_input_hint.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  void dispose(){
    _nikController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(horizontal: dimen16, vertical: dimen32),
                        child: Image.asset('assets/hospital.png', height: 120)),
                    Text('Silahkan login terlebih dahulu',
                        style: ArchiveTheme.subTitle.copyWith(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              const ArchiveGenericTextInputHint(text: 'NIK'),
              ArchiveGenericTextInput(
                  controller: _nikController,
                  inputType: TextInputType.name
              ),
              const ArchiveGenericTextInputHint(text: 'Kata Sandi'),
              ArchiveGenericTextInput(
                  controller: _passwordController,
                  inputType: TextInputType.visiblePassword
              ),
              Row(
                children: [
                  const CheckboxButton(),
                  Text('Remember Password', style: ArchiveTheme.subTitle),
                ],
              ),
              ArchivePrimaryButton(
                  context: context,
                  text: 'Masuk',
                  isEnabled: true,
                  onPressed: (){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ManagementHomeScreen()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxButton extends StatefulWidget {
  const CheckboxButton({Key? key}) : super(key: key);

  @override
  _CheckboxButtonState createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          ischecked ?Icons.check_box : Icons.check_box_outline_blank),
      color: Colors.green,
      onPressed: () {
        setState(() {
          ischecked = !ischecked;
        });
      },
    );
  }
}