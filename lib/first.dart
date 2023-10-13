import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array -listview '),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].name,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w200),
                          ),
                          Text(
                            list[index].number.toString(),
                            style: TextStyle(fontSize: 18,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  List<listadd> list = [
    listadd(name: 'Ajith',  number: 9072248598),
    listadd(name: 'Venu',   number: 9895687899),
    listadd(name: 'Sujith', number: 9589867789),
    listadd(name: 'Sumesh', number: 8985458879),
    listadd(name: 'Ramesh', number: 9859786569),
    listadd(name: 'Suresh', number: 9868457859),
  ];
}

class listadd {
  String name;
  int number;
  listadd({required this.name, required this.number});
}
