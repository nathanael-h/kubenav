//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element
// ignore_for_file: unnecessary_this
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:kubenav/models/kubernetes/io_k8s_api_core_v1_persistent_volume_claim_spec.dart';
import 'package:kubenav/models/kubernetes/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';

class IoK8sApiCoreV1PersistentVolumeClaimTemplate {
  /// Returns a new [IoK8sApiCoreV1PersistentVolumeClaimTemplate] instance.
  IoK8sApiCoreV1PersistentVolumeClaimTemplate({
    this.metadata,
    required this.spec,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? metadata;

  IoK8sApiCoreV1PersistentVolumeClaimSpec spec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1PersistentVolumeClaimTemplate &&
          other.metadata == metadata &&
          other.spec == spec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (metadata == null ? 0 : metadata!.hashCode) + (spec.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1PersistentVolumeClaimTemplate[metadata=$metadata, spec=$spec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    json[r'spec'] = this.spec;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1PersistentVolumeClaimTemplate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1PersistentVolumeClaimTemplate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1PersistentVolumeClaimTemplate[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1PersistentVolumeClaimTemplate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1PersistentVolumeClaimTemplate(
        metadata: IoK8sApimachineryPkgApisMetaV1ObjectMeta.fromJson(
            json[r'metadata']),
        spec: IoK8sApiCoreV1PersistentVolumeClaimSpec.fromJson(json[r'spec'])!,
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1PersistentVolumeClaimTemplate>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1PersistentVolumeClaimTemplate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1PersistentVolumeClaimTemplate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1PersistentVolumeClaimTemplate> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1PersistentVolumeClaimTemplate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoK8sApiCoreV1PersistentVolumeClaimTemplate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1PersistentVolumeClaimTemplate-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1PersistentVolumeClaimTemplate>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1PersistentVolumeClaimTemplate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1PersistentVolumeClaimTemplate.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'spec',
  };
}