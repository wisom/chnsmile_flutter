
import 'package:chnsmile_flutter/utils/utils.dart';

class HiConstant {
  // static String baseUrl = 'https://www.csmiledu.com/';// base url
  // static String baseUrl = 'http://121.199.18.201/';// base url
  // static String baseUrl = 'https://school.csmiledu.com/';// base url
  static String baseUrl = 'http://yun3.csmiledu.com/';// base url
  // static const String originBaseUrl = 'https://www.csmiledu.com/';// base url不变的
  // static const String originBaseUrl = 'http://121.199.18.201/';// base url不变的
  static const String originBaseUrl = 'http://yun3.csmiledu.com/';// base url不变的
  static const String privartUrl = originBaseUrl + 'app-api/app/school/page/platform/WX_USER_PRIVACY'; // 隐私页面
  static const String defaultSet = originBaseUrl + 'platformRegionUser/student/default/set'; // 设置默认小孩
  static const String studentList = originBaseUrl + 'platformRegionUser/student/list'; // 获取小孩列表
  static const String getPlatform = originBaseUrl + 'platformRegionUser/default/list'; // 获取路由表
  static const String homeList = 'app-api/app/school/getProfileAndBeautifulList'; // 首页
  static const String oaPermissionList = 'app-api/hasAppMenus'; // oa权限
  static const String buttonPermission = 'app-api/hasPermission'; // oa权限
  static const String getAllMark = 'app-api/sysBadge/getAll'; // 角标
  static const String getMark = 'app-api/sysBadge/get'; // 单个角标
  static const String updatePwd = 'app-api/sysUser/updatePwd'; // 修改密码
  static const String sendMsg = 'app-api/sms/sendMsg'; // 发送验证码
  static const String validateMsg = 'app-api/sms/validateMsg'; // 验证密码
  static const String validateMsg2 = 'app-api/sms/appValidateMsg'; // 验证密码
  static const String newsList = originBaseUrl + 'app-api/app/school/news/list/EXPORT_FORUM'; // 专家论坛
  static const String campusList = 'app-api/app/school/news/list/CAMPUS_INFO'; // 校园资讯
  static const String weeklyRecipeList = 'app-api/app/school/news/list/WEEKLY_FOODS'; // 每周食谱
  static const String schoolHomeNotice = 'app-api/schoolHomeNotice/page'; // 通知
  static const String schoolReceiveNoticeList = 'app-api/school-oa/info/my/receive'; // 收到的通知
  static const String schoolSendNoticeList = 'app-api/school-oa/info/my/send'; // 发出的通知
  static const String weeklyContestList = originBaseUrl + 'app-api/platformWeeklyCompetition/received'; // 每周竞赛
  static const String weeklyContestDetail = originBaseUrl + 'app-api/platformWeeklyCompetition/detailInfo'; // 每周竞赛
  static const String weeklyContestSubmit = originBaseUrl + 'app-api/platformWeeklyCompetition/submitOptions'; // 每周竞赛
  static const String voteList = 'app-api/app/school/vote/received'; // 校园投票
  static const String schoolVoteList = 'app-api/schoolHomeVote/page'; // 学校投票
  static const String salaryList = 'app-api/schoolOaSalary/mySalaryPage'; // 薪资列表
  static const String teacherContactList = 'app-api/app/school/teacher/contact/colleagues'; // 通讯录
  static const String imContactList = 'app-api/sysImRecentContact/getRecentContactList'; // IM消息
  static const String family2ContactList = 'app-api/app/school/teacher/contact/student/parents'; // 通讯录
  static const String voteDetail = 'app-api/app/school/vote/detail'; // 校园详情
  static const String voteDetailResult = 'app-api/schoolHomeVote/detailCount'; // 校园详情
  static const String voteSchoolDetail = 'app-api/schoolHomeVote/detail'; // 校园详情
  static const String voteSchoolClass = 'app-api/app/school/teacher/contact/student/class'; // 校园详情
  static const String voteSubmitOptions = 'app-api/app/school/vote/submitOptions'; // 提交投票
  static const String profileSubmitOptions = 'app-api/app/user/updateInfo'; // 用户信息修改
  static const String voteAdd = 'app-api/schoolHomeVote/add'; // 投票提交
  static const String voteSave = 'app-api/schoolHomeVote/save'; // 投票保存
  static const String voteEdit = 'app-api/schoolHomeVote/edit'; // 投票提交
  static const String voteChangeStatus = 'app-api/schoolHomeVote/changeStatus'; // 修改状态
  static const String noticeSubmit = 'app-api/school-oa/info/addInfo'; // 通知提交
  static const String noticeSave = 'app-api/school-oa/info/saveInfo'; // 通知保存
  static const String teacherNoticeSave = 'app-api/schoolHomeNotice/add'; // 老师通知保存
  static const String teacherNoticeEdit = 'app-api/schoolHomeNotice/edit'; // 老师通知修改
  static const String teacherPerformanceSave = 'app-api/schoolBehavior/add'; // 老师通知保存
  static const String teacherGrowthSave = 'app-api/schoolGrowtharchive/add'; // 老师通知保存
  static const String teacherPerformanceEdit = 'app-api/schoolBehavior/edit'; // 老师通知保存
  static const String teacherGrowthEdit = 'app-api/schoolGrowtharchive/edit'; // 老师通知保存
  static const String teacherHomeWorkSave = 'app-api/schoolHomeworkNotice/add'; // 老师作业保存
  static const String teacherHomeWorkEdit = 'app-api/schoolHomeworkNotice/edit'; // 老师作业编辑
  static const String documentSave = 'app-api/school-oa/document/addDocument'; // 公文保存
  static const String repairSubmit = 'app-api/school-oa/repair/repairSubmit'; // 报修提交
  static const String classTransferSubmit = 'app-api/school-oa/change/sendChange'; // 报修提交
  static const String classTransferSave = 'app-api/school-oa/change/addChange'; // 报修提交
  static const String documentSubmit = 'app-api/school-oa/document/submitDocument'; // 公文提交
  static const String repairApply = 'app-api/school-oa/repair/repairApply'; // 报修保存
  static const String repairDelete = 'app-api/school-oa/repair/repairDelete'; // 删除
  static const String classTransferDelete = 'app-api/school-oa/change/deleteChange'; // 删除
  static const String documentDelete = 'app-api/school-oa/document/deleteDocument'; // 删除
  static const String repairRevoke = 'app-api/school-oa/repair/repairRevoke'; // 撤回
  static const String classTransferRevoke = 'app-api/school-oa/change/changeRevoke'; // 撤回
  static const String documentRevoke = 'app-api/school-oa/document/documentRevoke'; // 撤回
  static const String schoolNoticeDelete = 'app-api/school-oa/info/deleteInfo'; // 通知删除
  static const String schoolNoticeRevoke = 'app-api/school-oa/info/infoRevoke'; // 通知撤销
  static const String teacherNoticeRevoke = 'app-api/schoolHomeNotice/changeStatus'; // 通知删除撤销
  static const String teacherNoticeDelete = 'app-api/schoolHomeNotice/delete'; // 通知删除撤销
  static const String teacherHomeWorkDelete = 'app-api/schoolHomeworkNotice/delete'; // 作业删除
  static const String teacherHomeWorkRevoke = 'app-api/schoolHomeworkNotice/changeStatus'; // 作业撤销
  static const String homeWorkRead = 'app-api/app/school/homework/changeStatus'; // 作业撤销
  static const String feedback = originBaseUrl + 'app-api/platformFeedback/submit'; // 意见反馈
  static const String homeWorkNoticeRemind = 'app-api/schoolHomeworkNotice/remind'; // 作业提醒回复
  static const String schoolNoticeRemind = 'app-api/school-oa/info/remind'; // 提醒回复
  static const String schoolTeacherNoticeRemind = 'app-api/schoolHomeworkNotice/remind'; // 提醒回复
  static const String schoolTeacherHomeWorkRemind = 'app-api/schoolHomeNotice/remind'; // 提醒回复
  static const String schoolNoticeReply = 'app-api/school-oa/info/read'; // 通知回复
  static const String documentReady = 'app-api/school-oa/document/ready'; // 公文阅读
  static const String repairApprove = 'app-api/school-oa/repair/approve'; // 审批，阅读
  static const String classTransferApprove = 'app-api/school-oa/change/read'; // 审批，阅读
  static const String documentApprove = 'app-api/school-oa/document/reply'; // 公文审批，阅读
  static const String documentApprovePc = 'app-api/school-oa/document/approvePc'; // 判断用户是否有续签功能和获取所有的批阅人
  static const String documentAddApprove = 'app-api/school-oa/document/addApprove'; // 添加批阅人
  static const String documentRemoveApprove = 'app-api/school-oa/document/removeApprove'; // 删除批阅人
  static const String defalutApply = 'app-api/school-oa/manage/defaultRepair'; // 默认审批人，通知人列表
  static const String defalutDocumentApply = 'app-api/school-oa/manage/defaultDocument'; // 公文默认审批人，通知人列表
  static const String transcriptList = 'app-api/app/school/exam/student/score/list'; // 成绩单列表
  static const String transcriptTeacherList = 'app-api/schoolExamination/examList'; // 成绩单列表
  static const String transcriptTeacherTab1 = 'app-api/schoolExamination/classList'; // 成绩单列表
  static const String transcriptTeacherTab1Detail= 'app-api/schoolExamination/classScoreRating'; // 成绩单列表
  static const String transcriptTeacherTab2 = 'app-api/schoolExamination/classStudentTree'; // 成绩单列表
  static const String transcriptTeacherTab2Detail = 'app-api/schoolExamination/courseScoreInfo'; // 成绩单列表
  static const String notifyList = 'app-api/app/school/notice/received'; // 通知列表
  static const String notifyReadList = 'app-api/schoolHomeNotice/detailClassParentInfo'; // 通知未读，已读列表
  static const String homeWorkReadList = 'app-api/schoolHomeworkNotice/detailClassParentInfo'; // 通知未读，已读列表
  static const String familyContactList = 'app-api/app/school/student/class/teacherContact'; // 家长通讯录列表
  static const String documentList = 'app-api/school-oa/document/list'; // 公文流转
  static const String sysOrgList = 'app-api/school-oa/manage/sysOrg/list'; // 维修部门列表
  static const String vacationList = 'app-api/school-oa/leave/list'; // 请假
  static const String vacationDetail = 'app-api/school-oa/leave/detail'; // 详情
  static const String teacherPerformanceCount = 'app-api/schoolBehavior/studentBehaviorCount'; // 详情
  static const String teacherGrowthCount = 'app-api/schoolGrowtharchive/studentCount'; // 详情
  static const String teacherPerformanceDetail = 'app-api/schoolBehavior/detail'; // 详情
  static const String teacherGrowthDetail = 'app-api/schoolBehavior/detail'; // 详情
  static const String vacationSubmit = 'app-api/school-oa/leave/submitLeave'; // 提交
  static const String vacationSave = 'app-api/school-oa/leave/saveLeave'; // 保存
  static const String vacationInit = 'app-api/school-oa/leave/initData'; // 获取初始化数据
  static const String vacationGetType = 'app-api/school-oa/leaveWorkTime/getType'; // 获取上班类型
  static const String vacationDefaultLeave = 'app-api/school-oa/manage/defaultLeave'; // 获取初始化数据
  static const String vacationRevoke = 'app-api/school-oa/leave/leaveRevoke'; // 撤销
  static const String vacationDelete = 'app-api/school-oa/leave/deleteLeave'; // 删除
  static const String vacationReply = 'app-api/school-oa/leave/reply'; // 审批
  static const String vacationRead = 'app-api/school-oa/leave/read'; // 阅读
  static const String vacationCalculation = 'app-api/school-oa/leave/calculation'; // 计算请假时长
  static const String classTransferList = 'app-api/school-oa/change/plan'; // 调课列表
  static const String classTransferApproval2 = 'app-api/school-oa/change/approvalNotice'; // 调课列表
  static const String classTransferApproval3 = 'app-api/school-oa/change/notice'; // 调课列表
  static const String classTransferApproval4 = 'app-api/school-oa/change/myChange'; // 调课列表
  static const String classTransferApproval5 = 'app-api/school-oa/change/myClassChange'; // 调课列表
  static const String classTransferDetail = 'app-api/school-oa/change/detail'; // 调课详情
  static const String classTransferDetail2 = 'app-api/school-oa/change/approvalNoticeView'; // 调课详情
  static const String getClassAndCourse = 'app-api/school-oa/change/getClassAndCourse'; // 调课详情
  static const String classPlan = 'app-api/school-oa/change/classPlan'; // 调课详情
  static const String classHead = 'app-api/school-oa/change/classHead'; // 查询班主任
  static const String notifyChangeStatus = 'app-api/app/school/notice/changeStatus'; // 读通知
  static const String homeWorkList = 'app-api/app/school/homework/received'; // 作业列表
  static const String teacherHomeWorkList = 'app-api/schoolHomeworkNotice/page'; // 老师作业列表
  static const String homeWorkDetail = 'app-api/app/school/homework/detail'; // 作业详情
  static const String teacherHomeWorkDetail = 'app-api/schoolHomeworkNotice/detail'; // 作业详情
  static const String repairDetail = 'app-api/school-oa/repair/repairView'; // 报修详情
  static const String documentDetail = 'app-api/school-oa/document/detail'; // 公文流转详情
  static const String schoolPerformanceList = 'app-api/app/school/behavior/list'; // 在校表现
  static const String growthFileList = 'app-api/app/school/growtharchive/list'; // 成长档案
  static const String teacherPerformanceDict = 'app-api/schoolBehavior/typeDict'; // 在校表现类型字典
  static const String teacherGrowthDict = 'app-api/schoolBehavior/typeDict'; // 在校表现类型字典
  static const String personDetail = 'app-api/app/user/myInfoAndchildInfo'; // 用户信息
  static const String schoolNoticeDetail2 = 'app-api/school-oa/info/detail'; // 校务通知详情
  static const String schoolNoticeDetail = 'app-api/school-oa/info/receiveDetail'; // 校务通知详情
  static const String teacherNoticeDetail = 'app-api/schoolHomeNotice/detail'; // 老师通知详情
  static const String teacherPerformance2 = 'app-api/schoolBehavior/page'; // 个人
  static const String teacherPerformance1 = 'app-api/schoolBehavior/classList'; // 班级
  static const String teacherGrowth1 = 'app-api/schoolGrowtharchive/classList'; // 班级
  static const String teacherGrowth2 = 'app-api/schoolGrowtharchive/page'; // 班级
  static const String repairApplyList = 'app-api/school-oa/repair/getRepairApplyList'; // 报修申请列表
  static const String repairApprovalList = 'app-api/school-oa/repair/RepairApprovalAndNotifiedList'; // 报修审批，收到通知列表
  static const String uploadAvator = 'app-api/app/user/uploadAvatar'; // 修改头像
  static const String uploadFile = 'app-api/sysFileInfo/uploadNew'; // 上传附件
  static const String studentClassPlan = 'app-api/app/school/student/classPlan'; // 课程表
  static const String infoCollectionApprovalList = 'app-api/schoolMessageGather/getMessageGatherApp'; // 信息采集列表

