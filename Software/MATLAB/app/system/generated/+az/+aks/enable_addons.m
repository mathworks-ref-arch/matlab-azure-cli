classdef enable_addons < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable_addons()
            % az aks enable-addons : Enable Kubernetes addons.
            % These addons are available:
            % http_application_routing - configure ingress with automatic public DNS name creation.
            % monitoring - turn on Log Analytics monitoring. Requires "--workspace-resource-id".
            % If monitoring addon is enabled --no-wait argument will have no effect
            % virtual-node - enable AKS Virtual Node (PREVIEW). Requires --subnet-name to provide the
            % name of an existing subnet for the Virtual Node to use.
            this.BaseCmd = 'az aks enable-addons ';
        end
        function this = addons(this, varargin)
            % Enable the Kubernetes addons in a comma-separated list.
            this.Options = [this.Options, '--addons', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = subnet_name(this, varargin)
            % Name of an existing subnet to use with the virtual-node add-on.
            this.Options = [this.Options, '--subnet-name', varargin{:}];
        end

        function this = workspace_resource_id(this, varargin)
            % The resource ID of an existing Log Analytics Workspace to use for storing monitoring data.
            this.Options = [this.Options, '--workspace-resource-id', varargin{:}];
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
            fprintf('%s\n', '    az aks enable-addons : Enable Kubernetes addons.')
            fprintf('%s\n', '        These addons are available:')
            fprintf('%s\n', '            http_application_routing - configure ingress with automatic public DNS name creation.')
            fprintf('%s\n', '            monitoring - turn on Log Analytics monitoring. Requires "--workspace-resource-id".')
            fprintf('%s\n', '                         If monitoring addon is enabled --no-wait argument will have no effect')
            fprintf('%s\n', '            virtual-node - enable AKS Virtual Node (PREVIEW). Requires --subnet-name to provide the')
            fprintf('%s\n', '        name of an existing subnet for the Virtual Node to use.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --addons -a         [Required] : Enable the Kubernetes addons in a comma-separated list.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --subnet-name -s               : Name of an existing subnet to use with the virtual-node add-on.')
            fprintf('%s\n', '    --workspace-resource-id        : The resource ID of an existing Log Analytics Workspace to use')
            fprintf('%s\n', '                                     for storing monitoring data.')
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
            fprintf('%s\n', '    Enable Kubernetes addons. (autogenerated)')
            fprintf('%s\n', '        az aks enable-addons --addons virtual-node --name MyManagedCluster --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks enable-addons"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable_addons 
