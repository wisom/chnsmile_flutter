import 'package:chnsmile_flutter/core/oa_base_tab_state.dart';
import 'package:chnsmile_flutter/flutter_sound/public/util/LogUtil.dart';
import 'package:chnsmile_flutter/http/dao/reimburse_manager_dao.dart';
import 'package:chnsmile_flutter/http/dao/student_leave_dao.dart';
import 'package:chnsmile_flutter/model/event_notice.dart';
import 'package:chnsmile_flutter/model/student_leave_model.dart';
import 'package:chnsmile_flutter/page/reimburse/reimburse_card.dart';
import 'package:chnsmile_flutter/page/student_leave/student_leave_approval_card.dart';
import 'package:chnsmile_flutter/page/student_leave/student_leave_notify_card.dart';
import 'package:chnsmile_flutter/utils/common.dart';
import 'package:chnsmile_flutter/widget/empty_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../model/reimburse_model.dart';

class StudentLeaveTabPage extends StatefulWidget {
  ///列表类型 1.我的发起；2.请假审批；3.收到通知/我的通知；5.缺勤汇总
  final String type;

  const StudentLeaveTabPage({Key key, this.type}) : super(key: key);

  @override
  _StudentLeaveTabPageState createState() => _StudentLeaveTabPageState();
}

class _StudentLeaveTabPageState extends OABaseTabState<StudentLeaveModel,
    StudentLeave, StudentLeaveTabPage> {
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    eventBus.on<EventNotice>().listen((event) {
      setState(() {
        // dataList.forEach((element) {
        //   if (element.formId == event.formId) {
        //     print("命中了....."+element.formId);
        //     element.reviewStatus = 2;
        //   }
        // });
      });
    });
  }

  @override
  void onPageShow() {}

  @override
  get contentChild => dataList.isNotEmpty
      ? ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.only(top: 10),
          itemCount: dataList.length,
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) =>
              _getCardByType(index))
      : isLoaded
          ? Container()
          : EmptyView(onRefreshClick: () {
              loadData(loadMore: false);
            });

  /// 进入详情
  void _onCellClick(StudentLeave item) {
    if (getEditStatus(item.status)) {
      BoostNavigator.instance
          .push('repair_add_page', arguments: {"id": item.id});
    } else {
      BoostNavigator.instance.push('repair_detail_page', arguments: {
        "item": item,
        "type": widget.type,
        "reviewStatus": item.status
      });
    }
  }

  @override
  Future<StudentLeaveModel> getData(int pageIndex) async {
    EasyLoading.show(status: '加载中...');
    isLoaded = true;
    try {
      StudentLeaveModel result =
          await StudentLeaveDao.list(pageIndex, 10, widget.type, "", "");
      EasyLoading.dismiss(animation: false);
      isLoaded = false;
      return result;
    } catch (e) {
      isLoaded = false;
      print(e);
      EasyLoading.dismiss(animation: false);
    }
  }

  @override
  List<StudentLeave> parseList(StudentLeaveModel result) {
    return result.list;
  }

  StatelessWidget _getCardByType(int index) {
    ///列表类型 1.我的发起；2.请假审批；3.收到通知/我的通知；5.缺勤汇总
    LogUtil.d("学生请假", "_getCardByType type=" + (widget.type ?? 0).toString());
    if (widget.type == "2") {
      return StudentLeaveApprovalCard(
          type: widget.type, item: dataList[index], onCellClick: _onCellClick);
    } else if (widget.type == "3") {
      return StudentLeaveNotifyCard(
          type: widget.type, item: dataList[index], onCellClick: _onCellClick);
    } else if (widget.type == "5") {
      return StudentLeaveApprovalCard(
          type: widget.type, item: dataList[index], onCellClick: _onCellClick);
    } else if (widget.type == "1") {
      return StudentLeaveApprovalCard(
          type: widget.type, item: dataList[index], onCellClick: _onCellClick);
    } else {
      return Container();
    }
  }
}
