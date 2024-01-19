import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering/phase/day%201/konsep/3/repository_model.dart';
import 'package:mastering/phase/day%201/konsep/3/route.dart';
import 'package:mastering/phase/day%201/konsep/3/with_model_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: BlocProvider(
      create: (context) => WithModelBloc(DataRepository()),
      child: const MyRoute(),
    ));
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const MyRoute();
          }));
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [Text('halo')],
      ),
    );
  }
}
