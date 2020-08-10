classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway url-path-map update : Update a URL path map.
            this.BaseCmd = 'az network application-gateway url-path-map update ';
        end
        function this = default_address_pool(this, varargin)
            % The name or ID of the default backend address pool.
            this.Options = [this.Options, '--default-address-pool', varargin{:}];
        end

        function this = default_http_settings(this, varargin)
            % The name or ID of the default HTTP settings.
            this.Options = [this.Options, '--default-http-settings', varargin{:}];
        end

        function this = default_redirect_config(this, varargin)
            % The name or ID of the default redirect configuration.
            this.Options = [this.Options, '--default-redirect-config', varargin{:}];
        end

        function this = default_rewrite_rule_set(this, varargin)
            % The name or ID of the default rewrite rule set.
            this.Options = [this.Options, '--default-rewrite-rule-set', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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

        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the URL path map.
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
            fprintf('%s\n', '    az network application-gateway url-path-map update : Update a URL path map.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --default-address-pool     : The name or ID of the default backend address pool.')
            fprintf('%s\n', '    --default-http-settings    : The name or ID of the default HTTP settings.')
            fprintf('%s\n', '    --default-redirect-config  : The name or ID of the default redirect configuration.')
            fprintf('%s\n', '    --default-rewrite-rule-set : The name or ID of the default rewrite rule set.')
            fprintf('%s\n', '    --no-wait                  : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                      : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                 value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                 string or JSON string>.')
            fprintf('%s\n', '    --force-string             : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                 attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                   : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                 property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                      : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                 Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name             : Name of the application gateway.')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : The name of the URL path map.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a URL path map to use new default HTTP settings.')
            fprintf('%s\n', '        az network application-gateway url-path-map update -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyUrlPathMap --default-http-settings MyNewHttpSettings')
            fprintf('%s\n', '    Update a URL path map. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway url-path-map update --default-address-pool MyAddressPool')
            fprintf('%s\n', '        --default-http-settings MyNewHttpSettings --gateway-name MyAppGateway --name MyUrlPathMap')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', '    Update a URL path map. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway url-path-map update --gateway-name MyAppGateway --name')
            fprintf('%s\n', '        MyUrlPathMap --resource-group MyResourceGroup --set useRemoteGateways=true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway url-path-map')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
