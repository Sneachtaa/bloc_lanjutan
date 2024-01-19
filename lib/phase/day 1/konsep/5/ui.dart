import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering/phase/day%201/konsep/5/lanjutan_bloc.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => LanjutanBloc(),
        child: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController namaPertama = TextEditingController();
  TextEditingController namaKedua = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<LanjutanBloc, LanjutanState>(
            builder: (context, state) {
              if (state is DataPertamaState) {
                return Text('Hello ${state.name}');
              } else if (state is DataErorState) {
                return Text(state.eror);
              }
              return const SizedBox.shrink();
            },
          ),
          BlocBuilder<LanjutanBloc, LanjutanState>(
            builder: (context, state) {
              if (state is DataKeduaState) {
                return Text('Hello ${state.name}');
              } else if (state is DataErorState) {
                return Text(state.eror);
              }
              return const SizedBox.shrink();
            },
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 200,
            child: Column(
              children: [
                Flexible(
                    flex: 1,
                    child: TextField(
                      controller: namaPertama,
                      decoration: InputDecoration(hintText: 'nama pertama'),
                    )),
                Flexible(
                    flex: 1,
                    child: TextField(
                      controller: namaKedua,
                      decoration: InputDecoration(hintText: 'nama kedua'),
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<LanjutanBloc>()
                        .add(EventPertama(name: namaPertama.text));
                  },
                  child: Text('Tambahkan nama pertama')),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<LanjutanBloc>()
                        .add(EventKedua(name: namaKedua.text));
                  },
                  child: Text('Tambahkan nama kedua'))
            ],
          )
        ],
      ),
    );
  }
}
