class Profile{
  String name;
  String age;
  String condition;
  Profile({this.name,this.age,this.condition});

  Profile.fromJson(Map<String, dynamic> json, String documentId){
    name = json['Name'];
    age = json['Age'];
    condition = json['Condition'];
  }

  Map<String, dynamic> toJson() =>{
    'Name':name,
    'Age':age,
    'Condition':condition
  };
}

