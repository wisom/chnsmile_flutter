import 'package:chnsmile_flutter/core/hi_state.dart';
import 'package:chnsmile_flutter/core/platform_method.dart';
import 'package:chnsmile_flutter/http/dao/repair_dao.dart';
import 'package:chnsmile_flutter/model/event_notice.dart';
import 'package:chnsmile_flutter/model/fund_manager_model.dart';
import 'package:chnsmile_flutter/model/repair_detail_model.dart';
import 'package:chnsmile_flutter/model/repair_model.dart';
import 'package:chnsmile_flutter/utils/common.dart';
import 'package:chnsmile_flutter/utils/format_util.dart';
import 'package:chnsmile_flutter/utils/hi_toast.dart';
import 'package:chnsmile_flutter/utils/view_util.dart';
import 'package:chnsmile_flutter/widget/appbar.dart';
import 'package:chnsmile_flutter/widget/border_time_line.dart';
import 'package:chnsmile_flutter/widget/oa_approve_dialog.dart';
import 'package:chnsmile_flutter/widget/oa_attach_detail.dart';
import 'package:chnsmile_flutter/widget/oa_one_text.dart';
import 'package:chnsmile_flutter/widget/oa_submit_button.dart';
import 'package:chnsmile_flutter/widget/oa_two_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hi_base/color.dart';
import 'package:hi_base/string_util.dart';
import 'package:hi_base/view_util.dart';

class InfoCollectionInfoPage extends StatefulWidget {
  final Map params;

  InfoCollectionInfoPage({Key key, this.params}) : super(key: key) {}

  @override
  _InfoCollectionInfoPageState createState() => _InfoCollectionInfoPageState();
}

class _InfoCollectionInfoPageState extends HiState<InfoCollectionInfoPage> {
  FundManagerModel repairModel;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: RefreshIndicator(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  _buildTopInfo(),
                ],
              ),
            ),
            onRefresh: loadData));
  }

  _buildAppBar() {
    return appBar('信息采集详情', rightTitle: "", rightButtonClick: () {});
  }

  _buildTopInfo() {
    return Column(
      children: [
        _buildName()
      ],
    );
  }

  _buildName() {
    return Row(
      children: [
        const Text("信息采集名称",
          style: TextStyle(
              color: HiColor.color_181717,
              fontSize: 14
          ),
        ),
        Container(
          height: 16,
          width: 48,
          margin: const EdgeInsets.fromLTRB(34, 0, 0, 0),
          decoration: BoxDecoration(
            color: HiColor.color_D8D8D8,
            borderRadius: BorderRadius.circular(9.5),
          ),
          child: const Text(
            "未发出",
            style: TextStyle(
                fontSize: 8,
                color: Colors.white
            ),
          ),
        )
      ],
    );
  }

  read() async {
    // try {
    //   EasyLoading.show(status: '加载中...');
    //   Map<String, dynamic> params = {};
    //   params['formId'] = repairModel?.schoolOaRepair?.formId;
    //   params['status'] = 2;
    //   params['kinds'] = "2";
    //   var result = await RepairDao.approve(params);
    //   PlatformMethod.sentTriggerUnreadToNative();
    //   var bus = EventNotice();
    //   bus.formId = widget.repair.formId;
    //   eventBus.fire(bus);
    //   EasyLoading.dismiss(animation: false);
    // } catch (e) {
    //   EasyLoading.dismiss(animation: false);
    //   showWarnToast(e.message);
    // }
  }


  delete() async {
    // try {
    //   EasyLoading.show(status: '加载中...');
    //   var result = await RepairDao.delete(widget.repair.id);
    //   BoostNavigator.instance.pop();
    //   EasyLoading.dismiss(animation: false);
    // } catch (e) {
    //   EasyLoading.dismiss(animation: false);
    //   showWarnToast(e.message);
    // }
  }

  Future<void> loadData() async {
    // try {
    //   EasyLoading.show(status: '加载中...');
    //   var result = await RepairDao.detail(widget.repair.id);
    //   setState(() {
    //     repairModel = result;
    //   });
    //   EasyLoading.dismiss(animation: false);
    // } catch (e) {
    //   EasyLoading.dismiss(animation: false);
    //   print(e);
    //   showWarnToast(e.message);
    // }
  }


  onSavePressed() async {
    onSubmitPressed(isSave: true);
  }

  onSubmitPressed({isSave = false}) async {
    // SchoolOaRepair repair = repairModel?.schoolOaRepair;
    // if (repair == null) {
    //   showWarnToast("获取数据异常，请关闭当前页面重进");
    //   return;
    // }
    // Map<String, dynamic> params = {};
    // params['id'] = repair.id;
    // params['cname'] = repair.cname;
    // params['dDate'] = repair.ddate;
    // params['repairStatus'] = repair.status;
    // params['deptName'] = repair.deptName;
    // params['repairKinds'] = repair.repairKinds;
    // params['repairMer'] = repair.repairMer;
    // params['tel'] = repair.tel;
    // params['email'] = repair.email;
    // params['repairAddress'] = repair.repairAddress;
    // params['content'] = repair.content;
    // params['schoolOaRepairApproveList'] = repairModel.schoolOaRepairApproveList;
    // params['type'] = repair.type;
    //
    // try {
    //   EasyLoading.show(status: '加载中...');
    //   var result = await RepairDao.submit(params, isSave: isSave);
    //   print(result);
    //   if (result['code'] == 200) {
    //     showWarnToast(isSave ? '保存成功' : '发布成功');
    //     EasyLoading.dismiss(animation: false);
    //     BoostNavigator.instance.pop();
    //   } else {
    //     print(result['message']);
    //     showWarnToast(result['message']);
    //     EasyLoading.dismiss(animation: false);
    //   }
    // } catch (e) {
    //   print(e);
    //   showWarnToast(e.message);
    //   EasyLoading.dismiss(animation: false);
    // }
  }
}
