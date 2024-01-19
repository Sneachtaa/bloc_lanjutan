import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering/phase/day%201/konsep/2/lanjutan_bloc.dart';
import 'package:mastering/phase/day%201/konsep/2/model.dart';

class MyUiApp extends StatelessWidget {
  const MyUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LanjutanBloc(),
        child: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<LanjutanBloc, LanjutanState>(
              builder: (context, state) {
                return Column(
                  children: state.person
                      .map((person) => Text('hello ${person.name}' , style:  TextStyle(
                        fontSize: 40 ,
                        fontWeight: FontWeight.w600),))
                      .toList(),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(labelText: 'masukan nama'),
                  ),
                ),
                Container(
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Person person = Person(name: textEditingController.text);
                      BlocProvider.of<LanjutanBloc>(context)
                          .add(NamaPertama(person: person));
                    },
                    child: Text('add'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
