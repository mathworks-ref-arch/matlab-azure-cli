classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sf application-type version create : Create a new application type on an Azure Service Fabric
            % cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf application-type version create ';
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

        function this = package_url(this, varargin)
            % Specify the url of the application package sfpkg file.
            this.Options = [this.Options, '--package-url', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az sf application-type version create : Create a new application type on an Azure Service Fabric')
            fprintf('%s\n', '    cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-type-name --name       [Required] : Specify the application type name.')
            fprintf('%s\n', '    --application-type-version --version [Required] : Specify the application type version.')
            fprintf('%s\n', '    --cluster-name -c                    [Required] : Specify the name of the cluster, if not given')
            fprintf('%s\n', '                                                      it will be same as resource group name.')
            fprintf('%s\n', '    --package-url                        [Required] : Specify the url of the application package')
            fprintf('%s\n', '                                                      sfpkg file.')
            fprintf('%s\n', '    --resource-group -g                  [Required] : Specify the resource group name. You can')
            fprintf('%s\n', '                                                      configure the default group using `az')
            fprintf('%s\n', '                                                      configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Create new application type version using the provided package url. The version in the')
            fprintf('%s\n', '    application manifest contained in the package should have the same version as the one specified')
            fprintf('%s\n', '    in --version.')
            fprintf('%s\n', '        az sf application-type version create -g testRG -c testCluster --application-type-name')
            fprintf('%s\n', '        testAppType \')
            fprintf('%s\n', '          --version 1.0 --package-url')
            fprintf('%s\n', '        "https://sftestapp.blob.core.windows.net/sftestapp/testApp_1.0.sfpkg"')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf application-type version create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
