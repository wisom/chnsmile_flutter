import 'package:chnsmile_flutter/model/document_model.dart';
import 'package:chnsmile_flutter/utils/common.dart';
import 'package:chnsmile_flutter/utils/format_util.dart';
import 'package:chnsmile_flutter/utils/view_util.dart';
import 'package:flutter/material.dart';
import 'package:hi_base/view_util.dart';

class DocumentCard extends StatelessWidget {
  final Document item;
  final ValueChanged<Document> onCellClick;
  final String type;

  const DocumentCard({Key key, this.item, this.onCellClick, this.type})
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
              const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
          child: Column(
            children: [
              _buildTitle(),
              hiSpace(height: 10),
              _buildContent(),
            ],
          ),
        ));
  }

  _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(item.title,
              style: const TextStyle(fontSize: 13, color: Colors.black)),
        ),
        Container(
          height: 24,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buildOAStatus(item.status)[0],
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            buildOAStatus(item.status)[1],
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    );
  }

  _buildContent() {
    return Column(
      children: [
        Row(
          children: [
            Text('表单编号:${item.formId}',
                style: const TextStyle(fontSize: 13, color: Colors.grey)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('发起日期:${dateYearMothAndDayAndMinutes(item.ddate?.replaceAll(".000", ""))}',
                style: const TextStyle(fontSize: 12, color: Colors.grey))
          ],
        ),
      ],
    );
  }
}
