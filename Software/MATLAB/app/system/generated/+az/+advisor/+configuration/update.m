classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az advisor configuration update : Update Azure Advisor configuration.
            this.BaseCmd = 'az advisor configuration update ';
        end
        function this = exclude(this, varargin)
            % Exclude from recommendation generation.
            this.Options = [this.Options, '--exclude', varargin{:}];
        end

        function this = include(this, varargin)
            % Include in recommendation generation.
            this.Options = [this.Options, '--include', varargin{:}];
        end

        function this = low_cpu_threshold(this, varargin)
            % Value for low CPU threshold.  Allowed values: 10, 15, 20, 5.
            this.Options = [this.Options, '--low-cpu-threshold', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az advisor configuration update : Update Azure Advisor configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --exclude -e           : Exclude from recommendation generation.')
            fprintf('%s\n', '    --include -i           : Include in recommendation generation.')
            fprintf('%s\n', '    --low-cpu-threshold -l : Value for low CPU threshold.  Allowed values: 10, 15, 20, 5.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                  : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                             pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                             string>.')
            fprintf('%s\n', '    --force-string         : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                             attempting to convert to JSON.')
            fprintf('%s\n', '    --remove               : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                             property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                  : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                             Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update low CPU threshold for a given subscription to 20%.')
            fprintf('%s\n', '        az advisor configuration update -l 20')
            fprintf('%s\n', '    Exclude a given resource group from recommendation generation.')
            fprintf('%s\n', '        az advisor configuration update -g myRG -e')
            fprintf('%s\n', '    Update Azure Advisor configuration. (autogenerated)')
            fprintf('%s\n', '        az advisor configuration update --include --resource-group myRG')
            fprintf('%s\n', 'For more specific examples, use: az find "az advisor configuration update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
