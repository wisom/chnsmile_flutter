class ReimburseModel {
  int total;
  List<Reimburse> list;

  ReimburseModel.fromJson(Map<String, dynamic> json) {
    total = json['totalRows'];
    if (json['rows'] != null) {
      list = List<Reimburse>.empty(growable: true);
      json['rows'].forEach((v) {
        list.add(Reimburse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['list'] = list.map((v) => v.toJson()).toList();
    return data;
  }
}

class Reimburse {
  String id;

  ///统计单主键id
  String formId;//表单编号
  String reimbursementPersonName;//报销人姓名
  String reimbursementDate;//报销日期
  String reimbursementCause;//报销事由
  String remark;//备注
  int status;//状态（0未发送、1批阅中、2已备案、3已拒绝）
  int reviewStatus;//状态（0未发送、1批阅中、2已备案、3已拒绝）
  double budgetPriceTotal;//报销金额
  String userId;//发起人id
  String createName;//发起人
  String createTime;//发起时间

  Reimburse({
    this.id,
    this.formId,
    this.reimbursementPersonName,
    this.reimbursementDate,
    this.reimbursementCause,
    this.remark,
    this.status,
    this.reviewStatus,
    this.budgetPriceTotal,
    this.userId,
    this.createName,
    this.createTime
  });

  Reimburse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formId = json['formId'];
    reimbursementPersonName = json['reimbursementPersonName'];
    reimbursementDate = json['reimbursementDate'];
    reimbursementCause = json['reimbursementCause'];
    remark = json['remark'];
    status = json['status'];
    reviewStatus = json['reviewStatus'];
    budgetPriceTotal = json['budgetPriceTotal'];
    userId = json['userId'];
    createName = json['createName'];
    createTime = json['createTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['formId'] = this.formId;
    data['reimbursementPersonName'] = this.reimbursementPersonName;
    data['reimbursementDate'] = this.reimbursementDate;
    data['reimbursementCause'] = this.reimbursementCause;
    data['remark'] = this.remark;
    data['status'] = this.status;
    data['reviewStatus'] = this.reviewStatus;
    data['budgetPriceTotal'] = this.budgetPriceTotal;
    data['userId'] = this.userId;
    data['createName'] = this.createName;
    data['createTime'] = this.createTime;
    return data;
  }


}


