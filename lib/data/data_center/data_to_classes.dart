
class DataToCallPage {
  final String callId;
  final String callerName;
  final String type;
  DataToCallPage(
    this.callId,
    this.callerName,
    this.type,
  );
}

class DataToChatBotPage {
  final String? assstname;
  final String? imgUrl;
  final String? sessioid;
  final String? assistantid;
  final String? herotag;
  final String? video;
  final bool? istalking;

  DataToChatBotPage(
    this.assstname,
    this.imgUrl,
    this.sessioid,
    this.assistantid,
    this.herotag,
    this.video,
    this.istalking,
  );
}

class DataToCommunityWidget {
  String groupName;
  String groupId;
  String imageUrl;
  // List<UserListItem> groupMembers;
  String groupType;
  String chatId;
  String type;
  DataToCommunityWidget(this.groupName, this.groupId, this.imageUrl,
       this.groupType, this.chatId, this.type);
}

class DataToMediapages {
  String fileTitle;
  String fileDec;
  String filePath;
  String filethumbnail;
  DataToMediapages(
      this.fileTitle, this.fileDec, this.filePath, this.filethumbnail);
}
