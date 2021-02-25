
class FilmInfo {

  String name;
  List<dynamic> genre;
  int score;
  String commnets;
  String year;
  String director;
  List<dynamic> producer;


  FilmInfo(
      this.name,
      this.genre,
      this.score,
      this.commnets,
      this.year,
      this.producer,
      this.director);

  FilmInfo.fromJson(Map<String, dynamic> json):
      name = json['name'],
      genre = json['genre'],
      score = json['score'],
      commnets = json['commnets'],
      year = json['year'],
      director = json['director'],
      producer = json['producer'];


  Map<String, dynamic> toJson() =>
      {
        'name' : name,
        'genre': genre as List<String>,
        'score': score ,
        'commnets': commnets,
        'year': year,
        'director': director,
        'producer': producer as List<String>

      };
}
