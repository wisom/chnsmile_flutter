import 'package:chnsmile_flutter/flutter_sound/public/util/LogUtil.dart';
import 'package:chnsmile_flutter/utils/common.dart';
import 'package:chnsmile_flutter/utils/format_util.dart';
import 'package:chnsmile_flutter/utils/view_util.dart';
import 'package:flutter/material.dart';
import 'package:hi_base/color.dart';
import 'package:hi_base/view_util.dart';
import '../../model/student_leave_model.dart';

///请假审批
class StudentLeaveApprovalCard extends StatelessWidget {
  final String type;
  final StudentLeave item;
  final ValueChanged<StudentLeave> onCellClick;

  const StudentLeaveApprovalCard(
      {Key key, this.type, this.item, this.onCellClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onCellClick(item);
        },
        child: Container(
          decoration: BoxDecoration(border: borderLine(context)),
          padding:
              const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 8),
          child: Column(
            children: [
              _buildTop(),
              // _buildContent(),
              hiSpace(height: 11),
              _buildCenter(),
              hiSpace(height: 11),
              line(context),
              hiSpace(height: 11),
              // _buildBottom(),
              _buildBottom()
            ],
          ),
        ));
  }

  _buildCenter() {
    return Row(
      children: [
        const Text(
          "请假开始时间  ",
          style: TextStyle(color: HiColor.color_181717_A50, fontSize: 12),
        ),
        Text(
          item.dDate ?? "",
          style: const TextStyle(color: HiColor.color_black_A60, fontSize: 12),
        )
      ],
    );
  }

  _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "请假人：" + (item.leaveStudentName ?? "") + "    请假 ",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_181717),
            ),
            Text(
              (item.hours ?? 0).toString(),
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_00B0F0),
            ),
            const Text(
              " 小时",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_181717),
            )
          ],
        ),
        Container(
          height: 24,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: _getStatusColor(), borderRadius: BorderRadius.circular(12)),
          child: Text(
            _getStatusText(),
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    );
  }

  ///列表类型 1.我的发起；2.请假审批；3.收到通知/我的通知；5.缺勤汇总
  Color _getStatusColor() {
    LogUtil.d("学生请假", "getStatusColor type=" + type+" reviewStatus="+(item.reviewStatus??0).toString());
    if (type == "2") {
      LogUtil.d("学生请假","type == 2");
      return buildOAApplyStatus(item.reviewStatus)[0];
    } else if (type == "3") {
      return buildOAApplyNoticeStatus(item.reviewStatus)[0];
    } else if (type == "5") {
      return buildOAStatus(item.reviewStatus)[0];
    } else {
      LogUtil.d("学生请假","type == other");
      return buildOAStatus(item.reviewStatus)[0];
    }
  }

  String _getStatusText() {
    LogUtil.d("学生请假", "getStatusColor type=" + type+" reviewStatus="+(item.reviewStatus??0).toString());
    if (type == "2") {
      LogUtil.d("学生请假","type == 2");
      return buildOAApplyStatus(item.reviewStatus)[1];
    } else if (type == "3") {
      return buildOAApplyNoticeStatus(item.reviewStatus)[1];
    } else if (type == "5") {
      return buildOAStatus(item.reviewStatus)[1];
    } else {
      LogUtil.d("学生请假","type == other");
      return buildOAStatus(item.reviewStatus)[1];
    }
  }

  _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "请假班级",
              style: TextStyle(fontSize: 12, color: HiColor.color_181717_A50),
            ),
            Text(
              "  " + item.className ?? "",
              style: const TextStyle(fontSize: 12, color: HiColor.color_181717),
            ),
          ],
        ),
        Text(
          "发起时间 " +
              dateYearMothAndDayAndMinutes(
                  (item.approveDate ?? "").replaceAll(".000", "")),
          style: const TextStyle(fontSize: 12, color: HiColor.color_181717_A50),
        )
      ],
    );
  }
}
