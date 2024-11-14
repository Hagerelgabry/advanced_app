import 'package:advanced_app/core/helpers/spacing.dart';
import 'package:advanced_app/core/theming/colors.dart';
import 'package:advanced_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
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
                    'Specializations',
                    style: TextStyles.font12DarkBlueRegular,
                  )
                ],
              ),
            );
          }),
    );
  }
}
