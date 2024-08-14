class Success{
  int? code;
  Object? response;
  String? message;
  List<dynamic>? data;
  Success({this.code, this.response, this.data,this.message});
}

class Failure{
  int? code;
  String? errorResponse;
  Failure({this.code, this.errorResponse});

}