classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az sf cluster node-type add : Add a new node type to a cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf cluster node-type add ';
        end
        function this = capacity(this, varargin)
            % The capacity tag applied to nodes in the node type. The cluster resource manager uses these tags to understand how much capacity a node has.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = node_type(this, varargin)
            % The Node type name.
            this.Options = [this.Options, '--node-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vm_password(this, varargin)
            % The password of the Vm.
            this.Options = [this.Options, '--vm-password', varargin{:}];
        end

        function this = vm_user_name(this, varargin)
            % The user name for logging to Vm. Default will be adminuser.
            this.Options = [this.Options, '--vm-user-name', varargin{:}];
        end

        function this = durability_level(this, varargin)
            % Durability level.  Allowed values: Bronze, Gold, Silver. Default: Bronze.
            this.Options = [this.Options, '--durability-level', varargin{:}];
        end

        function this = vm_sku(this, varargin)
            % VM Sku.  Default: Standard_D2_V2.
            this.Options = [this.Options, '--vm-sku', varargin{:}];
        end

        function this = vm_tier(this, varargin)
            % VM tier.  Default: Standard.
            this.Options = [this.Options, '--vm-tier', varargin{:}];
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
            fprintf('%s\n', '    az sf cluster node-type add : Add a new node type to a cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --capacity          [Required] : The capacity tag applied to nodes in the node type. The cluster')
            fprintf('%s\n', '                                     resource manager uses these tags to understand how much')
            fprintf('%s\n', '                                     capacity a node has.')
            fprintf('%s\n', '    --cluster-name -c   [Required] : Specify the name of the cluster, if not given it will be same')
            fprintf('%s\n', '                                     as resource group name.')
            fprintf('%s\n', '    --node-type         [Required] : The Node type name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Specify the resource group name. You can configure the default')
            fprintf('%s\n', '                                     group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vm-password       [Required] : The password of the Vm.')
            fprintf('%s\n', '    --vm-user-name      [Required] : The user name for logging to Vm. Default will be adminuser.')
            fprintf('%s\n', '    --durability-level             : Durability level.  Allowed values: Bronze, Gold, Silver.')
            fprintf('%s\n', '                                     Default: Bronze.')
            fprintf('%s\n', '    --vm-sku                       : VM Sku.  Default: Standard_D2_V2.')
            fprintf('%s\n', '    --vm-tier                      : VM tier.  Default: Standard.')
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
            fprintf('%s\n', '    Add a new node type to a cluster.')
            fprintf('%s\n', '        az sf cluster node-type add -g group-name -c cluster1 --node-type ''n2'' --capacity 5 --vm-')
            fprintf('%s\n', '        user-name ''adminName'' --vm-password testPassword0')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster node-type add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
