classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az netappfiles pool update : Update the tags of the specified ANF pool.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles pool update ';
        end
        function this = service_level(this, varargin)
            % The service level for the ANF pool.  Allowed values: Premium, Standard, Ultra.
            this.Options = [this.Options, '--service-level', varargin{:}];
        end

        function this = size_(this, varargin)
            % The size for the ANF pool. Must be an integer number of tebibytes in multiples of 4.
            this.Options = [this.Options, '--size', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in `key[=value]` format.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the ANF pool.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            fprintf('%s\n', '    az netappfiles pool update : Update the tags of the specified ANF pool.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --service-level          : The service level for the ANF pool.  Allowed values: Premium,')
            fprintf('%s\n', '                               Standard, Ultra.')
            fprintf('%s\n', '    --size                   : The size for the ANF pool. Must be an integer number of tebibytes in')
            fprintf('%s\n', '                               multiples of 4.')
            fprintf('%s\n', '    --tags                   : Space-separated tags in `key[=value]` format.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                    : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                               pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                               JSON string>.')
            fprintf('%s\n', '    --force-string           : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                               attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                 : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                               property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                    : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                               Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a        : The name of the ANF account.')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name --pool-name -n -p : The name of the ANF pool.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update specific values for an ANF pool')
            fprintf('%s\n', '        az netappfiles pool update -g mygroup --account-name myaccname --name mypoolname --service-')
            fprintf('%s\n', '        level ultra --tags mytag1=abcd mytag2=efgh')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles pool update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
