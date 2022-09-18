class Source {
  var id;
  var name;

  Source({this.id,  this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }
}
