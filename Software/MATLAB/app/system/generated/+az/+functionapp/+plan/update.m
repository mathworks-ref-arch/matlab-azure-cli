classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az functionapp plan update : Update an App Service plan for an Azure Function.
            this.BaseCmd = 'az functionapp plan update ';
        end
        function this = max_burst(this, varargin)
            % The maximum number of elastic workers for the plan.
            this.Options = [this.Options, '--max-burst', varargin{:}];
        end

        function this = min_instances(this, varargin)
            % The number of workers for the app service plan.
            this.Options = [this.Options, '--min-instances', varargin{:}];
        end

        function this = sku(this, varargin)
            % The SKU of the app service plan.
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
            fprintf('%s\n', '    az functionapp plan update : Update an App Service plan for an Azure Function.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --max-burst                         : The maximum number of elastic workers for the plan.')
            fprintf('%s\n', '    --min-instances --number-of-workers : The number of workers for the app service plan.')
            fprintf('%s\n', '    --sku                               : The SKU of the app service plan.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                               : Add an object to a list of objects by specifying a path')
            fprintf('%s\n', '                                          and key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                          <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                      : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                          instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                            : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                          --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                          propertyToRemove.')
            fprintf('%s\n', '    --set                               : Update an object by specifying a property path and value')
            fprintf('%s\n', '                                          to set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                               : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                          complete resource ID containing all information of')
            fprintf('%s\n', '                                          ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                          or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                           : The name of the app service plan.')
            fprintf('%s\n', '    --resource-group -g                 : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an app service plan to EP2 sku with twenty maximum workers.')
            fprintf('%s\n', '        az functionapp plan update -g MyResourceGroup -n MyPlan --max-burst 20 --sku EP2')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp plan update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
