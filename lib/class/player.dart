// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:quizeapplication/class/Quetions.dart';

class Player {
  static String name = "";
  static List<int> currect_anwer = [];
  static List<int> uncurrect_anwer = [];
  int? total_answer;

  checquetion(int yourchois, int idquetion) {
    if (yourchois == ListtOfQuetions.Listt_qutions![idquetion].Ansuwer) {
      currect_anwer.add(yourchois);
    } else {
      uncurrect_anwer.add(yourchois);
    }
  }
}
