// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movies {
  Movies({
    //required this.averageRating,
    required this.backdropPath,
    
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.results,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalResults,
  });
  //late final double averageRating;
  late final String backdropPath;

  
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final String name;

  late final int page;
  late final String posterPath;
  late final bool public;
  late final List<Results> results;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalResults;

  Movies.fromJson(Map<String, dynamic> json) {
    //averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];

    
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];

    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    results = List.from(json['results']).map((e) => Results.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    //_data['average_rating'] = averageRating;
    _data['backdrop_path'] = backdropPath;

    
    _data['description'] = description;
    _data['id'] = id;
    _data['iso_3166_1'] = iso_3166_1;
    _data['iso_639_1'] = iso_639_1;
    _data['name'] = name;

    _data['page'] = page;
    _data['poster_path'] = posterPath;
    _data['public'] = public;
    _data['results'] = results.map((e) => e.toJson()).toList();
    _data['revenue'] = revenue;
    _data['runtime'] = runtime;
    _data['sort_by'] = sortBy;
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalResults;
    return _data;
  }

  @override
  bool operator ==(covariant Movies other) {
    if (identical(this, other)) return true;
  
    return 
      other.backdropPath == backdropPath &&
      
      other.description == description &&
      other.id == id &&
      other.iso_3166_1 == iso_3166_1 &&
      other.iso_639_1 == iso_639_1 &&
      other.name == name &&
      other.page == page &&
      other.posterPath == posterPath &&
      other.public == public &&
      other.results == results &&
      other.revenue == revenue &&
      other.runtime == runtime &&
      other.sortBy == sortBy &&
      other.totalPages == totalPages &&
      other.totalResults == totalResults;
  }

  @override
  int get hashCode {
    return backdropPath.hashCode ^
      
      description.hashCode ^
      id.hashCode ^
      iso_3166_1.hashCode ^
      iso_639_1.hashCode ^
      name.hashCode ^
      page.hashCode ^
      posterPath.hashCode ^
      public.hashCode ^
      results.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      sortBy.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;
  }

  @override
  String toString() {
    return 'Movies(backdropPath: $backdropPath, description: $description, id: $id, iso_3166_1: $iso_3166_1, iso_639_1: $iso_639_1, name: $name, page: $page, posterPath: $posterPath, public: $public, results: $results, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalResults: $totalResults)';
  }

  Movies copyWith({
     String? backdropPath,
     
     String? description,
     int? id,
     String? iso_3166_1,
     String? iso_639_1,
     String? name,
     int? page,
     String? posterPath,
     bool? public,
     List<Results>? results,
     int? revenue,
     int? runtime,
     String? sortBy,
     int? totalPages,
     int? totalResults,
  }) {
    return Movies(
      backdropPath: backdropPath ?? this.backdropPath,
      
      description: description ?? this.description,
      id: id ?? this.id,
      iso_3166_1: iso_3166_1 ?? this.iso_3166_1,
      iso_639_1: iso_639_1 ?? this.iso_639_1,
      name: name ?? this.name,
      page: page ?? this.page,
      posterPath: posterPath ?? this.posterPath,
      public: public ?? this.public,
      results: results ?? this.results,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      sortBy: sortBy ?? this.sortBy,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }
}



class Results {
  Results({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final double? voteAverage;
  late final double? voteCount;

  Results.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'] as String;
    video = json['video'];
    voteAverage = (json['vote_average']) == null ? null : num.parse(json['vote_average'].toString()).toDouble();
    voteCount = (json['vote_count']) == null ? null : num.parse(json['vote_count'].toString()).toDouble();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['media_type'] = mediaType;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['poster_path'] = posterPath;
    _data['release_date'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }
}
