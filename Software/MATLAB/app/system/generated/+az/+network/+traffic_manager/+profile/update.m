classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network traffic-manager profile update : Update a traffic manager profile.
            this.BaseCmd = 'az network traffic-manager profile update ';
        end
        function this = routing_method(this, varargin)
            % Routing method.  Allowed values: Geographic, Multivalue, Performance, Priority, Subnet, Weighted.
            this.Options = [this.Options, '--routing-method', varargin{:}];
        end

        function this = status(this, varargin)
            % Status of the Traffic Manager profile.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = ttl(this, varargin)
            % DNS config time-to-live in seconds.
            this.Options = [this.Options, '--ttl', varargin{:}];
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
            % The name of the Traffic Manager profile.
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Monitor Configuration Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = custom_headers(this, varargin)
            % Space-separated list of NAME=VALUE pairs.
            this.Options = [this.Options, '--custom-headers', varargin{:}];
        end

        function this = interval(this, varargin)
            % The interval in seconds at which health checks are conducted.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = max_failures(this, varargin)
            % The number of consecutive failed health checks tolerated before an endpoint is considered degraded.
            this.Options = [this.Options, '--max-failures', varargin{:}];
        end

        function this = path(this, varargin)
            % Path to monitor. Use "" for none.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = port(this, varargin)
            % Port to monitor.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Monitor protocol.  Allowed values: HTTP, HTTPS, TCP.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = status_code_ranges(this, varargin)
            % Space-separated list of status codes in MIN-MAX or VAL format.
            this.Options = [this.Options, '--status-code-ranges', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The time in seconds allowed for endpoints to respond to a health check.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network traffic-manager profile update : Update a traffic manager profile.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --routing-method     : Routing method.  Allowed values: Geographic, Multivalue, Performance,')
            fprintf('%s\n', '                           Priority, Subnet, Weighted.')
            fprintf('%s\n', '    --status             : Status of the Traffic Manager profile.  Allowed values: Disabled,')
            fprintf('%s\n', '                           Enabled.')
            fprintf('%s\n', '    --tags               : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                           existing tags.')
            fprintf('%s\n', '    --ttl                : DNS config time-to-live in seconds.')
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
            fprintf('%s\n', 'Monitor Configuration Arguments')
            fprintf('%s\n', '    --custom-headers     : Space-separated list of NAME=VALUE pairs.')
            fprintf('%s\n', '    --interval           : The interval in seconds at which health checks are conducted.')
            fprintf('%s\n', '    --max-failures       : The number of consecutive failed health checks tolerated before an')
            fprintf('%s\n', '                           endpoint is considered degraded.')
            fprintf('%s\n', '    --path               : Path to monitor. Use "" for none.')
            fprintf('%s\n', '    --port               : Port to monitor.')
            fprintf('%s\n', '    --protocol           : Monitor protocol.  Allowed values: HTTP, HTTPS, TCP.')
            fprintf('%s\n', '    --status-code-ranges : Space-separated list of status codes in MIN-MAX or VAL format.')
            fprintf('%s\n', '    --timeout            : The time in seconds allowed for endpoints to respond to a health check.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n            : The name of the Traffic Manager profile.')
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
            fprintf('%s\n', '    Update a traffic manager profile to change the TTL to 300.')
            fprintf('%s\n', '        az network traffic-manager profile update -g MyResourceGroup -n MyTmProfile --ttl 300')
            fprintf('%s\n', '    Update a traffic manager profile. (autogenerated)')
            fprintf('%s\n', '        az network traffic-manager profile update --name MyTmProfile --resource-group')
            fprintf('%s\n', '        MyResourceGroup --status Enabled')
            fprintf('%s\n', '    Update a traffic manager profile. (autogenerated)')
            fprintf('%s\n', '        az network traffic-manager profile update --name MyTmProfile --path "/" --routing-method')
            fprintf('%s\n', '        Performance')
            fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager profile update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
