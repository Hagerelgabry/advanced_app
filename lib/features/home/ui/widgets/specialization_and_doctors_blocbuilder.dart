import 'package:advanced_app/core/helpers/spacing.dart';
import 'package:advanced_app/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_app/features/home/logic/cubit/home_state.dart';
import 'package:advanced_app/features/home/ui/widgets/doctor_speciality_listview.dart';
import 'package:advanced_app/features/home/ui/widgets/doctors_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationAndDoctorsBlocbuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsLoading: () => setUpLoading(),
            specializationsSuccess: (specializationResponseModel) {
              var specializationList =
                  specializationResponseModel.specializationDataList;
              return setUpSuccess(specializationList);
            },
            specializationsError: (errorHandler) => setUpError(),
            orElse: () => setUpError());
      },
    );
  }
}

Widget setUpLoading() {
  return const SizedBox(
    height: 100,
    child: Center(child: CircularProgressIndicator()),
  );
}

Widget setUpSuccess(specializationList) {
  return Expanded(
    child: Column(
      children: [
        DoctorSpecialityListView(
          specializationDataList: specializationList ?? [],
        ),
        verticalSpace(24.h),
        DoctorsListview(
          doctorsList: specializationList?[0]?.doctorsList,
        ),
      ],
    ),
  );
}

Widget setUpError() {
  return const SizedBox.shrink();
}
