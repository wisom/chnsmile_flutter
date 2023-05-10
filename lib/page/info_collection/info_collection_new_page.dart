import 'package:chnsmile_flutter/constant/hi_constant.dart';
import 'package:chnsmile_flutter/core/hi_state.dart';
import 'package:chnsmile_flutter/http/dao/attach_dao.dart';
import 'package:chnsmile_flutter/http/dao/default_apply_dao.dart';
import 'package:chnsmile_flutter/http/dao/repair_dao.dart';
import 'package:chnsmile_flutter/model/default_apply_model.dart';
import 'package:chnsmile_flutter/model/local_file.dart';
import 'package:chnsmile_flutter/model/oa_people.dart';
import 'package:chnsmile_flutter/model/repair_detail_model.dart';
import 'package:chnsmile_flutter/model/sys_org_model.dart';
import 'package:chnsmile_flutter/model/upload_attach.dart';
import 'package:chnsmile_flutter/utils/common.dart';
import 'package:chnsmile_flutter/utils/format_util.dart';
import 'package:chnsmile_flutter/utils/hi_toast.dart';
import 'package:chnsmile_flutter/utils/list_utils.dart';
import 'package:chnsmile_flutter/utils/view_util.dart';
import 'package:chnsmile_flutter/widget/appbar.dart';
import 'package:chnsmile_flutter/widget/border_time_line.dart';
import 'package:chnsmile_flutter/widget/normal_input.dart';
import 'package:chnsmile_flutter/widget/normal_multi_input.dart';
import 'package:chnsmile_flutter/widget/normal_select.dart';
import 'package:chnsmile_flutter/widget/oa_submit_button.dart';
import 'package:chnsmile_flutter/widget/select_attach.dart';
import 'package:chnsmile_flutter/widget/star.dart';
import 'package:chnsmile_flutter/widget/w_pop/w_popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hi_base/color.dart';
import 'package:hi_base/string_util.dart';
import 'package:hi_base/view_util.dart';
import 'package:hi_cache/hi_cache.dart';

class InfoCollectionNewPage extends StatefulWidget {
  final Map params;
  String id;

  InfoCollectionNewPage({Key key, this.params}) : super(key: key) {
    id = params['id'];
  }

  @override
  _InfoCollectionNewPageState createState() => _InfoCollectionNewPageState();
}

class _InfoCollectionNewPageState extends HiState<InfoCollectionNewPage> {
  RepairDetailModel model;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    loadDefaultData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadDefaultData() async {
    try {
      EasyLoading.show(status: '加载中...');
      var result = await DefaultApplyDao.get();
      // if (isEdit) {
      //   var result1 = await RepairDao.detail(widget.id);
      //   setState(() {});
      //   isLoaded = true;
      // }
      setState(() {});
      SysOrgModel rs = await RepairDao.getSysOrg();
      setState(() {
        if (rs == null || rs.list.isEmpty) {
          showWarnToast("部门数据为空，请联系管理员添加");
        }
      });
      isLoaded = true;
      EasyLoading.dismiss(animation: false);
    } catch (e) {
      isLoaded = true;
      print(e);
      EasyLoading.dismiss(animation: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: isLoaded ? _buildTop(context) : Container(),
    );
  }

  Padding _buildTop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 92, 19, 76),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 17, 12, 21),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                const Text(
                  "学生健康码收集",
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: HiColor.color_181717,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 12, 0, 10),
                  decoration: const BoxDecoration(
                      color: HiColor.color_F2F2F7,
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: const TextField(
                    style: TextStyle(color: Colors.black, fontSize: 11),
                  ),
                ),
                _buildRange(),
                line(context),
                hiSpace(height: 20),
                _buildTime()
              ],
            ),
          ),
          _buildFillQuestion(),
          _buildAddQuestion(),
        ],
      ),
    );
  }

  Column _buildFillQuestion() {
    return Column(children: [
      // _buildFillTop(),
      _buildAddOption(),
    ]);
  }

  InkWell _buildAddOption() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 17, 11, 17),
              child: Icon(Icons.add, size: 24, color: HiColor.color_5A5A5A),
            ),
            Text(
              "新增选项",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_5A5A5A),
            )
          ],
        ),
      ),
    );
  }

  Row _buildFillTop(bool canEdit) {
    return Row(
      children: [
        Expanded(
            child: Row(
          children: const [
            Text(
              "01.",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_00B0F0),
            ),
            Text(
              "是否有外出经历",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_181717),
            ),
          ],
        )),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Icon(Icons.delete, size: 24, color: HiColor.color_00B0F0),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Icon(Icons.menu, size: 24, color: HiColor.color_00B0F0),
        )
      ],
    );
  }

  InkWell _buildAddQuestion() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 17, 11, 17),
              child: Icon(Icons.add, size: 24, color: HiColor.color_00B0F0),
            ),
            Text(
              "添加问题",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: HiColor.color_00B0F0),
            )
          ],
        ),
      ),
    );
  }

  Padding _buildRange() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "参与范围",
              style: TextStyle(
                color: HiColor.color_181717,
                fontSize: 12,
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                  child: Text(
                    "初一三班-班级群、初一三班-班级群初一三班-班级群、初一三班-班级群初一三班-班级群、初一三班-班级群初一三班-班级群、初一三班-班级群",
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: HiColor.color_181717,
                      fontSize: 12,
                    ),
                  ),
                )),
            Icon(Icons.keyboard_arrow_right,
                size: 24, color: HiColor.color_787777)
          ],
        ));
  }

  Column _buildTime() {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "有效时间",
            style: TextStyle(
              fontSize: 12,
              color: HiColor.color_181717,
            ),
          ),
          const Expanded(
              flex: 1,
              child: Text(
                "开始",
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 12, color: HiColor.color_181717),
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(13, 0, 0, 0),
            height: 27,
            width: 127,
            decoration: const BoxDecoration(
              color: HiColor.color_F7F7F7,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: const Center(
              child: Text(
                "2040 - 03 - 01 12:17",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
            ),
          )
        ]),
        hiSpace(height: 11),
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: Text(
                "结束",
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 12, color: HiColor.color_181717),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(13, 0, 0, 0),
              height: 27,
              width: 127,
              decoration: BoxDecoration(
                color: HiColor.color_F7F7F7,
                border: Border.all(width: 1, color: HiColor.color_D8D8D8),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: const Center(
                child: Text(
                  "2040 - 03 - 01 12:17",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black54,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  /// 未发出状态
  bool get isUnSend {
    if (model?.schoolOaRepair == null) {
      return false;
    }
    return model?.schoolOaRepair?.status == 0;
  }

  _buildAppBar() {
    return appBar('新建信息采集表', rightTitle: '', rightButtonClick: () {});
  }
}
