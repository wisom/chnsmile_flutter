import 'fund_manager_apply_param.dart';
import 'fund_manager_approve.dart';
import 'fund_manager_item_param.dart';

class FundManagerDetail {
  String id;

  ///统计单主键id
  String formId;

  ///统计单名称
  String orgName;
  String orgId;

  ///统计单描述
  String content;
  String remark;
  double budget; //预算总金额
  String needDate;//需求日期
  int status;
  String createTime;//发起日期
  List<FundManagerApprove> fundClaimApproveParamList;
  List<FundManagerItemParam> fundItemParamList;
  List<FundManagerApplyParam> fundApplyAccessoryParamList;

  FundManagerDetail(
      {this.id,
      this.formId,
      this.orgName,
      this.orgId,
      this.content,
      this.remark,
      this.budget,
      this.status,
      this.needDate,
      this.createTime,
      this.fundClaimApproveParamList,
      this.fundItemParamList,
      this.fundApplyAccessoryParamList});

  FundManagerDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formId = json['formId'];
    orgName = json['orgName'];
    orgId = json['orgId'];
    content = json['content'];
    remark = json['remark'];
    budget = json['budget'];
    status = json['status'];
    needDate = json['needDate'];
    createTime = json['createTime'];
    if (json['fundClaimApproveParamList'] != null) {
      fundClaimApproveParamList =
          List<FundManagerApprove>.empty(growable: true);
      json['fundClaimApproveParamList'].forEach((v) {
        fundClaimApproveParamList.add(FundManagerApprove.fromJson(v));
      });
    }
    if (json['fundItemParamList'] != null) {
      fundItemParamList = List<FundManagerItemParam>.empty(growable: true);
      json['fundItemParamList'].forEach((v) {
        fundItemParamList.add(FundManagerItemParam.fromJson(v));
      });
    }
    if (json['fundApplyAccessoryParamList'] != null) {
      fundApplyAccessoryParamList =
          List<FundManagerApplyParam>.empty(growable: true);
      json['fundApplyAccessoryParamList'].forEach((v) {
        fundApplyAccessoryParamList.add(FundManagerApplyParam.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['formId'] = this.formId;
    data['orgName'] = this.orgName;
    data['orgId'] = this.orgId;
    data['content'] = this.content;
    data['remark'] = this.remark;
    data['budget'] = this.budget;
    data['status'] = this.status;
    data['needDate'] = this.needDate;
    data['createTime'] = this.createTime;
    data['fundClaimApproveParamList'] = this.fundClaimApproveParamList;
    return data;
  }

  @override
  String toString() {
    return 'FundManagerDetail{id: $id, formId: $formId, orgName: $orgName, orgId: $orgId, content: $content, remark: $remark, budget: $budget, needDate: $needDate, status: $status, createTime: $createTime, fundClaimApproveParamList: $fundClaimApproveParamList, fundItemParamList: $fundItemParamList, fundApplyAccessoryParamList: $fundApplyAccessoryParamList}';
  }
}
