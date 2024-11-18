import 'package:advanced_app/core/helpers/spacing.dart';
import 'package:advanced_app/core/theming/colors.dart';
import 'package:advanced_app/core/theming/styles.dart';
import 'package:advanced_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListviewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int indexItem;
  const DoctorSpecialityListviewItem(
      {super.key, required this.specializationsData, required this.indexItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: indexItem == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorManger.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specilaizations',
            style: TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
