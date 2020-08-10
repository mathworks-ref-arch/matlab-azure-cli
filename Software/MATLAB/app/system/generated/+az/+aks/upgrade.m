classdef upgrade < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upgrade()
            % az aks upgrade : Upgrade a managed Kubernetes cluster to a newer version.
            % Kubernetes will be unavailable during cluster upgrades.
            this.BaseCmd = 'az aks upgrade ';
        end
        function this = kubernetes_version(this, varargin)
            % Version of Kubernetes to upgrade the cluster to, such as "1.16.9".  Values from: `az aks get-upgrades`.
            this.Options = [this.Options, '--kubernetes-version', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = control_plane_only(this, varargin)
            % Upgrade the cluster control plane only. If not specified, both control plane AND all node pools will be upgraded.
            this.Options = [this.Options, '--control-plane-only', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az aks upgrade : Upgrade a managed Kubernetes cluster to a newer version.')
            fprintf('%s\n', '        Kubernetes will be unavailable during cluster upgrades.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --kubernetes-version -k [Required] : Version of Kubernetes to upgrade the cluster to, such as')
            fprintf('%s\n', '                                         "1.16.9".  Values from: `az aks get-upgrades`.')
            fprintf('%s\n', '    --name -n               [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --control-plane-only               : Upgrade the cluster control plane only. If not specified,')
            fprintf('%s\n', '                                         both control plane AND all node pools will be upgraded.')
            fprintf('%s\n', '    --no-wait                          : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --yes -y                           : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Upgrade a managed Kubernetes cluster to a newer version. (autogenerated)')
            fprintf('%s\n', '        az aks upgrade --kubernetes-version 1.12.6 --name MyManagedCluster --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks upgrade"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upgrade 
