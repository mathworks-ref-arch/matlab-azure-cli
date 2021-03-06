classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az sf cluster node remove : Remove nodes from a node type in a cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf cluster node remove ';
        end
        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = node_type(this, varargin)
            % The Node type name.
            this.Options = [this.Options, '--node-type', varargin{:}];
        end

        function this = number_of_nodes_to_remove(this, varargin)
            % Number of nodes to remove.
            this.Options = [this.Options, '--number-of-nodes-to-remove', varargin{:}];
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
            fprintf('%s\n', '    az sf cluster node remove : Remove nodes from a node type in a cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name -c           [Required] : Specify the name of the cluster, if not given it will')
            fprintf('%s\n', '                                             be same as resource group name.')
            fprintf('%s\n', '    --node-type                 [Required] : The Node type name.')
            fprintf('%s\n', '    --number-of-nodes-to-remove [Required] : Number of nodes to remove.')
            fprintf('%s\n', '    --resource-group -g         [Required] : Specify the resource group name. You can configure the')
            fprintf('%s\n', '                                             default group using `az configure --defaults')
            fprintf('%s\n', '                                             group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                            : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                             table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                             more information and examples.')
            fprintf('%s\n', '    --subscription                         : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                             default subscription using `az account set -s')
            fprintf('%s\n', '                                             NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                              : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                             logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Remove 2 ''nt1'' nodes from a cluster.')
            fprintf('%s\n', '        az sf cluster node remove -g group-name -c cluster1 --node-type ''nt1'' --number-of-nodes-to-')
            fprintf('%s\n', '        remove 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster node remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
