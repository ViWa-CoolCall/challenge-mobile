import 'package:flutter/material.dart';

class FileCardWidget extends StatelessWidget {
  FileCardWidget(this.fileType);

  final String fileType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.upload_file,
              size: 50,
            ),
          ),
          Text(
            this.fileType,
            style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
