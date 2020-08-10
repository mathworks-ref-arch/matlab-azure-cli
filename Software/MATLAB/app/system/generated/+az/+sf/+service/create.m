classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sf service create : Create a new service on an Azure Service Fabric cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf service create ';
        end
        function this = application(this, varargin)
            % Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName.
            this.Options = [this.Options, '--application', varargin{:}];
        end

        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Specify the name of the service. The application name must be a prefix of the service name, for example: appName~serviceName.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_type(this, varargin)
            % Specify the service type name of the application, it should exist in the application manifest.
            this.Options = [this.Options, '--service-type', varargin{:}];
        end

        function this = state(this, varargin)
            % Specify if the service is stateless or stateful. Allowed values: stateful, stateless.
            this.Options = [this.Options, '--state', varargin{:}];
        end

        function this = default_move_cost(this, varargin)
            % Specify the default cost for a move. Higher costs make it less likely that the Cluster Resource Manager will move the replica when trying to balance the cluster.  Allowed values: High, Low, Medium, Zero.
            this.Options = [this.Options, '--default-move-cost', varargin{:}];
        end

        function this = instance_count(this, varargin)
            % Specify the instance count for the stateless service. If -1 is used, it means it will run on all the nodes.
            this.Options = [this.Options, '--instance-count', varargin{:}];
        end

        function this = min_replica_set_size(this, varargin)
            % Specify the min replica set size for the stateful service.
            this.Options = [this.Options, '--min-replica-set-size', varargin{:}];
        end

        function this = partition_scheme(this, varargin)
            % Specify what partition scheme to use. Singleton partitions are typically used when the service does not require any additional routing. UniformInt64 means that each partition owns a range of int64 keys. Named is usually for services with data that can be bucketed, within a bounded set. Some common examples of data fields used as named partition keys would be regions, postal codes, customer groups, or other business boundaries.  Allowed values: named, singleton, uniformInt64.  Default: singleton.
            this.Options = [this.Options, '--partition-scheme', varargin{:}];
        end

        function this = target_replica_set_size(this, varargin)
            % Specify the target replica set size for the stateful service.
            this.Options = [this.Options, '--target-replica-set-size', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
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
            fprintf('%s\n', '    az sf service create : Create a new service on an Azure Service Fabric cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application --application-name [Required] : Specify the name of the service. The application')
            fprintf('%s\n', '                                                  name must be a prefix of the service name, for')
            fprintf('%s\n', '                                                  example: appName~serviceName.')
            fprintf('%s\n', '    --cluster-name -c                [Required] : Specify the name of the cluster, if not given it')
            fprintf('%s\n', '                                                  will be same as resource group name.')
            fprintf('%s\n', '    --name --service-name            [Required] : Specify the name of the service. The application')
            fprintf('%s\n', '                                                  name must be a prefix of the service name, for')
            fprintf('%s\n', '                                                  example: appName~serviceName.')
            fprintf('%s\n', '    --resource-group -g              [Required] : Specify the resource group name. You can configure')
            fprintf('%s\n', '                                                  the default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --service-type                   [Required] : Specify the service type name of the application,')
            fprintf('%s\n', '                                                  it should exist in the application manifest.')
            fprintf('%s\n', '    --state                          [Required] : Specify if the service is stateless or stateful.')
            fprintf('%s\n', '                                                  Allowed values: stateful, stateless.')
            fprintf('%s\n', '    --default-move-cost                         : Specify the default cost for a move. Higher costs')
            fprintf('%s\n', '                                                  make it less likely that the Cluster Resource')
            fprintf('%s\n', '                                                  Manager will move the replica when trying to')
            fprintf('%s\n', '                                                  balance the cluster.  Allowed values: High, Low,')
            fprintf('%s\n', '                                                  Medium, Zero.')
            fprintf('%s\n', '    --instance-count                            : Specify the instance count for the stateless')
            fprintf('%s\n', '                                                  service. If -1 is used, it means it will run on')
            fprintf('%s\n', '                                                  all the nodes.')
            fprintf('%s\n', '    --min-replica-set-size                      : Specify the min replica set size for the stateful')
            fprintf('%s\n', '                                                  service.')
            fprintf('%s\n', '    --partition-scheme                          : Specify what partition scheme to use. Singleton')
            fprintf('%s\n', '                                                  partitions are typically used when the service')
            fprintf('%s\n', '                                                  does not require any additional routing.')
            fprintf('%s\n', '                                                  UniformInt64 means that each partition owns a')
            fprintf('%s\n', '                                                  range of int64 keys. Named is usually for services')
            fprintf('%s\n', '                                                  with data that can be bucketed, within a bounded')
            fprintf('%s\n', '                                                  set. Some common examples of data fields used as')
            fprintf('%s\n', '                                                  named partition keys would be regions, postal')
            fprintf('%s\n', '                                                  codes, customer groups, or other business')
            fprintf('%s\n', '                                                  boundaries.  Allowed values: named, singleton,')
            fprintf('%s\n', '                                                  uniformInt64.  Default: singleton.')
            fprintf('%s\n', '    --target-replica-set-size                   : Specify the target replica set size for the')
            fprintf('%s\n', '                                                  stateful service.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new stateless service "testApp~testService1" with instance count -1 (on all the nodes).')
            fprintf('%s\n', '        az sf service create -g testRG -c testCluster --application-name testApp --state stateless')
            fprintf('%s\n', '        --service-name testApp~testService \')
            fprintf('%s\n', '          --service-type testStateless --instance-count -1 --partition-scheme singleton')
            fprintf('%s\n', '    Create a new stateful service "testApp~testService2" with a target of 5 nodes.')
            fprintf('%s\n', '        az sf service create -g testRG -c testCluster --application-name testApp --state stateful')
            fprintf('%s\n', '        --service-name testApp~testService2 \')
            fprintf('%s\n', '          --service-type testStatefulType --min-replica-set-size 3 --target-replica-set-size 5')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf service create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
