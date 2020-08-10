classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor log-analytics workspace linked-service create : Create a linked service.
            this.BaseCmd = 'az monitor log-analytics workspace linked-service create ';
        end
        function this = name(this, varargin)
            % Name of the linkedServices resource. Supported values: cluster, automation.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = workspace_name(this, varargin)
            % Name of the Log Analytics Workspace.
            this.Options = [this.Options, '--workspace-name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_id(this, varargin)
            % The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = write_access_resource_id(this, varargin)
            % The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access.
            this.Options = [this.Options, '--write-access-resource-id', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-analytics workspace linked-service create : Create a linked service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the linkedServices resource. Supported values: cluster,')
            fprintf('%s\n', '                                     automation.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --workspace-name    [Required] : Name of the Log Analytics Workspace.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-id                  : The resource id of the resource that will be linked to the')
            fprintf('%s\n', '                                     workspace. This should be used for linking resources which')
            fprintf('%s\n', '                                     require read access.')
            fprintf('%s\n', '    --write-access-resource-id     : The resource id of the resource that will be linked to the')
            fprintf('%s\n', '                                     workspace. This should be used for linking resources which')
            fprintf('%s\n', '                                     require write access.')
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
            fprintf('%s\n', '    Create a linked service.')
            fprintf('%s\n', '        az monitor log-analytics workspace linked-service create -g MyResourceGroup -n cluster \')
            fprintf('%s\n', '          --workspace-name MyWorkspace --write-access-resource-id /subscriptions/00000000-0000-0000-')
            fprintf('%s\n', '        0000-000000000000/resourceGroups/MyResourceGroup/providers/Microsoft.OperationalInsights/clu')
            fprintf('%s\n', '        sters/MyCluster')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace linked-service')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
