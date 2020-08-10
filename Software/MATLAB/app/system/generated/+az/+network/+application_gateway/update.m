classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway update : Update an application gateway.
            this.BaseCmd = 'az network application-gateway update ';
        end
        function this = capacity(this, varargin)
            % The number of instances to use with the application gateway.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = custom_error_pages(this, varargin)
            % Space-separated list of custom error pages in `STATUS_CODE=URL` format.
            this.Options = [this.Options, '--custom-error-pages', varargin{:}];
        end

        function this = http2(this, varargin)
            % Use HTTP2 for the application gateway.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--http2', varargin{:}];
        end

        function this = max_capacity(this, varargin)
            % Upper bound on the number of application gateway instances.
            this.Options = [this.Options, '--max-capacity', varargin{:}];
        end

        function this = min_capacity(this, varargin)
            % Lower bound on the number of application gateway instances.
            this.Options = [this.Options, '--min-capacity', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku(this, varargin)
            % The name of the SKU.  Allowed values: Standard_Large, Standard_Medium, Standard_Small, Standard_v2, WAF_Large, WAF_Medium, WAF_v2.
            this.Options = [this.Options, '--sku', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the application gateway.
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
            fprintf('%s\n', '    az network application-gateway update : Update an application gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --capacity           : The number of instances to use with the application gateway.')
            fprintf('%s\n', '    --custom-error-pages : Space-separated list of custom error pages in `STATUS_CODE=URL` format.')
            fprintf('%s\n', '    --http2              : Use HTTP2 for the application gateway.  Allowed values: Disabled,')
            fprintf('%s\n', '                           Enabled.')
            fprintf('%s\n', '    --max-capacity       : Upper bound on the number of application gateway instances.')
            fprintf('%s\n', '    --min-capacity       : Lower bound on the number of application gateway instances.')
            fprintf('%s\n', '    --no-wait            : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku                : The name of the SKU.  Allowed values: Standard_Large, Standard_Medium,')
            fprintf('%s\n', '                           Standard_Small, Standard_v2, WAF_Large, WAF_Medium, WAF_v2.')
            fprintf('%s\n', '    --tags               : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                           existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                           pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                           string>.')
            fprintf('%s\n', '    --force-string       : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                           to convert to JSON.')
            fprintf('%s\n', '    --remove             : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                           property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                           Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n            : Name of the application gateway.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an application gateway. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway update --name MyApplicationGateway --resource-group')
            fprintf('%s\n', '        MyResourceGroup --set useRemoteGateways=true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
