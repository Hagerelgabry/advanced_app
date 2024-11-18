import 'package:advanced_app/core/helpers/spacing.dart';
import 'package:advanced_app/core/theming/styles.dart';
import 'package:advanced_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListviewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListviewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            width: 110.w,
            height: 110.h,
            'assets/images/doctor_img.png',
            fit: BoxFit.cover,
          ),
        ),
        horiztonalSpace(16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorsModel?.name ?? 'Name',
                style: TextStyles.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                style: TextStyles.font12GrayMedium,
              ),
              verticalSpace(5),
              Text(
                doctorsModel?.email ?? 'Email',
                style: TextStyles.font12GrayMedium,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
