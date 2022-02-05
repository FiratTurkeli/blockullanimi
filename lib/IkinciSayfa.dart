import 'package:bloc_kullanimi/SayacCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Ikinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            BlocBuilder<SayacCubit, int>(
                builder: (context, sayacDegeri){
                  return Text("$sayacDegeri");
                }
            ),

            ElevatedButton(
                onPressed: (){
                  context.read<SayacCubit>().SayaciArttir();

                },
                child: Text("Sayac arttır")),
            ElevatedButton(
                onPressed: (){
                  context.read<SayacCubit>().SayaciAzalt(2);

                },
                child: Text("Sayac azalt"))

          ],
        ),
      ),

    );
  }
}
