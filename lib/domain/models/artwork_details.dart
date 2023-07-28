class ArtworkDetails {
  final String title;
  final String? desctription;
  final String artist;
  final String category;
  final String? yearOfCreation;
  final String? height;
  final String? width;
  final String? depth;
  final String price;
  final String imageUrl;
  final String artworkId;
  final String userId;
  final bool isSold;

  ArtworkDetails( {
    required this.title,
    required this.desctription,
    required this.artist,
    required this.category,
    required this.yearOfCreation,
    required this.height,
    required this.width,
    required this.depth,
    required this.price,
    required this.imageUrl,
    required this.artworkId,
    required this.userId,
      required this.isSold,
  });

  Map<String, dynamic> toJson(
      String artworkID, String artistName, String imageURL) {
    return {
      'title': title,
      'artworkId': artworkID,
      'userId': userId,
      'desctription': desctription,
      'artist': artistName,
      'category': category,
      'yearOfCreation': yearOfCreation,
      'height': height,
      'width': width,
      'depth': depth,
      'price': price,
      'imageUrl': imageURL,
      'isSold':isSold,
    };
  }

  static ArtworkDetails fromJson(Map<String, dynamic> json) {
    return ArtworkDetails(
      isSold:json['isSold'],
        artworkId: json['artworkId'],
        userId: json['userId'],
        title: json['title'],
        desctription: json['desctription'],
        artist: json['artist'],
        category: json['category'],
        yearOfCreation: json['yearOfCreation'],
        height: json['height'],
        width: json['width'],
        depth: json['depth'],
        price: json['price'],
        imageUrl: json['imageUrl']);
  }
}
