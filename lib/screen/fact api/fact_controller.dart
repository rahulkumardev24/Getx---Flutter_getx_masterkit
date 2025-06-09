import 'package:get/get.dart';
import 'package:getx_statemanagement/screen/fact%20api/service/api_service.dart';

class FactController extends GetxController{
  RxString fact = "".obs ;
  RxBool isLoading = false.obs ;

  @override
  void onInit() {
    super.onInit();
    ApiService.fetchFact() ;

  }

  void fetchRandomFacts() async {
    isLoading.value = false ;
    try{
      isLoading.value = true ;
      final myFacts = await ApiService.fetchFact() ;
      fact.value = myFacts ;
    }catch (e){
      fact.value = "Failed to fetch random Facts try again!" ;
    }finally{
      isLoading.value = false ;

    }

  }

}