  static const String fundManagerList = 'app-api/school-oa/fundApply/page'; // 经费管理列表
  static const String fundManagerDetail = 'app-api/school-oa/fundApply/detail'; // 经费管理详情

  static const String reimburseList = 'app-api/school-oa/schoolOaReimbursement/pageList'; // 报销管理列表

  static const String studentLeaveList = 'app-api/school-oa/schoolOaStudentLeave/leaveList'; // 学生请假列表

  // Native页面
  static String seperator = Utils.isAndroid ? '/' : '_';
  static String webview = 'smile:///sp${seperator}webview?url='; // 通知列表
  static String picture = 'smile:///sp${seperator}picture?url='; // 图片地址
  static String attachment = 'smile:///sp${seperator}attachment?url='; // 图片地址
  static String chat = 'smile:///sp${seperator}chat?id='; // 通讯页面

  // 存沙盒的
  static const String spToken = 'stToken'; // token
  static const String spUserAgent = 'spUserAgent'; // useragent
  static const String spUserName = 'spUserName'; // username
  static const String spUserId = 'spUserId'; // userid
  static const String spStudentId = 'spStudentId'; // studentId
  static const String spUserAccount = 'spUserAccount'; // userAccount
  static const String spIdentity = 'spIdentity'; // defaultIdentity

  // 网络错误码
  static const int successCode = 200; // 成功码
  static const int errorBusCode = 102322; // 业务错误码，内部使用
}