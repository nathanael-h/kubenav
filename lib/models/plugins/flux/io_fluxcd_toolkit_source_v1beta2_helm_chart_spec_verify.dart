//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: require_trailing_commas
// ignore_for_file: unused_element
// ignore_for_file: unnecessary_this
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:kubenav/models/kubernetes/helpers.dart';
import 'package:kubenav/models/plugins/flux/io_fluxcd_toolkit_helm_v2beta1_helm_release_spec_chart_spec_verify_secret_ref.dart';
import 'package:kubenav/models/plugins/flux/io_fluxcd_toolkit_source_v1beta2_helm_chart_spec_verify_match_oidc_identity_inner.dart';

class IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify {
  /// Returns a new [IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify] instance.
  IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify({
    this.matchOIDCIdentity = const [],
    required this.provider,
    this.secretRef,
  });

  /// MatchOIDCIdentity specifies the identity matching criteria to use while verifying an OCI artifact which was signed using Cosign keyless signing. The artifact's identity is deemed to be verified if any of the specified matchers match against the identity.
  List<IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyMatchOIDCIdentityInner>
      matchOIDCIdentity;

  /// Provider specifies the technology used to sign the OCI Artifact.
  IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoFluxcdToolkitHelmV2beta1HelmReleaseSpecChartSpecVerifySecretRef? secretRef;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify &&
          deepEquality.equals(other.matchOIDCIdentity, matchOIDCIdentity) &&
          other.provider == provider &&
          other.secretRef == secretRef;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (matchOIDCIdentity.hashCode) +
      (provider.hashCode) +
      (secretRef == null ? 0 : secretRef!.hashCode);

  @override
  String toString() =>
      'IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify[matchOIDCIdentity=$matchOIDCIdentity, provider=$provider, secretRef=$secretRef]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'matchOIDCIdentity'] = this.matchOIDCIdentity;
    json[r'provider'] = this.provider;
    if (this.secretRef != null) {
      json[r'secretRef'] = this.secretRef;
    } else {
      json[r'secretRef'] = null;
    }
    return json;
  }

  /// Returns a new [IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify(
        matchOIDCIdentity:
            IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyMatchOIDCIdentityInner
                .listFromJson(json[r'matchOIDCIdentity']),
        provider: IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum
            .fromJson(json[r'provider'])!,
        secretRef:
            IoFluxcdToolkitHelmV2beta1HelmReleaseSpecChartSpecVerifySecretRef
                .fromJson(json[r'secretRef']),
      );
    }
    return null;
  }

  static List<IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify>
      mapFromJson(dynamic json) {
    final map = <String, IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify.fromJson(
            entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify-objects as value to a dart map
  static Map<String, List<IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map =
        <String, List<IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] =
            IoFluxcdToolkitSourceV1beta2HelmChartSpecVerify.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
  };
}

/// Provider specifies the technology used to sign the OCI Artifact.
class IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum._(
      this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cosign =
      IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum._(r'cosign');

  /// List of all possible values in this [enum][IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum].
  static const values =
      <IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum>[
    cosign,
  ];

  static IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum? fromJson(
          dynamic value) =>
      IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer()
          .decode(value);

  static List<IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum>
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result =
        <IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum
                .fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum] to String,
/// and [decode] dynamic data back to [IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum].
class IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer {
  factory IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer() =>
      _instance ??=
          const IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer
              ._();

  const IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer._();

  String encode(
          IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum? decode(
      dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cosign':
          return IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnum
              .cosign;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer] instance.
  static IoFluxcdToolkitSourceV1beta2HelmChartSpecVerifyProviderEnumTypeTransformer?
      _instance;
}
