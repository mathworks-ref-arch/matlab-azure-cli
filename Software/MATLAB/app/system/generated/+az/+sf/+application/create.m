classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sf application create : Create a new application on an Azure Service Fabric cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf application create ';
        end
        function this = application_name(this, varargin)
            % Specify the application name.
            this.Options = [this.Options, '--application-name', varargin{:}];
        end

        function this = application_type_name(this, varargin)
            % Specify the application type name.
            this.Options = [this.Options, '--application-type-name', varargin{:}];
        end

        function this = application_type_version(this, varargin)
            % Specify the application type version.
            this.Options = [this.Options, '--application-type-version', varargin{:}];
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

        function this = max_nodes(this, varargin)
            % Specify the maximum number of nodes on which to place an application. The value of this parameter must be a non-negative integer. The default value is 0, which indicates the application can be placed on any number of nodes in the cluster.
            this.Options = [this.Options, '--max-nodes', varargin{:}];
        end

        function this = min_nodes(this, varargin)
            % Specify the minimum number of nodes where Service Fabric will reserve capacity for this application, this does not mean that the application is guaranteed to have replicas on all those nodes. The value of this parameter must be a non-negative integer. Default value for this is zero, which means no capacity is reserved for the application.
            this.Options = [this.Options, '--min-nodes', varargin{:}];
        end

        function this = package_url(this, varargin)
            % Specify the url of the application package sfpkg file.
            this.Options = [this.Options, '--package-url', varargin{:}];
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
            fprintf('%s\n', '    az sf application create : Create a new application on an Azure Service Fabric cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-name --name            [Required] : Specify the application name.')
            fprintf('%s\n', '    --application-type-name --type-name  [Required] : Specify the application type name.')
            fprintf('%s\n', '    --application-type-version --version [Required] : Specify the application type version.')
            fprintf('%s\n', '    --cluster-name -c                    [Required] : Specify the name of the cluster, if not given')
            fprintf('%s\n', '                                                      it will be same as resource group name.')
            fprintf('%s\n', '    --resource-group -g                  [Required] : Specify the resource group name. You can')
            fprintf('%s\n', '                                                      configure the default group using `az')
            fprintf('%s\n', '                                                      configure --defaults group=<name>`.')
            fprintf('%s\n', '    --application-parameters --parameters           : Specify the application parameters as')
            fprintf('%s\n', '                                                      key/value pairs. These parameters must exist')
            fprintf('%s\n', '                                                      in the application manifest. for example:')
            fprintf('%s\n', '                                                      --application-parameters param1=value1')
            fprintf('%s\n', '                                                      param2=value2.')
            fprintf('%s\n', '    --max-nodes --maximum-nodes                     : Specify the maximum number of nodes on which')
            fprintf('%s\n', '                                                      to place an application. The value of this')
            fprintf('%s\n', '                                                      parameter must be a non-negative integer. The')
            fprintf('%s\n', '                                                      default value is 0, which indicates the')
            fprintf('%s\n', '                                                      application can be placed on any number of')
            fprintf('%s\n', '                                                      nodes in the cluster.')
            fprintf('%s\n', '    --min-nodes --minimum-nodes                     : Specify the minimum number of nodes where')
            fprintf('%s\n', '                                                      Service Fabric will reserve capacity for this')
            fprintf('%s\n', '                                                      application, this does not mean that the')
            fprintf('%s\n', '                                                      application is guaranteed to have replicas on')
            fprintf('%s\n', '                                                      all those nodes. The value of this parameter')
            fprintf('%s\n', '                                                      must be a non-negative integer. Default value')
            fprintf('%s\n', '                                                      for this is zero, which means no capacity is')
            fprintf('%s\n', '                                                      reserved for the application.')
            fprintf('%s\n', '    --package-url                                   : Specify the url of the application package')
            fprintf('%s\n', '                                                      sfpkg file.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                         : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                      logs.')
            fprintf('%s\n', '    --help -h                                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                     : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                      none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                         : JMESPath query string. See')
            fprintf('%s\n', '                                                      http://jmespath.org/ for more information and')
            fprintf('%s\n', '                                                      examples.')
            fprintf('%s\n', '    --subscription                                  : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                      the default subscription using `az account set')
            fprintf('%s\n', '                                                      -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                       : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                      full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create application "testApp" with parameters. The application type "TestAppType" version "v1"')
            fprintf('%s\n', '    should already exist in the cluster, and the application parameters should be defined in the')
            fprintf('%s\n', '    application manifest.')
            fprintf('%s\n', '        az sf application create -g testRG -c testCluster --application-name testApp --application-')
            fprintf('%s\n', '        type-name TestAppType \')
            fprintf('%s\n', '          --application-type-version v1 --application-parameters key0=value0')
            fprintf('%s\n', '    Create application "testApp" and app type version using the package url provided.')
            fprintf('%s\n', '        az sf application create -g testRG -c testCluster --application-name testApp --application-')
            fprintf('%s\n', '        type-name TestAppType \')
            fprintf('%s\n', '          --application-type-version v1 --package-url')
            fprintf('%s\n', '        "https://sftestapp.blob.core.windows.net/sftestapp/testApp_1.0.sfpkg" \')
            fprintf('%s\n', '            --application-parameters key0=value0')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf application create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
