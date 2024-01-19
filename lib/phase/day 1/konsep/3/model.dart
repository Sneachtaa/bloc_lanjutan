class DataModel {
  int id;
  String name;
  String subname;
  String email;
  int age;
  String place;
  int birth;

  DataModel(
      {required this.id,
      required this.name,
      required this.subname,
      required this.email,
      required this.age,
      required this.birth,
      required this.place});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        name: json["name"],
        subname: json["subname"],
        email: json["email"],
        age: json["age"],
        birth: json["birth"],
        place: json["place"]);
  }

  Map<String, dynamic> toMap() {
    return {
      "id" : id ,
      "nama": name,
      "subname": subname,
      "email": email,
      "age": age,
      "place": place,
      "birth": birth
    };
  }
}
