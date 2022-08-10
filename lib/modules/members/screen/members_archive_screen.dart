import 'package:archive_project/modules/home/screen/management_home_screen.dart';
import 'package:archive_project/modules/members/screen/add_members_archive.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MembersArchiveScreen extends StatelessWidget{
  const MembersArchiveScreen({Key? key}) : super(key: key);

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
          title: Text('Anggota',
              style: ArchiveTheme.subTitle.copyWith(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: dimen16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const AddMembersScreen()),
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
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                  _buildFolderMembers(),
                ],
              )
          ),
        )
    );
  }


  Widget _buildFolderMembers() {
    return SizedBox(
      width: 450,
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  "Savina Zahro",
                  style: ArchiveTheme.subTitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: 8,),
              Text("085730762925",
                  style: ArchiveTheme.primaryTextStyle),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

