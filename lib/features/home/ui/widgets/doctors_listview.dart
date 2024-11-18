import 'package:advanced_app/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_listview_item.dart';
import 'package:flutter/material.dart';

class DoctorsListview extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListview({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorsList?.length,
          itemBuilder: (context, index) {
            return DoctorsListviewItem(doctorsModel: doctorsList?[index]);
          }),
    );
  }
}
