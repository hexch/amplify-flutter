/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the EnumTypeModel type in your schema. */
@immutable
class EnumTypeModel extends Model {
  static const classType = const _EnumTypeModelModelType();
  final String id;
  final EnumModel? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  EnumModel? get value {
    return _value;
  }

  const EnumTypeModel._internal({required this.id, value}) : _value = value;

  factory EnumTypeModel({String? id, EnumModel? value}) {
    return EnumTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("EnumTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? enumToString(_value)! : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  EnumTypeModel copyWith({String? id, EnumModel? value}) {
    return EnumTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  EnumTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = enumFromString<EnumModel>(json['value'], EnumModel.values);

  Map<String, dynamic> toJson() => {'id': id, 'value': enumToString(_value)};

  static final QueryField ID = QueryField(fieldName: "enumTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EnumTypeModel";
    modelSchemaDefinition.pluralName = "EnumTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: EnumTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));
  });
}

class _EnumTypeModelModelType extends ModelType<EnumTypeModel> {
  const _EnumTypeModelModelType();

  @override
  EnumTypeModel fromJson(Map<String, dynamic> jsonData) {
    return EnumTypeModel.fromJson(jsonData);
  }
}
