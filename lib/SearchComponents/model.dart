class Car_Model {
  int index;
  String brand;
  String model;
  String seater;
  String picture;
  String owner;

  Car_Model({this.index, this.brand, this.model, this.seater, this.picture,this.owner});

  Car_Model.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    brand = json['Brand'];
    model = json['model'];
    seater = json['seater'];
    picture = json['picture'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    data['Brand'] = this.brand;
    data['model'] = this.model;
    data['seater'] = this.seater;
    data['picture'] = this.picture;
    data['owner'] = this.owner;
    return data;
  }
}

