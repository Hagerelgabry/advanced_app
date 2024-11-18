// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advanced_app/core/networking/api_error_handler.dart';
import 'package:advanced_app/core/networking/api_result.dart';
import 'package:advanced_app/features/home/data/apis/home_api_service.dart';
import 'package:advanced_app/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService homeApiService;
  HomeRepo(
    this.homeApiService,
  );

  Future<ApiResult<SpecializationResponseModel>> getSpecialization() async {
    try {
      final response = await homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
