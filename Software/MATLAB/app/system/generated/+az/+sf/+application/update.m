classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sf application update : Update a Azure Service Fabric application. This allows updating the
            % application parameters and/or upgrade the application type version which will trigger an
            % application upgrade.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf application update ';
        end
        function this = application_name(this, varargin)
            % Specify the application name.
            this.Options = [this.Options, '--application-name', varargin{:}];
        end

        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = application_parameters(this, varargin)
            % Specify the application parameters as key/value pairs. These parameters must exist in the application manifest. for example: --application-parameters param1=value1 param2=value2.
            this.Options = [this.Options, '--application-parameters', varargin{:}];
        end

        function this = application_type_version(this, varargin)
            % Specify the application type version.
            this.Options = [this.Options, '--application-type-version', varargin{:}];
        end

        function this = force_restart(this, varargin)
            % Indicates that the service host restarts even if the upgrade is a configuration- only change.  Allowed values: false, true.
            this.Options = [this.Options, '--force-restart', varargin{:}];
        end

        function this = max_nodes(this, varargin)
            % Specify the maximum number of nodes on which to place an application. The value of this parameter must be a non-negative integer. The default value is 0, which indicates the application can be placed on any number of nodes in the cluster.
            this.Options = [this.Options, '--max-nodes', varargin{:}];
        end

        function this = min_nodes(this, varargin)
            % Specify the minimum number of nodes where Service Fabric will reserve capacity for this application, this does not mean that the application is guaranteed to have replicas on all those nodes. The value of this parameter must be a non-negative integer. Default value for this is zero, which means no capacity is reserved for the application.
            this.Options = [this.Options, '--min-nodes', varargin{:}];
        end

        function this = service_type_health_policy_map(this, varargin)
            % Specify the map of the health policy to use for different service types as a hash table in the following format: {"ServiceTypeName" : "MaxPercentUnhealthyP artitionsPerService,MaxPercentUnhealthyRep licasPerPartition,MaxPercentUnhealthyServi ces"}. For example: @{ "ServiceTypeName01" = "5,10,5"; "ServiceTypeName02" = "5,5,5" }. Upgrade description Arguments
            this.Options = [this.Options, '--service-type-health-policy-map', varargin{:}];
        end

        function this = consider_warning_as_error(this, varargin)
            % Indicates whether to treat a warning health event as an error event during health evaluation.  Allowed values: false, true.
            this.Options = [this.Options, '--consider-warning-as-error', varargin{:}];
        end

        function this = failure_action(this, varargin)
            % Specify the action to take if the monitored upgrade fails. The acceptable values for this parameter are Rollback or Manual.  Allowed values: Manual, Rollback.
            this.Options = [this.Options, '--failure-action', varargin{:}];
        end

        function this = hc_retry_timeout(this, varargin)
            % Specify the duration, in seconds, after which Service Fabric retries the health check if the previous health check fails.
            this.Options = [this.Options, '--hc-retry-timeout', varargin{:}];
        end

        function this = hc_stable_duration(this, varargin)
            % Specify the duration, in seconds, that Service Fabric waits in order to verify that the application is stable before moving to the next upgrade domain or completing the upgrade. This wait duration prevents undetected changes of health right after the health check is performed.
            this.Options = [this.Options, '--hc-stable-duration', varargin{:}];
        end

        function this = hc_wait_duration(this, varargin)
            % Specify the duration, in seconds, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain.
            this.Options = [this.Options, '--hc-wait-duration', varargin{:}];
        end

        function this = max_porcent_unhealthy_apps(this, varargin)
            % Specify the mximum percentage of the application instances deployed on the nodes in the cluster that have a health state of error before the application health state for the cluster is error. Allowed values are form 0 to 100.
            this.Options = [this.Options, '--max-porcent-unhealthy-apps', varargin{:}];
        end

        function this = max_porcent_unhealthy_partitions(this, varargin)
            % Specify the maximum percent of unhelthy partitions per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100.
            this.Options = [this.Options, '--max-porcent-unhealthy-partitions', varargin{:}];
        end

        function this = max_porcent_unhealthy_replicas(this, varargin)
            % Specify the maximum percent of unhelthy replicas per service allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100.
            this.Options = [this.Options, '--max-porcent-unhealthy-replicas', varargin{:}];
        end

        function this = max_porcent_unhealthy_services(this, varargin)
            % Specify the maximum percent of unhelthy services allowed by the health policy for the default service type to use for the monitored upgrade. Allowed values are form 0 to 100. --ud_timeout --upgrade-domain-timeout               : Specify the maximum time, in seconds, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails.
            this.Options = [this.Options, '--max-porcent-unhealthy-services', varargin{:}];
        end

        function this = upgrade_replica_set_check_timeout(this, varargin)
            % Specify the maximum time, in seconds, that Service Fabric waits for a service to reconfigure into a safe state, if not already in a safe state, before Service Fabric proceeds with the upgrade.
            this.Options = [this.Options, '--upgrade-replica-set-check-timeout', varargin{:}];
        end

        function this = upgrade_timeout(this, varargin)
            % Specify the maximum time, in seconds, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails.
            this.Options = [this.Options, '--upgrade-timeout', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sf application update : Update a Azure Service Fabric application. This allows updating the')
            fprintf('%s\n', '    application parameters and/or upgrade the application type version which will trigger an')
            fprintf('%s\n', '    application upgrade.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-name --name                [Required] : Specify the application name.')
            fprintf('%s\n', '    --cluster-name -c                        [Required] : Specify the name of the cluster, if not')
            fprintf('%s\n', '                                                          given it will be same as resource group')
            fprintf('%s\n', '                                                          name.')
            fprintf('%s\n', '    --resource-group -g                      [Required] : Specify the resource group name. You can')
            fprintf('%s\n', '                                                          configure the default group using `az')
            fprintf('%s\n', '                                                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --application-parameters --parameters               : Specify the application parameters as')
            fprintf('%s\n', '                                                          key/value pairs. These parameters must')
            fprintf('%s\n', '                                                          exist in the application manifest. for')
            fprintf('%s\n', '                                                          example: --application-parameters')
            fprintf('%s\n', '                                                          param1=value1 param2=value2.')
            fprintf('%s\n', '    --application-type-version --version                : Specify the application type version.')
            fprintf('%s\n', '    --force-restart                                     : Indicates that the service host restarts')
            fprintf('%s\n', '                                                          even if the upgrade is a configuration-')
            fprintf('%s\n', '                                                          only change.  Allowed values: false, true.')
            fprintf('%s\n', '    --max-nodes --maximum-nodes                         : Specify the maximum number of nodes on')
            fprintf('%s\n', '                                                          which to place an application. The value')
            fprintf('%s\n', '                                                          of this parameter must be a non-negative')
            fprintf('%s\n', '                                                          integer. The default value is 0, which')
            fprintf('%s\n', '                                                          indicates the application can be placed on')
            fprintf('%s\n', '                                                          any number of nodes in the cluster.')
            fprintf('%s\n', '    --min-nodes --minimum-nodes                         : Specify the minimum number of nodes where')
            fprintf('%s\n', '                                                          Service Fabric will reserve capacity for')
            fprintf('%s\n', '                                                          this application, this does not mean that')
            fprintf('%s\n', '                                                          the application is guaranteed to have')
            fprintf('%s\n', '                                                          replicas on all those nodes. The value of')
            fprintf('%s\n', '                                                          this parameter must be a non-negative')
            fprintf('%s\n', '                                                          integer. Default value for this is zero,')
            fprintf('%s\n', '                                                          which means no capacity is reserved for')
            fprintf('%s\n', '                                                          the application.')
            fprintf('%s\n', '    --service-type-health-policy-map                    : Specify the map of the health policy to')
            fprintf('%s\n', '                                                          use for different service types as a hash')
            fprintf('%s\n', '                                                          table in the following format:')
            fprintf('%s\n', '                                                          {"ServiceTypeName" : "MaxPercentUnhealthyP')
            fprintf('%s\n', '                                                          artitionsPerService,MaxPercentUnhealthyRep')
            fprintf('%s\n', '                                                          licasPerPartition,MaxPercentUnhealthyServi')
            fprintf('%s\n', '                                                          ces"}. For example: @{ "ServiceTypeName01"')
            fprintf('%s\n', '                                                          = "5,10,5"; "ServiceTypeName02" = "5,5,5"')
            fprintf('%s\n', '                                                          }.')
            fprintf('%s\n', 'Upgrade description Arguments')
            fprintf('%s\n', '    --consider-warning-as-error --warning-as-error      : Indicates whether to treat a warning')
            fprintf('%s\n', '                                                          health event as an error event during')
            fprintf('%s\n', '                                                          health evaluation.  Allowed values: false,')
            fprintf('%s\n', '                                                          true.')
            fprintf('%s\n', '    --failure-action                                    : Specify the action to take if the')
            fprintf('%s\n', '                                                          monitored upgrade fails. The acceptable')
            fprintf('%s\n', '                                                          values for this parameter are Rollback or')
            fprintf('%s\n', '                                                          Manual.  Allowed values: Manual, Rollback.')
            fprintf('%s\n', '    --hc-retry-timeout --health-check-retry-timeout     : Specify the duration, in seconds, after')
            fprintf('%s\n', '                                                          which Service Fabric retries the health')
            fprintf('%s\n', '                                                          check if the previous health check fails.')
            fprintf('%s\n', '    --hc-stable-duration --health-check-stable-duration : Specify the duration, in seconds, that')
            fprintf('%s\n', '                                                          Service Fabric waits in order to verify')
            fprintf('%s\n', '                                                          that the application is stable before')
            fprintf('%s\n', '                                                          moving to the next upgrade domain or')
            fprintf('%s\n', '                                                          completing the upgrade. This wait duration')
            fprintf('%s\n', '                                                          prevents undetected changes of health')
            fprintf('%s\n', '                                                          right after the health check is performed.')
            fprintf('%s\n', '    --hc-wait-duration --health-check-wait-duration     : Specify the duration, in seconds, that')
            fprintf('%s\n', '                                                          Service Fabric waits before it performs')
            fprintf('%s\n', '                                                          the initial health check after it finishes')
            fprintf('%s\n', '                                                          the upgrade on the upgrade domain.')
            fprintf('%s\n', '    --max-porcent-unhealthy-apps                        : Specify the mximum percentage of the')
            fprintf('%s\n', '                                                          application instances deployed on the')
            fprintf('%s\n', '                                                          nodes in the cluster that have a health')
            fprintf('%s\n', '                                                          state of error before the application')
            fprintf('%s\n', '                                                          health state for the cluster is error.')
            fprintf('%s\n', '                                                          Allowed values are form 0 to 100.')
            fprintf('%s\n', '    --max-porcent-unhealthy-partitions                  : Specify the maximum percent of unhelthy')
            fprintf('%s\n', '                                                          partitions per service allowed by the')
            fprintf('%s\n', '                                                          health policy for the default service type')
            fprintf('%s\n', '                                                          to use for the monitored upgrade. Allowed')
            fprintf('%s\n', '                                                          values are form 0 to 100.')
            fprintf('%s\n', '    --max-porcent-unhealthy-replicas                    : Specify the maximum percent of unhelthy')
            fprintf('%s\n', '                                                          replicas per service allowed by the health')
            fprintf('%s\n', '                                                          policy for the default service type to use')
            fprintf('%s\n', '                                                          for the monitored upgrade. Allowed values')
            fprintf('%s\n', '                                                          are form 0 to 100.')
            fprintf('%s\n', '    --max-porcent-unhealthy-services                    : Specify the maximum percent of unhelthy')
            fprintf('%s\n', '                                                          services allowed by the health policy for')
            fprintf('%s\n', '                                                          the default service type to use for the')
            fprintf('%s\n', '                                                          monitored upgrade. Allowed values are form')
            fprintf('%s\n', '                                                          0 to 100.')
            fprintf('%s\n', '    --ud_timeout --upgrade-domain-timeout               : Specify the maximum time, in seconds, that')
            fprintf('%s\n', '                                                          Service Fabric takes to upgrade a single')
            fprintf('%s\n', '                                                          upgrade domain. After this period, the')
            fprintf('%s\n', '                                                          upgrade fails.')
            fprintf('%s\n', '    --upgrade-replica-set-check-timeout                 : Specify the maximum time, in seconds, that')
            fprintf('%s\n', '                                                          Service Fabric waits for a service to')
            fprintf('%s\n', '                                                          reconfigure into a safe state, if not')
            fprintf('%s\n', '                                                          already in a safe state, before Service')
            fprintf('%s\n', '                                                          Fabric proceeds with the upgrade.')
            fprintf('%s\n', '    --upgrade-timeout                                   : Specify the maximum time, in seconds, that')
            fprintf('%s\n', '                                                          Service Fabric takes for the entire')
            fprintf('%s\n', '                                                          upgrade. After this period, the upgrade')
            fprintf('%s\n', '                                                          fails.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                             : Increase logging verbosity to show all')
            fprintf('%s\n', '                                                          debug logs.')
            fprintf('%s\n', '    --help -h                                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                         : Output format.  Allowed values: json,')
            fprintf('%s\n', '                                                          jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                                                          Default: json.')
            fprintf('%s\n', '    --query                                             : JMESPath query string. See')
            fprintf('%s\n', '                                                          http://jmespath.org/ for more information')
            fprintf('%s\n', '                                                          and examples.')
            fprintf('%s\n', '    --subscription                                      : Name or ID of subscription. You can')
            fprintf('%s\n', '                                                          configure the default subscription using')
            fprintf('%s\n', '                                                          `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                           : Increase logging verbosity. Use --debug')
            fprintf('%s\n', '                                                          for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update application parameters and upgreade policy values and app type version to v2.')
            fprintf('%s\n', '        az sf application update -g testRG -c testCluster --application-name testApp --application-')
            fprintf('%s\n', '        type-version v2 \')
            fprintf('%s\n', '          --application-parameters key0=value0 --health-check-stable-duration 0 --health-check-wait-')
            fprintf('%s\n', '        duration 0 --health-check-retry-timeout 0 \')
            fprintf('%s\n', '            --upgrade-domain-timeout 5000 --upgrade-timeout 7000 --failure-action Rollback')
            fprintf('%s\n', '        --upgrade-replica-set-check-timeout 300 --force-restart')
            fprintf('%s\n', '    Update application minimum and maximum nodes.')
            fprintf('%s\n', '        az sf application update -g testRG -c testCluster --application-name testApp --minimum-nodes')
            fprintf('%s\n', '        1 --maximum-nodes 3')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf application update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
