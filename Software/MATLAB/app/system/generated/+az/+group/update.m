classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az group update : Update a resource group.
            this.BaseCmd = 'az group update ';
        end
        function this = name(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az group update : Update a resource group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name --resource-group -g -n [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                                   : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                               Use '''' to clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                    : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                               path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                               property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                               string>.')
            fprintf('%s\n', '    --force-string                           : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                               instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                 : Remove a property or an element from a list.')
            fprintf('%s\n', '                                               Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                               --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                    : Update an object by specifying a property path and')
            fprintf('%s\n', '                                               value to set.  Example: --set')
            fprintf('%s\n', '                                               property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                              : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                               table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                  : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                               more information and examples.')
            fprintf('%s\n', '    --subscription                           : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                               default subscription using `az account set -s')
            fprintf('%s\n', '                                               NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                               debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a resource group. (autogenerated)')
            fprintf('%s\n', '        az group update --resource-group MyResourceGroup --set')
            fprintf('%s\n', '        tags.CostCenter=''{"Dept":"IT","Environment":"Test"}''')
            fprintf('%s\n', 'For more specific examples, use: az find "az group update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
