class AibotModell {
  final String? assistantId;
  final String? botid;
  final String? botimage;
  final String? botname;

  AibotModell({
    this.assistantId,
    this.botid,
    this.botimage,
    this.botname,
  });

  factory AibotModell.fromJson(Map<String, dynamic> json) {
    return AibotModell(
      assistantId: json['assistantId'] as String?,
      botid: json['botid'] as String?,
      botimage: json['botimage'] as String?,
      botname: json['botname'] as String?,
    );
  }
}