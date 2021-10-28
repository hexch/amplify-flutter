// Mocks generated by Mockito 5.0.16 from annotations
// in amplify_api/test/auth_providers_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:amplify_api_plugin_interface/src/auth/api_auth_provider.dart'
    as _i2;
import 'package:amplify_api_plugin_interface/src/auth/api_authorization_type.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [OIDCAuthProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockOIDCAuthProvider extends _i1.Mock implements _i2.OIDCAuthProvider {
  MockOIDCAuthProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.APIAuthorizationType get type => (super.noSuchMethod(
      Invocation.getter(#type),
      returnValue: _i3.APIAuthorizationType.none) as _i3.APIAuthorizationType);
  @override
  _i4.Future<String?> getLatestAuthToken() =>
      (super.noSuchMethod(Invocation.method(#getLatestAuthToken, []),
          returnValue: Future<String?>.value()) as _i4.Future<String?>);
}
