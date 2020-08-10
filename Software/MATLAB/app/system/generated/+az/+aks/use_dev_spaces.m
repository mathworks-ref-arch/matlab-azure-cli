classdef use_dev_spaces < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = use_dev_spaces()
            % az aks use-dev-spaces : Use Azure Dev Spaces with a managed Kubernetes cluster.
            this.BaseCmd = 'az aks use-dev-spaces ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = endpoint(this, varargin)
            % The endpoint type to be used for a Azure Dev Spaces controller. See https://aka.ms/azds-networking for more information. Allowed values: None, Private, Public.  Default: Public.
            this.Options = [this.Options, '--endpoint', varargin{:}];
        end

        function this = space(this, varargin)
            % Name of the new or existing dev space to select. Defaults to an interactive selection experience.
            this.Options = [this.Options, '--space', varargin{:}];
        end

        function this = update(this, varargin)
            % Update to the latest Azure Dev Spaces client components.
            this.Options = [this.Options, '--update', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation. Requires --space.
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
            fprintf('%s\n', '    az aks use-dev-spaces : Use Azure Dev Spaces with a managed Kubernetes cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --endpoint -e                  : The endpoint type to be used for a Azure Dev Spaces controller.')
            fprintf('%s\n', '                                     See https://aka.ms/azds-networking for more information.')
            fprintf('%s\n', '                                     Allowed values: None, Private, Public.  Default: Public.')
            fprintf('%s\n', '    --space -s                     : Name of the new or existing dev space to select. Defaults to an')
            fprintf('%s\n', '                                     interactive selection experience.')
            fprintf('%s\n', '    --update                       : Update to the latest Azure Dev Spaces client components.')
            fprintf('%s\n', '    --yes -y                       : Do not prompt for confirmation. Requires --space.')
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
            fprintf('%s\n', '    Use Azure Dev Spaces with a managed Kubernetes cluster, interactively selecting a dev space.')
            fprintf('%s\n', '        az aks use-dev-spaces -g my-aks-group -n my-aks')
            fprintf('%s\n', '    Use Azure Dev Spaces with a managed Kubernetes cluster, updating to the latest Azure Dev Spaces')
            fprintf('%s\n', '    client components and selecting a new or existing dev space ''my-space''.')
            fprintf('%s\n', '        az aks use-dev-spaces -g my-aks-group -n my-aks --update --space my-space')
            fprintf('%s\n', '    Use Azure Dev Spaces with a managed Kubernetes cluster, selecting a new or existing dev space')
            fprintf('%s\n', '    ''develop/my-space'' without prompting for confirmation.')
            fprintf('%s\n', '        az aks use-dev-spaces -g my-aks-group -n my-aks -s develop/my-space -y')
            fprintf('%s\n', '    Use Azure Dev Spaces with a managed Kubernetes cluster with a private endpoint.')
            fprintf('%s\n', '        az aks use-dev-spaces -g my-aks-group -n my-aks -e private')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks use-dev-spaces"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class use_dev_spaces 
