class SurveyDetails {
  int vaccine, fever, cough, breath, chills, pain, smell, fatigue, diarrhea,
      exp, travel, covid;

  SurveyDetails(this.vaccine,
      this.fever, this.cough, this.breath, this.chills, this.pain, this.smell,
      this.fatigue,
      this.diarrhea, this.exp, this.travel, this.covid);

  SurveyDetails.fromJson(Map<String, dynamic> json, String documentId){
    vaccine = json['Vaccine'];
    fever = json['Fever'];
    cough = json['Cough'];
    breath = json['Breath'];
    chills = json['Chills'];
    pain = json['Pain'];
    smell = json['Smell'];
    fatigue = json['Fatigue'];
    diarrhea = json['Diarrhea'];
    exp = json['Exp'];
    travel = json['Travel'];
    covid = json['Covid'];
  }
  Map<String, dynamic> toJson() =>{
    'Vaccine':vaccine,
    'Fever':fever,
    'Cough':cough,
    'Breath':breath,
    'Chills':chills,
    'Pain':pain,
    'Smell':smell,
    'Fatigue':fatigue,
    'Diarrhea':diarrhea,
    'Exp':exp,
    'Travel':travel,
    'Covid':covid
  };
}