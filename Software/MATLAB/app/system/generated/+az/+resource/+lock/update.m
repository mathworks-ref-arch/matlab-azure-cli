classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az resource lock update : Update a resource-level lock.
            this.BaseCmd = 'az resource lock update ';
        end
        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = lock_type(this, varargin)
            % The type of lock restriction.  Allowed values: CanNotDelete, ReadOnly.
            this.Options = [this.Options, '--lock-type', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the lock.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = notes(this, varargin)
            % Notes about this lock.
            this.Options = [this.Options, '--notes', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
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

        function this = namespace(this, varargin)
            % Provider namespace (Ex: 'Microsoft.Provider').
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path (Ex: 'resA/myA/resB/myB').
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource(this, varargin)
            % If an ID is given, other resource arguments should not be given.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % The resource type (Ex: 'resC'). Can also accept namespace/type format (Ex: 'Microsoft.Provider/resC').
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az resource lock update : Update a resource-level lock.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). If provided, no other')
            fprintf('%s\n', '                                 "Resource Id" arguments should be specified.')
            fprintf('%s\n', '    --lock-type -t             : The type of lock restriction.  Allowed values: CanNotDelete,')
            fprintf('%s\n', '                                 ReadOnly.')
            fprintf('%s\n', '    --name -n                  : Name of the lock.')
            fprintf('%s\n', '    --notes                    : Notes about this lock.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --namespace                : Provider namespace (Ex: ''Microsoft.Provider'').')
            fprintf('%s\n', '    --parent                   : The parent path (Ex: ''resA/myA/resB/myB'').')
            fprintf('%s\n', '    --resource --resource-name : If an ID is given, other resource arguments should not be given.')
            fprintf('%s\n', '    --resource-type            : The resource type (Ex: ''resC''). Can also accept namespace/type')
            fprintf('%s\n', '                                 format (Ex: ''Microsoft.Provider/resC'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a resource level lock with new notes and type')
            fprintf('%s\n', '        az resource lock update --name lockName -g MyResourceGroup --resource myvnet --resource-type')
            fprintf('%s\n', '        Microsoft.Network/virtualNetworks --notes newNotesHere --lock-type CanNotDelete')
            fprintf('%s\n', '    Update a resource-level lock. (autogenerated)')
            fprintf('%s\n', '        az resource lock update --lock-type CanNotDelete --name lockName --namespace')
            fprintf('%s\n', '        Microsoft.Network --resource-group MyResourceGroup --resource-name myvnet --resource-type')
            fprintf('%s\n', '        Microsoft.Network/virtualNetworks')
            fprintf('%s\n', 'For more specific examples, use: az find "az resource lock update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
