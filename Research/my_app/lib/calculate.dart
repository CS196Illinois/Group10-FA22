class Calculate {
  String gender = "male";
  double weight = 0;
  int height = 0;
  int age = 0;
  double activity_level = 0;
  int goal = 0;

  Calculate(String g, double w, int h, int ag, double act, int go) {
    gender = g;
    weight = w;
    height = h;
    age = ag;
    activity_level = act;
    goal = go;
  }

  double calculateBasalMetabolicRate() {
    if (gender == "male") {
      return activity_level *
          ((88.4 + 6.077 * weight) + (12.19 * height) - (5.68 * age));
    } else {
      return activity_level *
          ((447.6 + 4.195 * weight) + (7.874 * height) - (4.33 * age));
    }
  }

  double calculateCaloricGoal() {
    return calculateBasalMetabolicRate() + (goal * 500);
  }
}
