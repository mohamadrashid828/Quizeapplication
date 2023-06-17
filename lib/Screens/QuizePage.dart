import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizeapplication/Screens/StartQuize.dart';
import 'package:quizeapplication/class/player.dart';

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("پرسیار و وەلام"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/image/Feb-Business_9.jpg"),
                    ),
                    TextField(
                      onChanged: (v) {
                        Player.name = v;
                      },
                      decoration: InputDecoration(
                          labelText: "ناو",
                          hintText: "  ناوت بنوسە ...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FloatingActionButton.extended(
                        onPressed: () {
                          if (Player.name != "") {
                            Navigator.of(context)
                                .pushReplacementNamed("/QuizStart");
                          } else {
                            setState(() {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 1),
                                      backgroundColor: Colors.redAccent,
                                      content: Text("تکاییە ناوت داخل بکە")));
                            });
                          }
                        },
                        label: Text("دەستپێکردن"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
