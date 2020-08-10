classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network local-gateway update : Update a local VPN gateway.
            this.BaseCmd = 'az network local-gateway update ';
        end
        function this = gateway_ip_address(this, varargin)
            % Gateway's public IP address. (e.g. 10.1.1.1).
            this.Options = [this.Options, '--gateway-ip-address', varargin{:}];
        end

        function this = local_address_prefixes(this, varargin)
            % List of CIDR block prefixes representing the address space of the OnPremise VPN's subnet.
            this.Options = [this.Options, '--local-address-prefixes', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. BGP Peering Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = asn(this, varargin)
            % Autonomous System Number to use for the BGP settings.
            this.Options = [this.Options, '--asn', varargin{:}];
        end

        function this = bgp_peering_address(this, varargin)
            % IP address from the OnPremise VPN's subnet to use for BGP peering.
            this.Options = [this.Options, '--bgp-peering-address', varargin{:}];
        end

        function this = peer_weight(this, varargin)
            % Weight (0-100) added to routes learned through BGP peering.
            this.Options = [this.Options, '--peer-weight', varargin{:}];
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
            % Name of the local network gateway.
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
            fprintf('%s\n', '    az network local-gateway update : Update a local VPN gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-ip-address     : Gateway''s public IP address. (e.g. 10.1.1.1).')
            fprintf('%s\n', '    --local-address-prefixes : List of CIDR block prefixes representing the address space of the')
            fprintf('%s\n', '                               OnPremise VPN''s subnet.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', 'BGP Peering Arguments')
            fprintf('%s\n', '    --asn                    : Autonomous System Number to use for the BGP settings.')
            fprintf('%s\n', '    --bgp-peering-address    : IP address from the OnPremise VPN''s subnet to use for BGP peering.')
            fprintf('%s\n', '    --peer-weight            : Weight (0-100) added to routes learned through BGP peering.')
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
            fprintf('%s\n', '    --name -n                : Name of the local network gateway.')
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
            fprintf('%s\n', '    Update a Local Network Gateway provisioned with a 10.0.0.0/24 address prefix with additional')
            fprintf('%s\n', '    prefixes.')
            fprintf('%s\n', '        az network local-gateway update -g MyResourceGroup -n MyLocalGateway \')
            fprintf('%s\n', '            --local-address-prefixes 10.0.0.0/24 20.0.0.0/24 30.0.0.0/24')
            fprintf('%s\n', '    Update a local VPN gateway. (autogenerated)')
            fprintf('%s\n', '        az network local-gateway update --gateway-ip-address 23.99.221.164 --name MyLocalGateway')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network local-gateway update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
