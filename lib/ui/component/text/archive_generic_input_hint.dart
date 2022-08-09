import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/material.dart';

class ArchiveGenericTextInputHint extends StatelessWidget {
  final String text;
  const ArchiveGenericTextInputHint({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 15, 4),
      child: Text(
          text,
          style: ArchiveTheme.subTitle
      ),
    );
  }
}
