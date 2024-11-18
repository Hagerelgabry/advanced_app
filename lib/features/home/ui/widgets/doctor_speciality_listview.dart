import 'package:advanced_app/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_app/features/home/ui/widgets/doctor_speciality_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationDataList.length,
          itemBuilder: (context, index) {
            return DoctorSpecialityListviewItem(
              indexItem: index,
              specializationsData: specializationDataList[index],
            );
          }),
    );
  }
}
