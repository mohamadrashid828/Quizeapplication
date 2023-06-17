import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizeapplication/class/Quetions.dart';
import 'package:quizeapplication/class/player.dart';

class QuizStart extends StatefulWidget {
  const QuizStart({super.key});

  @override
  State<QuizStart> createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  List Charector = ["A", "B", "C", "D"];
  int index_quetion = 7;
  ListtOfQuetions quetions = ListtOfQuetions();
  Player _player = Player();
  int anwer_user = -1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("پرسیارەکان"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 5,
            ),
            Text("ناو :  " + Player.name,
                style: TextStyle(fontFamily: "rabar_22", fontSize: 16)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Center(
              child: Text(
                "پرسیاری  : " + (index_quetion + 1).toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        // Text(
                        //   (index_quetion + 1).toString() + ")   ",
                        //   style: TextStyle(fontSize: 25),
                        // ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.justify,
                              ListtOfQuetions
                                  .Listt_qutions![index_quetion].Quetion,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: () async {
                                  if (anwer_user == -1) {
                                    _player.checquetion(index, index_quetion);
                                    setState(() {
                                      anwer_user = index;
                                    });
                                    ListtOfQuetions.Listt_qutions!.length >
                                            index_quetion + 1
                                        ? Timer(Duration(seconds: 1), () {
                                            setState(() {
                                              index_quetion += 1;
                                              anwer_user = -1;
                                            });
                                          })
                                        : _showMyDialog();
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                tileColor: Color.fromARGB(226, 255, 193, 7),
                                title: Text(
                                  ListtOfQuetions.Listt_qutions![index_quetion]
                                      .options_answer[index]
                                      .toString(),
                                  style: TextStyle(fontFamily: "rabar_22"),
                                ),
                                leading: Container(
                                  width: 35,
                                  height: 35,
                                  child: Center(
                                      child: Text(
                                    Charector[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: color_fun(index)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("/");
                        },
                        icon: Icon(Icons.arrow_back_ios_sharp),
                        label: Text("پەرەی سەرەکی")),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  color_fun(int index) {
    if (index == ListtOfQuetions.Listt_qutions![index_quetion].Ansuwer &&
        anwer_user != -1) {
      return Colors.green;
    } else if (index == anwer_user && anwer_user != -1) {
      return Color.fromARGB(255, 219, 67, 29);
    } else {
      return Color.fromARGB(255, 224, 224, 224);
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: Text('ئەنجام '),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("  کۆی وەلامە راستەکانت بریتین لە   " +
                      Player.currect_anwer.length.toString()),
                  Text("کۆی پرسیارەکان بریتی بوون لە  " +
                      ListtOfQuetions.Listt_qutions!.length.toString()),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('دوبارە هەولدان'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/QuizStart");
                },
              ),
              TextButton(
                child: Text('داخستن'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
