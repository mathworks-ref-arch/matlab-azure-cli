classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network private-link-service update : Update a private link service.
            this.BaseCmd = 'az network private-link-service update ';
        end
        function this = auto_approval(this, varargin)
            % Space-separated list of subscription IDs to auto-approve.
            this.Options = [this.Options, '--auto-approval', varargin{:}];
        end

        function this = enable_proxy_protocol(this, varargin)
            % Enable proxy protocol for private link service.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-proxy-protocol', varargin{:}];
        end

        function this = fqdns(this, varargin)
            % Space-separated list of FQDNs.
            this.Options = [this.Options, '--fqdns', varargin{:}];
        end

        function this = lb_frontend_ip_configs(this, varargin)
            % Space-separated list of names or IDs of load balancer frontend IP configurations to link to. If names are used, also supply `--lb- name`.
            this.Options = [this.Options, '--lb-frontend-ip-configs', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % Name of the load balancer to retrieve frontend IP configs from. Ignored if a frontend IP configuration ID is supplied.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = visibility(this, varargin)
            % Space-separated list of subscription IDs for which the private link service is visible.
            this.Options = [this.Options, '--visibility', varargin{:}];
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
            % Name of the private link service.
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
            fprintf('%s\n', '    az network private-link-service update : Update a private link service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auto-approval          : Space-separated list of subscription IDs to auto-approve.')
            fprintf('%s\n', '    --enable-proxy-protocol  : Enable proxy protocol for private link service.  Allowed values:')
            fprintf('%s\n', '                               false, true.')
            fprintf('%s\n', '    --fqdns                  : Space-separated list of FQDNs.')
            fprintf('%s\n', '    --lb-frontend-ip-configs : Space-separated list of names or IDs of load balancer frontend IP')
            fprintf('%s\n', '                               configurations to link to. If names are used, also supply `--lb-')
            fprintf('%s\n', '                               name`.')
            fprintf('%s\n', '    --lb-name                : Name of the load balancer to retrieve frontend IP configs from.')
            fprintf('%s\n', '                               Ignored if a frontend IP configuration ID is supplied.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', '    --visibility             : Space-separated list of subscription IDs for which the private link')
            fprintf('%s\n', '                               service is visible.')
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
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : Name of the private link service.')
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
            fprintf('%s\n', '    Update a private link service')
            fprintf('%s\n', '        az network private-link-service update -g MyResourceGroup -n MyPLSName --visibility SubId1')
            fprintf('%s\n', '        SubId2 --auto-approval SubId1 SubId2')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-link-service update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
