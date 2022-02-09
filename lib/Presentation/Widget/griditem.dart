import 'package:breakingbad/Data/Model/M_charachter.dart';
import 'package:flutter/material.dart';

class myitem extends StatelessWidget {
  final charachter ch;

  const myitem({Key? key, required this.ch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(2),
      child: GridTile(
        child: Container(
          color: Colors.grey,
          child: ch.Image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  placeholder: 'assets/images/waiting.gif',
                  image: ch.Image,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/images/waiting.gif'),
        ),
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.orangeAccent,
          child: Text(
            ch.Name,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black45),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
