classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az appservice plan update : Update an app service plan.
            % See https:///go.microsoft.com/fwlink/?linkid=2133856 to learn more.
            this.BaseCmd = 'az appservice plan update ';
        end
        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = number_of_workers(this, varargin)
            % Number of workers to be allocated.  Default: 1.
            this.Options = [this.Options, '--number-of-workers', varargin{:}];
        end

        function this = sku(this, varargin)
            % The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), PC2 (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large).  Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2, P2V2, P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.
            this.Options = [this.Options, '--sku', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the app service plan.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az appservice plan update : Update an app service plan.')
            fprintf('%s\n', '        See https:///go.microsoft.com/fwlink/?linkid=2133856 to learn more.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --no-wait           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --number-of-workers : Number of workers to be allocated.  Default: 1.')
            fprintf('%s\n', '    --sku               : The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic')
            fprintf('%s\n', '                          Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), PC2')
            fprintf('%s\n', '                          (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium')
            fprintf('%s\n', '                          Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated')
            fprintf('%s\n', '                          Large).  Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2, P2V2,')
            fprintf('%s\n', '                          P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the app service plan.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an app service plan. (autogenerated)')
            fprintf('%s\n', '        az appservice plan update --name MyAppServicePlan --resource-group MyResourceGroup --sku F1')
            fprintf('%s\n', 'For more specific examples, use: az find "az appservice plan update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
