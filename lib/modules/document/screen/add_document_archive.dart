import 'package:archive_project/ui/component/button/archive_generic_button.dart';
import 'package:archive_project/ui/component/input/archive_generic_input.dart';
import 'package:archive_project/ui/component/text/archive_generic_input_hint.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddDocumentScreen extends StatelessWidget{
  AddDocumentScreen({Key? key}) : super(key: key);

  final TextEditingController _descController = TextEditingController();
  final TextEditingController _otherController = TextEditingController();

  void dispose(){
    _descController.dispose();
    _otherController.dispose();
  }

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
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                        'Tambah Dokumen',
                        style: ArchiveTheme.title.copyWith(fontSize: 24)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                        'Isi beberapa data dibawah',
                        style: ArchiveTheme.primaryTextStyle
                    ),
                  ),
                  const SizedBox(height: dimen24),
                  const ArchiveGenericTextInputHint(text: 'Deskripsi'),
                  ArchiveGenericTextInput(
                      controller: _descController,
                      inputType: TextInputType.text),
                  const ArchiveGenericTextInputHint(text: 'Info Tambahan'),
                  ArchiveGenericTextInput(
                      controller: _otherController,
                      inputType: TextInputType.text),
                  const ArchiveGenericTextInputHint(text: 'Unggah Dokumen'),
                  _buildFilePlaceHolder(),
                  const SizedBox(height: 60),
                  ArchivePrimaryButton(
                      context: context,
                      text: "Tambah Dokumen",
                      isEnabled: true,
                      onPressed: (){})
                ],
              ),
            ),
          )
      ),
    );
  }

  Widget _buildFilePlaceHolder() {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: dimen16, top: dimen8),
        child: DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 1,
          strokeCap: StrokeCap.round,
          color: Colors.black54,
          radius: const Radius.circular(8),
          dashPattern: const [5, 5],
          child: const SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.file_upload,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}