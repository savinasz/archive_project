import 'package:archive_project/modules/document/screen/add_document_archive.dart';
import 'package:archive_project/modules/document/widgets/document_archive_item.dart';
import 'package:archive_project/modules/home/screen/management_home_screen.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocumentArchiveScreen extends StatefulWidget{
  const DocumentArchiveScreen({Key? key}) : super(key: key);

  @override
  _DocumentArchiveScreen createState() => _DocumentArchiveScreen();
}

class _DocumentArchiveScreen extends State<DocumentArchiveScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ArchiveTheme.primaryColor,
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const ManagementHomeScreen()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )
          ),
          title: Text('Dokumen',
              style: ArchiveTheme.subTitle.copyWith(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: dimen16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const AddDocumentScreen()),
                  );
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            )
          ],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  BuildFolderDocument(),
                  BuildFolderDocument(),
                  BuildFolderDocument(),
                  BuildFolderDocument(),
                  BuildFolderDocument(),
                  BuildFolderDocument(),
                ],
              )
          ),
        )
    );
  }
}

