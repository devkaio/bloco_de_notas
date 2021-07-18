import 'package:flutter/material.dart';

class NoteCardWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  final List<Widget> icon;
  final String body;
  final String date;
  final onTap;

  const NoteCardWidget({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.body,
    required this.icon,
    required this.date,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 3.0,
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  color: titleColor, //cor da nota
                ),
                width: double.infinity,
                child: Text(
                  title, //título da nota
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: icon,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                body,
                style: TextStyle(
                  fontSize: 14.0,
                ),
                maxLines: body.length < 100 ? 3 : 8,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Text(
                'Criação: $date',
                style: TextStyle(
                  fontSize: 10.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
