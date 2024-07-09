import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(sonuc.toString(), style: TextStyle(fontSize: 50),),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayi 1.."),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayi 2.."),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;

                    int sayi1 = int.parse(alinanSayi1);
                    int sayi2 = int.parse(alinanSayi2);

                    int toplama = sayi1 + sayi2;

                    setState(() {
                      sonuc = toplama;
                    });
                  }, child: const Text("TOPLAMA")),
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;

                    int sayi1 = int.parse(alinanSayi1);
                    int sayi2 = int.parse(alinanSayi2);

                    int carpma = sayi1 * sayi2;

                    setState(() {
                      sonuc = carpma;
                    });
                  }, child: const Text("CARPMA")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
