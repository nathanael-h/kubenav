import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:kubenav/models/cluster_provider.dart';
import 'package:kubenav/repositories/clusters_repository.dart';
import 'package:kubenav/services/providers/aws_service.dart';
import 'package:kubenav/utils/constants.dart';
import 'package:kubenav/utils/helpers.dart';
import 'package:kubenav/utils/logger.dart';
import 'package:kubenav/utils/showmodal.dart';

class SettingsReauthenticateAWSSSO extends StatefulWidget {
  const SettingsReauthenticateAWSSSO({super.key});

  @override
  State<SettingsReauthenticateAWSSSO> createState() =>
      _SettingsReauthenticateAWSSSOState();
}

class _SettingsReauthenticateAWSSSOState
    extends State<SettingsReauthenticateAWSSSO> {
  late ClusterProvider? _provider;
  AWSSSOConfig? _awsSSOConfig;
  bool _verified = false;
  AWSSSOCredentials? _awsSSOCredentials;

  Future<void> _startSSOFlow() async {
    try {
      final ssoConfig = await AWSService().getSSOConfig(
        _provider!.awssso!.ssoRegion ?? '',
        _provider!.awssso!.startURL ?? '',
      );

      Logger.log(
        'SettingsReauthenticateAWSSSO _startSSOFlow',
        'SSO Config',
        ssoConfig,
      );
      setState(() {
        _awsSSOConfig = ssoConfig;
      });
      if (mounted) {
        showSnackbar(
          context,
          'Sing in Completed',
          'You can now click on the verify button',
        );
      }
    } catch (err) {
      Logger.log(
        'SettingsReauthenticateAWSSSO _startSSOFlow',
        'Failed to Get SSO Configuration',
        err,
      );
      if (mounted) {
        showSnackbar(
          context,
          'Failed to Get SSO Configuration',
          err.toString(),
        );
      }
    }
  }

  Future<void> _verifyDevice() async {
    try {
      await openUrl(_awsSSOConfig!.device!.verificationUriComplete!);
      setState(() {
        _verified = true;
      });
    } catch (err) {
      Logger.log(
        'SettingsReauthenticateAWSSSO _verifyDevice',
        'Failed to Verify Device',
        err,
      );
      if (mounted) {
        showSnackbar(
          context,
          'Failed to Verify Device',
          err.toString(),
        );
      }
    }
  }

  Future<void> _getSSOCredentials() async {
    ClustersRepository clustersRepository = Provider.of<ClustersRepository>(
      context,
      listen: false,
    );

    try {
      final ssoCredentials = await AWSService().getSSOToken(
        _provider!.awssso!.accountID ?? '',
        _provider!.awssso!.roleName ?? '',
        _provider!.awssso!.ssoRegion ?? '',
        _awsSSOConfig?.client?.clientId ?? '',
        _awsSSOConfig?.client?.clientSecret ?? '',
        _awsSSOConfig?.device?.deviceCode ?? '',
        '',
        0,
      );

      Logger.log(
        'SettingsReauthenticateAWSSSO _getSSOCredentials',
        'SSO Credentials',
        ssoCredentials,
      );

      setState(() {
        _awsSSOCredentials = ssoCredentials;
      });

      _provider!.awssso!.ssoConfig = _awsSSOConfig;
      _provider!.awssso!.ssoCredentials = _awsSSOCredentials;
      await clustersRepository.editProvider(_provider!);

      if (mounted) {
        showSnackbar(
          context,
          'Provider Configuration Saved',
          'Refresh the view to use the new credentials',
        );
      }
    } catch (err) {
      Logger.log(
        'SettingsReauthenticateAWSSSO _startSSOFlow',
        'Failed to Get SSO Credentials',
        err,
      );
      if (mounted) {
        showSnackbar(
          context,
          'Failed to Get SSO Credentials',
          err.toString(),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ClustersRepository clustersRepository = Provider.of<ClustersRepository>(
        context,
        listen: false,
      );

      final cluster = clustersRepository.getCluster(
        clustersRepository.activeClusterId,
      );
      if (cluster != null) {
        _provider = clustersRepository.getProvider(cluster.clusterProviderId);
      } else {
        _provider = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Constants.spacingSmall,
            horizontal: Constants.spacingSmall,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              minimumSize: const Size.fromHeight(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Constants.sizeBorderRadius,
                ),
              ),
            ),
            onPressed: _startSSOFlow,
            child: Text(
              'Sign In',
              style: primaryTextStyle(
                context,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Constants.spacingSmall,
            horizontal: Constants.spacingSmall,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              minimumSize: const Size.fromHeight(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Constants.sizeBorderRadius,
                ),
              ),
            ),
            onPressed: _awsSSOConfig == null ? null : _verifyDevice,
            child: Text(
              'Verify',
              style: primaryTextStyle(
                context,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Constants.spacingSmall,
            horizontal: Constants.spacingSmall,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              minimumSize: const Size.fromHeight(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Constants.sizeBorderRadius,
                ),
              ),
            ),
            onPressed:
                _awsSSOConfig == null || !_verified ? null : _getSSOCredentials,
            child: Text(
              'Get Credentials',
              style: primaryTextStyle(
                context,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
