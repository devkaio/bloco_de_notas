import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        child: Card(
          elevation: 3.0,
          child: Flex(
            mainAxisSize: MainAxisSize.min,
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  color: titleColor, //cor da nota
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: -2,
                      blurRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                  maxLines: body.length < 100 ? 5 : 8,
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
                    color: Color.fromRGBO(0, 0, 0, 0.54),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, NewNotePage.id);
      },
    );
  }
}
