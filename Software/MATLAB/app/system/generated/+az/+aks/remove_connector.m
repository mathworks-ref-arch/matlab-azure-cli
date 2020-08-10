classdef remove_connector < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove_connector()
            % az aks remove-connector : Remove the ACI Connector from a managed Kubernetes cluster.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az aks remove-connector ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = connector_name(this, varargin)
            % Name of the ACI Connector.  Default: aci-connector.
            this.Options = [this.Options, '--connector-name', varargin{:}];
        end

        function this = graceful(this, varargin)
            % Use a "cordon and drain" strategy to evict pods safely before removing the ACI node.
            this.Options = [this.Options, '--graceful', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Remove support for deploying ACIs of this operating system type.  Allowed values: Both, Linux, Windows.  Default: Linux.
            this.Options = [this.Options, '--os-type', varargin{:}];
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
            fprintf('%s\n', '    az aks remove-connector : Remove the ACI Connector from a managed Kubernetes cluster.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --connector-name               : Name of the ACI Connector.  Default: aci-connector.')
            fprintf('%s\n', '    --graceful                     : Use a "cordon and drain" strategy to evict pods safely before')
            fprintf('%s\n', '                                     removing the ACI node.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --os-type                      : Remove support for deploying ACIs of this operating system')
            fprintf('%s\n', '                                     type.  Allowed values: Both, Linux, Windows.  Default: Linux.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Remove the ACI Connector from a cluster using the graceful mode.')
            fprintf('%s\n', '        az aks remove-connector --name MyManagedCluster --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --connector-name MyConnector --graceful')
            fprintf('%s\n', '    Remove the ACI Connector from a managed Kubernetes cluster. (autogenerated)')
            fprintf('%s\n', '        az aks remove-connector --connector-name MyConnector --name MyManagedCluster --os-type')
            fprintf('%s\n', '        Windows --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks remove-connector"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove_connector 
