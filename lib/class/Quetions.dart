// ignore_for_file: public_member_api_docs, sort_constructors_first
class Quetions {
  int id_qution = 0;
  String Quetion;
  int Ansuwer;
  List<String> options_answer;
  Quetions({
    required this.Quetion,
    required this.Ansuwer,
    required this.options_answer,
  }) {
    id_qution += 1;
  }
}

class ListtOfQuetions {
  static List<Quetions>? Listt_qutions;
  ListtOfQuetions() {
    Listt_qutions = [];
    Listt_qutions!.add(Quetions(
        Quetion: "بۆ یه‌که‌م جار قورئانی پیرۆز له‌سه‌رده‌می کێ دا نووسراوه‌ ؟ ",
        Ansuwer: 2,
        options_answer: [
          "له‌سه‌رده‌می عمر خطاب ( ڕه‌زای خوای لێ بێت )",
          "له‌سه‌رده‌می علی کوری ئەبوطالب ( ڕه‌زای خوای لێ بێت )",
          "له‌سه‌رده‌می عوسمان کوڕی عه‌ففان ( ڕه‌زای خوای لێ بێت )",
          "له‌سه‌رده‌می ئەبوبەکری سدیق ( ڕه‌زای خوای لێ بێت )"
        ]));
    Listt_qutions!.add(Quetions(
        Quetion: "پێغه‌مبه‌ر ( صلي الله علية وسلم ) چه‌ند نووسه‌ری هه‌بوو ؟ ",
        Ansuwer: 2,
        options_answer: [
          "پێغه‌مبه‌ر ( صلي الله علية وسلم ) بیست و یەک نووسه‌ری هه‌بوو ",
          "پێغه‌مبه‌ر ( صلي الله علية وسلم ) بیست نووسه‌ری هه‌بوو ",
          "پێغه‌مبه‌ر ( صلي الله علية وسلم ) بیست و شه‌ش نووسه‌ری هه‌بوو ",
          "پێغه‌مبه‌ر ( صلي الله علية وسلم ) بیست و نۆ نووسه‌ری هه‌بوو "
        ]));
    Listt_qutions!.add(Quetions(
        Quetion: "کۆکردنه‌وه‌ی قورئان ی پیرۆز له‌ساڵی چه‌ندی هجری بوو ؟ ",
        Ansuwer: 3,
        options_answer: [
          "له‌ ساڵی 21ی هجری بوو . ",
          "له‌ ساڵی 24ی هجری بوو . ",
          "له‌ ساڵی 27ی هجری بوو . ",
          "له‌ ساڵی 25ی هجری بوو . "
        ]));
    Listt_qutions!.add(Quetions(
        Quetion: "قورئان چه‌ند پیته‌ ؟",
        Ansuwer: 2,
        options_answer: ["3040750 ", "3040730 ", "3040740 ", "304078"]));
    Listt_qutions!.add(Quetions(
        Quetion: "قورئانی پیرۆز چه‌ند سوره‌ته‌ ؟ ",
        Ansuwer: 0,
        options_answer: [
          "114 سوره‌ته‌ . ",
          "110 سوره‌ته‌ . ",
          "111 سوره‌ته‌ . ",
          "1112 سوره‌ته‌ ."
        ]));
    Listt_qutions!.add(Quetions(
        Quetion: "قورئانی پیرۆز چه‌ند حیزبه‌ ؟ ",
        Ansuwer: 0,
        options_answer: [
          "60 حیزبه‌  ",
          "61 حیزبه‌  ",
          "55 حیزبه‌  ",
          "62 حیزبه‌ "
        ]));
    Listt_qutions!.add(Quetions(
        Quetion: "قورئان چه‌ند پیته‌ ؟",
        Ansuwer: 2,
        options_answer: ["3040750 ", "3040730 ", "3040740 ", "304078"]));
    Listt_qutions!.add(Quetions(
        Quetion: "قورئان چه‌ند پیته‌ ؟",
        Ansuwer: 2,
        options_answer: ["3040750 ", "3040730 ", "3040740 ", "304078"]));
  }

  void add_Quetion(Quetions temp) {
    Listt_qutions?.add(temp);
  }

  size() {
    return Listt_qutions == null ? 0 : Listt_qutions!.length;
  }
}
