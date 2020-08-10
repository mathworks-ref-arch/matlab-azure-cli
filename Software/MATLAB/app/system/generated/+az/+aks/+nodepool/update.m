classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az aks nodepool update : Update a node pool to enable/disable cluster-autoscaler or change min-
            % count or max-count.
            this.BaseCmd = 'az aks nodepool update ';
        end
        function this = cluster_name(this, varargin)
            % The cluster name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The node pool name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = disable_cluster_autoscaler(this, varargin)
            % Disable cluster autoscaler.
            this.Options = [this.Options, '--disable-cluster-autoscaler', varargin{:}];
        end

        function this = enable_cluster_autoscaler(this, varargin)
            % Enable cluster autoscaler.
            this.Options = [this.Options, '--enable-cluster-autoscaler', varargin{:}];
        end

        function this = max_count(this, varargin)
            % Maximum nodes count used for autoscaler, when "--enable- cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = min_count(this, varargin)
            % Minimum nodes count used for autoscaler, when "--enable- cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = mode(this, varargin)
            % The mode for a node pool which defines a node pool's primary function. If set as "System", AKS prefers system pods scheduling to node pools with mode `System`. Learn more at https://aka.ms/aks/nodepool/mode.  Allowed values: System, User.
            this.Options = [this.Options, '--mode', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = update_cluster_autoscaler(this, varargin)
            % Update min-count or max-count for cluster autoscaler.
            this.Options = [this.Options, '--update-cluster-autoscaler', varargin{:}];
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
            fprintf('%s\n', '    az aks nodepool update : Update a node pool to enable/disable cluster-autoscaler or change min-')
            fprintf('%s\n', '    count or max-count.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name       [Required] : The cluster name.')
            fprintf('%s\n', '    --name -n            [Required] : The node pool name.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --disable-cluster-autoscaler -d : Disable cluster autoscaler.')
            fprintf('%s\n', '    --enable-cluster-autoscaler -e  : Enable cluster autoscaler.')
            fprintf('%s\n', '    --max-count                     : Maximum nodes count used for autoscaler, when "--enable-')
            fprintf('%s\n', '                                      cluster-autoscaler" specified. Please specify the value in the')
            fprintf('%s\n', '                                      range of [1, 100].')
            fprintf('%s\n', '    --min-count                     : Minimum nodes count used for autoscaler, when "--enable-')
            fprintf('%s\n', '                                      cluster-autoscaler" specified. Please specify the value in the')
            fprintf('%s\n', '                                      range of [1, 100].')
            fprintf('%s\n', '    --mode                          : The mode for a node pool which defines a node pool''s primary')
            fprintf('%s\n', '                                      function. If set as "System", AKS prefers system pods')
            fprintf('%s\n', '                                      scheduling to node pools with mode `System`. Learn more at')
            fprintf('%s\n', '                                      https://aka.ms/aks/nodepool/mode.  Allowed values: System,')
            fprintf('%s\n', '                                      User.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', '    --update-cluster-autoscaler -u  : Update min-count or max-count for cluster autoscaler.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable cluster-autoscaler within node count range [1,5]')
            fprintf('%s\n', '        az aks nodepool update --enable-cluster-autoscaler --min-count 1 --max-count 5 -g')
            fprintf('%s\n', '        MyResourceGroup -n nodepool1 --cluster-name MyManagedCluster')
            fprintf('%s\n', '    Disable cluster-autoscaler for an existing cluster')
            fprintf('%s\n', '        az aks nodepool update --disable-cluster-autoscaler -g MyResourceGroup -n nodepool1')
            fprintf('%s\n', '        --cluster-name MyManagedCluster')
            fprintf('%s\n', '    Update min-count or max-count for cluster autoscaler.')
            fprintf('%s\n', '        az aks nodepool update --update-cluster-autoscaler --min-count 1 --max-count 10 -g')
            fprintf('%s\n', '        MyResourceGroup -n nodepool1 --cluster-name MyManagedCluster')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks nodepool update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
