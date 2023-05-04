import 'package:chnsmile_flutter/model/attach.dart';

class DocumentDetailModel {
  String id;
  String formId;
  String docId;
  String title;
  String content;
  String orgName;
  String dDate;
  String remark;
  int status;
  List<DocumentApproveInfoList> approves;
  List<Attach> attachs;
  String ddate;
  String cname;

  DocumentDetailModel(
      {this.id,
        this.formId,
        this.docId,
        this.title,
        this.content,
        this.orgName = "",
        this.dDate,
        this.remark,
        this.status,
        this.approves,
        this.attachs,
        this.ddate,
        this.cname});

  DocumentDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formId = json['formId'];
    docId = json['docId'];
    title = json['title'];
    content = json['content'];
    orgName = json['orgName'];
    dDate = json['dDate'];
    remark = json['remark'];
    status = json['status'];
    if (json['documentApproveInfoList'] != null) {
      approves = new List<DocumentApproveInfoList>();
      json['documentApproveInfoList'].forEach((v) {
        approves.add(new DocumentApproveInfoList.fromJson(v));
      });
    }
    if (json['documentEnclosureInfoList'] != null) {
      attachs = new List<Attach>();
      json['documentEnclosureInfoList'].forEach((v) {
        attachs
            .add(new Attach.fromJson(v));
      });
    }
    ddate = json['ddate'];
    cname = json['cname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['formId'] = this.formId;
    data['docId'] = this.docId;
    data['title'] = this.title;
    data['content'] = this.content;
    data['orgName'] = this.orgName;
    data['dDate'] = this.dDate;
    data['remark'] = this.remark;
    data['status'] = this.status;
    if (this.approves != null) {
      data['documentApproveInfoList'] =
          this.approves.map((v) => v.toJson()).toList();
    }
    if (this.attachs != null) {
      data['documentEnclosureInfoList'] =
          this.attachs.map((v) => v.toJson()).toList();
    }
    data['ddate'] = this.ddate;
    data['cname'] = this.cname;
    return data;
  }
}

class DocumentApproveInfoList {
  String id;
  String formId;
  String process;
  String kinds;
  String orgId;
  String orgName;
  String approveId;
  String approveName;
  String approveDate;
  String approveRemark;
  int floor;
  int sort;
  int status;
  String avatarImg;

  DocumentApproveInfoList(
      {this.id,
        this.formId,
        this.process,
        this.kinds,
        this.orgId,
        this.orgName,
        this.approveId,
        this.approveName,
        this.approveDate = "",
        this.approveRemark,
        this.floor,
        this.sort,
        this.status,
        this.avatarImg});

  DocumentApproveInfoList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formId = json['formId'];
    process = json['process'];
    kinds = json['kinds'];
    orgId = json['orgId'];
    orgName = json['orgName'];
    approveId = json['approveId'];
    approveName = json['approveName'];
    approveDate = json['approveDate'];
    approveRemark = json['approveRemark'];
    floor = json['floor'];
    sort = json['sort'];
    status = json['status'];
    avatarImg = json['avatarImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['formId'] = this.formId;
    data['process'] = this.process;
    data['kinds'] = this.kinds;
    data['orgId'] = this.orgId;
    data['orgName'] = this.orgName;
    data['approveId'] = this.approveId;
    data['approveName'] = this.approveName;
    data['approveDate'] = this.approveDate;
    data['approveRemark'] = this.approveRemark;
    data['floor'] = this.floor;
    data['sort'] = this.sort;
    data['status'] = this.status;
    data['avatarImg'] = this.avatarImg;
    return data;
  }
}
