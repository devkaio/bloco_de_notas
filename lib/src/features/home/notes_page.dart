import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/custom_scrollbar.dart';
import 'package:bloco_de_notas/src/shared/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesPage extends StatefulWidget {
  static const String id = '/notes';
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: AppColors.blueGradientAppBar),
        ),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        backwardsCompatibility: false,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/notes_logo.png",
              height: 35.0,
            ),
            Image.asset(
              "assets/images/journal.png",
              height: 40.0,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                hintStyle: TextStyle(
                  color: Color(0xFF8A000000),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF8A000000),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomScrollBar(
                thumbColor: AppColors.blueGradient,
                child: StaggeredGridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 13.0,
                  ),
                  children: [
                    NoteCardWidget(
                      title: 'Não esquecer',
                      titleColor: AppColors.rosa,
                      body:
                          'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
                      date: '26/08/2021',
                      icon: [
                        Icon(
                          Icons.date_range,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ],
                      onTap: () {},
                    ),
                    NoteCardWidget(
                      title: 'Reunião com os stakeholders',
                      titleColor: AppColors.verde,
                      body:
                          '- Ipsum dolor sit amet, consectur. \n- Adipiscing elit, sed do eiusmod tempor incidi. \n- Ut labore et dolore magna aliqua.',
                      date: '26/08/2021',
                      icon: [
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ],
                      onTap: () {},
                    ),
                    NoteCardWidget(
                      title: 'Lembretes para o médico',
                      titleColor: AppColors.lilas,
                      body:
                          'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
                      date: '26/08/2021',
                      icon: [
                        Icon(
                          Icons.date_range,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ],
                      onTap: () {},
                    ),
                    NoteCardWidget(
                      title: 'Ideias para o novo app 2022',
                      titleColor: AppColors.ciano,
                      body: 'Comprar ração da valíria antes do dia 20.',
                      date: '26/08/2021',
                      icon: [],
                      onTap: () {},
                    ),
                    NoteCardWidget(
                      title: 'Reunião do grupo de treinamento',
                      titleColor: AppColors.amarelo,
                      body:
                          '- Ipsum dolor sit amet, consectur. \n- Adipiscing elit, sed do eiusmod tempor incidi. \n- Ut labore et dolore magna aliqua.',
                      date: '26/08/2021',
                      icon: [],
                      onTap: () {},
                    ),
                    NoteCardWidget(
                      title: 'Não esquecer',
                      titleColor: Colors.green,
                      body: 'Comprar ração da valíria antes do dia 20.',
                      date: '26/08/2021',
                      icon: [],
                      onTap: () {},
                    ),
                  ],
                  staggeredTiles: [
                    const StaggeredTile.fit(1),
                    const StaggeredTile.fit(1),
                    const StaggeredTile.fit(1),
                    const StaggeredTile.fit(1),
                    const StaggeredTile.fit(1),
                    const StaggeredTile.fit(1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, NewNotePage.id);
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0.0, 3),
                  blurRadius: 5.0,
                  spreadRadius: -1.0),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
