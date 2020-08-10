classdef get_credentials < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_credentials()
            % az aks get-credentials : Get access credentials for a managed Kubernetes cluster.
            this.BaseCmd = 'az aks get-credentials ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = admin(this, varargin)
            % Get cluster administrator credentials.  Default: cluster user credentials.
            this.Options = [this.Options, '--admin', varargin{:}];
        end

        function this = context(this, varargin)
            % If specified, overwrite the default context name.
            this.Options = [this.Options, '--context', varargin{:}];
        end

        function this = file(this, varargin)
            % Kubernetes configuration file to update. Use "-" to print YAML to stdout instead.  Default: /home/<username>/.kube/config.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = overwrite_existing(this, varargin)
            % Overwrite any existing cluster entry with the same name.
            this.Options = [this.Options, '--overwrite-existing', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json. Credentials are always in YAML format, so this argument is effectively ignored.
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
            fprintf('%s\n', '    az aks get-credentials : Get access credentials for a managed Kubernetes cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --admin -a                     : Get cluster administrator credentials.  Default: cluster user')
            fprintf('%s\n', '                                     credentials.')
            fprintf('%s\n', '    --context                      : If specified, overwrite the default context name.')
            fprintf('%s\n', '    --file -f                      : Kubernetes configuration file to update. Use "-" to print YAML')
            fprintf('%s\n', '                                     to stdout instead.  Default: /home/<username>/.kube/config.')
            fprintf('%s\n', '    --overwrite-existing           : Overwrite any existing cluster entry with the same name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '        Credentials are always in YAML format, so this argument is effectively ignored.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get access credentials for a managed Kubernetes cluster. (autogenerated)')
            fprintf('%s\n', '        az aks get-credentials --name MyManagedCluster --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks get-credentials"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_credentials 
