import 'package:flutter/material.dart';
void main() => runApp(my());

class my extends StatefulWidget {
  const my({super.key});

  @override
  State<my> createState() => _myState();
}

class _myState extends State<my> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var b=false;
  var m=false;
  List<String> coll=['ADITYA ENGINEERING COLLEGE','ADITYA ENGINEERING COLLEGE AND TECHNOLOGY','ADITYA COLLEGE OF ENGINEERING'];
  var c=Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child: Column(
                children: [
                  CheckboxMenuButton(value:b,
                    onChanged: (val){
                      setState(() {
                        (b==false)?b=true:b=false;
                      });
                    },
                    child: Text("I'm Not A Robot!"),
                    trailingIcon: Icon(Icons.cached_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SwitchListTile(
                        title: Text("ALLOW NOTIFICATIONS"),
                        value: m,
                        onChanged: (val){
                          setState(() {
                            (m==false)?m=true:m=false;}
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 20,),
                  DropdownMenu(dropdownMenuEntries: coll.map<DropdownMenuEntry<String>>((e) {
                    return DropdownMenuEntry(value: e, label: e);
                  }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child: Container(
                        height: 40,
                        width: 80,
                        color: Colors.orange,
                        child: Center(child: Text("SUBMIT")),),
                      onTap: (){
                        print("VERIFIED");
                      },
                    ),
                  ),
                ],
              ),
              ),
        ),
        );
    }
}