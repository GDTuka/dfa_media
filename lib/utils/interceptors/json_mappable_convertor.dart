import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:dfa_media/data/models/models.container.dart';

class JsonMappableConverter extends JsonConverter {
  const JsonMappableConverter();

  @override
  FutureOr<Response<T>> convertResponse<T, Item>(Response response) async {
    try {
      if (T != String && response.body is String && response.body.isEmpty) {
        return Response(response.base, null, error: response.error);
      }
      if (response.body is String && (response.body.isEmpty || T == String)) {
        return response.copyWith<T>(body: datamodelsContainer.fromValue<T>(response.body));
      }
      final jsonRes = await super.convertResponse(response);
      return jsonRes.copyWith<T>(body: datamodelsContainer.fromValue<T>(jsonRes.body));
    } on Exception {
      rethrow;
    }
  }

  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.copyWith(
        body: datamodelsContainer.toValue(request.body),
        parameters: {...request.parameters.map((key, value) => MapEntry(key, datamodelsContainer.toValue(value)))},
      ),
    );
  }
}
