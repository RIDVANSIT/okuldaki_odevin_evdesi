class Character {
  int id;
  String name;
  String status;
  String species;
  String gender;
  String image;
  String location;
  String origin;
   Character.fromMap(Map<String,dynamic> map):
  id=map["id"],
  name=map["name"],
  status=map["status"],
  species=map["species"],
  gender=map["gender"],
  image=map["image"],
  location=map["location"]["name"],
  origin=map["origin"]["name"]
  ;
}