import 'package:archive_project/modules/document/screen/document_detail.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildFolderDocument extends StatelessWidget {
  const BuildFolderDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (c) => const DocumentDetail()));
      },
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Arsip 1 Tahun 2020', style: ArchiveTheme.subTitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8,),
                  Text("2022/06/22",
                      // "${document.deadline.convertToArchiveDateAndHour()}",
                      style: ArchiveTheme.primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w300)),
                  const SizedBox(height: 8,),
                ],
              ),
              const Icon(Icons.arrow_forward_ios_outlined,
                size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}