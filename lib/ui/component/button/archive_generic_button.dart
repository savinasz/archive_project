import 'package:archive_project/ui/theme/archive_primary_theme.dart';
import 'package:flutter/material.dart';

Widget ArchivePrimaryButton({
  BuildContext? context,
  required String text,
  required bool isEnabled,
  double? height,
  double? width,
  required Function() onPressed,
  Color? buttonColor,
}) {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: isEnabled ? ArchiveTheme.primaryColor : Colors.grey,
    minimumSize: const Size(double.infinity, 50),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  return Container(
    height: 55,
    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
    child: ElevatedButton(
      style: raisedButtonStyle,
      onPressed: isEnabled ? onPressed : (){},
      child: Text(
        text,
        style: ArchiveTheme.subTitle,
      ),
    ),
  );
}

