classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az sf application show : Show the properties of an application on an Azure Service Fabric
            % cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf application show ';
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
            fprintf('%s\n', '    az sf application show : Show the properties of an application on an Azure Service Fabric')
            fprintf('%s\n', '    cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-name --name [Required] : Specify the application name.')
            fprintf('%s\n', '    --cluster-name -c         [Required] : Specify the name of the cluster, if not given it will be')
            fprintf('%s\n', '                                           same as resource group name.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Specify the resource group name. You can configure the')
            fprintf('%s\n', '                                           default group using `az configure --defaults')
            fprintf('%s\n', '                                           group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get application.')
            fprintf('%s\n', '        az sf application show -g testRG -c testCluster --application-name testApp')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf application show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
