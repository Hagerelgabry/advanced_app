import 'package:advanced_app/core/helpers/spacing.dart';
import 'package:advanced_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListview extends StatelessWidget {
  const DoctorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
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
                        'Name',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 0111111111111',
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        'Email@email.com',
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
