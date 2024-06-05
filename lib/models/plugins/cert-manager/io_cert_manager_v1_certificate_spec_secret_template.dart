//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: require_trailing_commas
// ignore_for_file: unused_element
// ignore_for_file: unnecessary_this
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:kubenav/models/kubernetes/helpers.dart';

class IoCertManagerV1CertificateSpecSecretTemplate {
  /// Returns a new [IoCertManagerV1CertificateSpecSecretTemplate] instance.
  IoCertManagerV1CertificateSpecSecretTemplate({
    this.annotations = const {},
    this.labels = const {},
  });

  /// Annotations is a key value map to be copied to the target Kubernetes Secret.
  Map<String, String> annotations;

  /// Labels is a key value map to be copied to the target Kubernetes Secret.
  Map<String, String> labels;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoCertManagerV1CertificateSpecSecretTemplate &&
          deepEquality.equals(other.annotations, annotations) &&
          deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (annotations.hashCode) + (labels.hashCode);

  @override
  String toString() =>
      'IoCertManagerV1CertificateSpecSecretTemplate[annotations=$annotations, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'annotations'] = this.annotations;
    json[r'labels'] = this.labels;
    return json;
  }

  /// Returns a new [IoCertManagerV1CertificateSpecSecretTemplate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoCertManagerV1CertificateSpecSecretTemplate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoCertManagerV1CertificateSpecSecretTemplate[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoCertManagerV1CertificateSpecSecretTemplate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoCertManagerV1CertificateSpecSecretTemplate(
        annotations:
            mapCastOfType<String, String>(json, r'annotations') ?? const {},
        labels: mapCastOfType<String, String>(json, r'labels') ?? const {},
      );
    }
    return null;
  }

  static List<IoCertManagerV1CertificateSpecSecretTemplate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoCertManagerV1CertificateSpecSecretTemplate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoCertManagerV1CertificateSpecSecretTemplate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoCertManagerV1CertificateSpecSecretTemplate> mapFromJson(
      dynamic json) {
    final map = <String, IoCertManagerV1CertificateSpecSecretTemplate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoCertManagerV1CertificateSpecSecretTemplate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoCertManagerV1CertificateSpecSecretTemplate-objects as value to a dart map
  static Map<String, List<IoCertManagerV1CertificateSpecSecretTemplate>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoCertManagerV1CertificateSpecSecretTemplate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            IoCertManagerV1CertificateSpecSecretTemplate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
