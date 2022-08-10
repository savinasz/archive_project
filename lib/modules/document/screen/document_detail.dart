import 'package:archive_project/ui/component/button/archive_generic_button.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/material.dart';

class DocumentDetail extends StatelessWidget{
  const DocumentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ArchiveTheme.primaryColor,
        title: Text('Detail Document', style: ArchiveTheme.subTitle),
        centerTitle: true,
      ),
      body: SafeArea(
          child: _buildDetailDocument()
      ),
    );
  }

  Widget _buildDetailDocument(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(dimen24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Arsip 1 Tahun 2020', style: ArchiveTheme.title),
            Padding(
              padding: const EdgeInsets.only(top: dimen16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tanggal Ditambahkan', style: ArchiveTheme.bodyText,),
                      Text('2020-01-02', style: ArchiveTheme.primaryTextStyle,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ditambahkan Oleh', style: ArchiveTheme.bodyText,),
                      Text('Faruk Abdurohman', style: ArchiveTheme.primaryTextStyle,)
                    ],
                  ),
                ],
              ),
            ),
            _buildDivider(),
            Text('Magang akan menambah kemampuan mahasiswa untuk mengamati, mengkaji, serta '
                'menilai antara teori yang didapat di kampus dengan kenyataan yang terjadi di lapangan'
                'sehingga dapat meningkatkan kualitas mahasiswa dalam mengamati permasalahan'
                'langsung baik dalam bentuk aplikasi teori maupun bentuk praktik langsung. Dalam'
                'perkuliahan, mahasiwa mendapat pengetahuan yang berupa teori yang diiringi dengan praktik',
              style: ArchiveTheme.primaryTextStyle,
              textAlign: TextAlign.justify,),
            Padding(
                padding: const EdgeInsets.only(top: dimen32),
                child: ArchivePrimaryButton(text: "Unduh", isEnabled: true, onPressed: (){}))
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Divider(color: Colors.black12, thickness: 1),
    );
  }
}