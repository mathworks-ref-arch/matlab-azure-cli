classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway http-listener update : Update an HTTP listener.
            this.BaseCmd = 'az network application-gateway http-listener update ';
        end
        function this = frontend_ip(this, varargin)
            % The name or ID of the frontend IP configuration.
            this.Options = [this.Options, '--frontend-ip', varargin{:}];
        end

        function this = frontend_port(this, varargin)
            % The name or ID of the frontend port.
            this.Options = [this.Options, '--frontend-port', varargin{:}];
        end

        function this = host_name(this, varargin)
            % Host name to use for multisite gateways.
            this.Options = [this.Options, '--host-name', varargin{:}];
        end

        function this = host_names(this, varargin)
            % List of host names that allows special wildcard characters as well. Argument '--host-names' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--host-names', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = ssl_cert(this, varargin)
            % The name or ID of the SSL certificate to use.
            this.Options = [this.Options, '--ssl-cert', varargin{:}];
        end

        function this = waf_policy(this, varargin)
            % Name or ID of a Firewall Policy resource.
            this.Options = [this.Options, '--waf-policy', varargin{:}];
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
            % The name of the HTTP listener.
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
            fprintf('%s\n', '    az network application-gateway http-listener update : Update an HTTP listener.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --frontend-ip          : The name or ID of the frontend IP configuration.')
            fprintf('%s\n', '    --frontend-port        : The name or ID of the frontend port.')
            fprintf('%s\n', '    --host-name            : Host name to use for multisite gateways.')
            fprintf('%s\n', '    --host-names [Preview] : List of host names that allows special wildcard characters as')
            fprintf('%s\n', '                             well.')
            fprintf('%s\n', '        Argument ''--host-names'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --ssl-cert             : The name or ID of the SSL certificate to use.')
            fprintf('%s\n', '    --waf-policy           : Name or ID of a Firewall Policy resource.')
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
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name         : Name of the application gateway.')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : The name of the HTTP listener.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an HTTP listener to use a different hostname.')
            fprintf('%s\n', '        az network application-gateway http-listener update -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyHttpListener --host-name www.mynewhost.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway http-listener')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
