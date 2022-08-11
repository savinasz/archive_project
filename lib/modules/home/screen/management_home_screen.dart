import 'package:archive_project/modules/home/widgets/build_management_home_menu.dart';
import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/material.dart';

class ManagementHomeScreen extends StatelessWidget{
  const ManagementHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(dimen24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Selamat Datang, Savina Zahro',
                        style: ArchiveTheme.title,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg'),
                    ),
                  ],
                ),
                const SizedBox(height: dimen32),
                Text('Silahkan pilih menu yang anda inginkan', style: ArchiveTheme.primaryTextStyle,),
                const SizedBox(height: dimen24),
                const BuildManagementHomeMenu()
              ],
            ),
          )),
    );
  }
}