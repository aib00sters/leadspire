class IceServer {
  final List<String> urls;
  final String? username;
  final String? credential;

  IceServer({
    required this.urls,
    this.username,
    this.credential,
  });

  factory IceServer.fromJson(Map<String, dynamic> json) {
    return IceServer(
      urls: List<String>.from(json['urls']),
      username: json['username'],
      credential: json['credential'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'urls': urls,
      if (username != null) 'username': username,
      if (credential != null) 'credential': credential,
    };
  }
}

