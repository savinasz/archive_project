import 'package:archive_project/ui/component/button/archive_generic_button.dart';
import 'package:archive_project/ui/component/input/archive_generic_input.dart';
import 'package:archive_project/ui/component/text/archive_generic_input_hint.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/material.dart';

class AddMembersScreen extends StatefulWidget{
  const AddMembersScreen({Key? key}) : super(key: key);

  @override
  _AddMembersScreen createState() =>  _AddMembersScreen();
}

class _AddMembersScreen extends State <AddMembersScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _verificationPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: ArchiveTheme.primaryColor,
        title: Text(
          "Tambah Dokumen",
          style: ArchiveTheme.subTitle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(dimen16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: dimen16),
                    child: Text(
                        'Tambah Anggota',
                        style: ArchiveTheme.title.copyWith(fontSize: 24)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: dimen16),
                    child: Text(
                        'Isi beberapa data dibawah',
                        style: ArchiveTheme.primaryTextStyle),
                  ),
                  const SizedBox(height: dimen24),
                  const ArchiveGenericTextInputHint(text: 'Nama'),
                  ArchiveGenericTextInput(controller: _nameController, inputType: TextInputType.text),
                  const ArchiveGenericTextInputHint(text: 'Nomor HandPhone'),
                  ArchiveGenericTextInput(controller: _phoneController, inputType: TextInputType.text),
                  const ArchiveGenericTextInputHint(text: 'Kata Sandi'),
                  ArchiveGenericTextInput(controller: _passwordController, inputType: TextInputType.visiblePassword),
                  const ArchiveGenericTextInputHint(text: 'Verifikasi Kata Sandi'),
                  ArchiveGenericTextInput(controller: _verificationPasswordController, inputType: TextInputType.visiblePassword),
                  const SizedBox(height: 60),
                  ArchivePrimaryButton(context: context, text: "Tambah", isEnabled: true, onPressed: (){}),
                ],
              ),
            ),
          )
      ),
    );
  }
}