import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future<bool> geriDon(BuildContext context) async {
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sayfa Y"),
      leading: IconButton(
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: WillPopScope(onWillPop: () => geriDon(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
