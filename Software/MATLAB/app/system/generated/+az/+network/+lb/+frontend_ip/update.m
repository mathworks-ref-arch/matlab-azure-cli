classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network lb frontend-ip update : Update a frontend IP address.
            this.BaseCmd = 'az network lb frontend-ip update ';
        end
        function this = private_ip_address(this, varargin)
            % Static private IP address to associate with the configuration. Use "" to remove the static address and use a dynamic address instead.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of the existing public IP to associate with the configuration.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = public_ip_prefix(this, varargin)
            % Name or ID of a public IP prefix.
            this.Options = [this.Options, '--public-ip-prefix', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of an existing subnet. If name is specified, also specify --vnet-name.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) associated with the subnet (Omit if supplying a subnet id).
            this.Options = [this.Options, '--vnet-name', varargin{:}];
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

        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the frontend IP configuration.
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
            fprintf('%s\n', '    az network lb frontend-ip update : Update a frontend IP address.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --private-ip-address : Static private IP address to associate with the configuration. Use "" to')
            fprintf('%s\n', '                           remove the static address and use a dynamic address instead.')
            fprintf('%s\n', '    --public-ip-address  : Name or ID of the existing public IP to associate with the configuration.')
            fprintf('%s\n', '    --public-ip-prefix   : Name or ID of a public IP prefix.')
            fprintf('%s\n', '    --subnet             : Name or ID of an existing subnet. If name is specified, also specify')
            fprintf('%s\n', '                           --vnet-name.')
            fprintf('%s\n', '    --vnet-name          : The virtual network (VNet) associated with the subnet (Omit if supplying')
            fprintf('%s\n', '                           a subnet id).')
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
            fprintf('%s\n', '    --lb-name            : The load balancer name.')
            fprintf('%s\n', '    --name -n            : The name of the frontend IP configuration.')
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
            fprintf('%s\n', '    Update the frontend IP address of a public load balancer.')
            fprintf('%s\n', '        az network lb frontend-ip update -g MyResourceGroup --lb-name MyLb -n MyFrontendIp --public-')
            fprintf('%s\n', '        ip-address MyNewPublicIp')
            fprintf('%s\n', '    Update the frontend IP address of an internal load balancer.')
            fprintf('%s\n', '        az network lb frontend-ip update -g MyResourceGroup --lb-name MyLb -n MyFrontendIp')
            fprintf('%s\n', '        --private-ip-address 10.10.10.50')
            fprintf('%s\n', '    Update a frontend IP address. (autogenerated)')
            fprintf('%s\n', '        az network lb frontend-ip update --lb-name MyLb --name MyFrontendIp --resource-group')
            fprintf('%s\n', '        MyResourceGroup --set tags.CostCenter=MyBusinessGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb frontend-ip update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
