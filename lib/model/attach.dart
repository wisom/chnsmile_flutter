class Attach {
  String attachId;
  String attachUrl;
  String origionName;
  String attachSuffix;
  String attachSizeInfo;

  Attach(
      {this.attachId,
        this.attachUrl,
        this.origionName,
        this.attachSuffix,
        this.attachSizeInfo});

  Attach.fromJson(Map<String, dynamic> json) {
    attachId = json['attachId'];
    attachUrl = json['attachUrl'];
    origionName = json['origionName'];
    attachSuffix = json['attachSuffix'];
    attachSizeInfo = json['attachSizeInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['attachId'] = this.attachId;
    data['attachUrl'] = this.attachUrl;
    data['origionName'] = this.origionName;
    data['attachSuffix'] = this.attachSuffix;
    data['attachSizeInfo'] = this.attachSizeInfo;
    return data;
  }

  @override
  String toString() {
    return attachUrl;
  }
}