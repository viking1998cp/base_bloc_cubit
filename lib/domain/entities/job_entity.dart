class JobEntity {
  String? titleJob;
  List<JobData>? jobDatas;
  JobEntity({required this.jobDatas, required this.titleJob});
}

class JobData {
  String? title;
  String? content;

  JobData({required this.content, required this.title});
}
