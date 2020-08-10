classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az functionapp config access-restriction add : Adds an Access Restriction to the functionapp.
            % Command group 'functionapp config access-restriction' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az functionapp config access-restriction add ';
        end
        function this = priority(this, varargin)
            % Priority of the access restriction rule.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = action(this, varargin)
            % Allow or deny access.  Allowed values: Allow, Deny.  Default: Allow.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = description(this, varargin)
            % Description of the access restriction rule.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = ignore_missing_endpoint(this, varargin)
            % Create access restriction rule with checking if the subnet has Microsoft.Web service endpoint enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-missing-endpoint', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % IP address or CIDR range.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = rule_name(this, varargin)
            % Name of the access restriction rule to add.
            this.Options = [this.Options, '--rule-name', varargin{:}];
        end

        function this = scm_site(this, varargin)
            % True if access restrictions is added for scm site.  Allowed values: false, true.
            this.Options = [this.Options, '--scm-site', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Subnet name (requires vNet name) or subnet resource id.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % VNet name.
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

        function this = name(this, varargin)
            % Name of the function app.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az functionapp config access-restriction add : Adds an Access Restriction to the functionapp.')
            fprintf('%s\n', '        Command group ''functionapp config access-restriction'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --priority -p     [Required] : Priority of the access restriction rule.')
            fprintf('%s\n', '    --action                     : Allow or deny access.  Allowed values: Allow, Deny.  Default:')
            fprintf('%s\n', '                                   Allow.')
            fprintf('%s\n', '    --description                : Description of the access restriction rule.')
            fprintf('%s\n', '    --ignore-missing-endpoint -i : Create access restriction rule with checking if the subnet has')
            fprintf('%s\n', '                                   Microsoft.Web service endpoint enabled.  Allowed values: false,')
            fprintf('%s\n', '                                   true.')
            fprintf('%s\n', '    --ip-address                 : IP address or CIDR range.')
            fprintf('%s\n', '    --rule-name -r               : Name of the access restriction rule to add.')
            fprintf('%s\n', '    --scm-site                   : True if access restrictions is added for scm site.  Allowed')
            fprintf('%s\n', '                                   values: false, true.')
            fprintf('%s\n', '    --slot -s                    : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                   specified.')
            fprintf('%s\n', '    --subnet                     : Subnet name (requires vNet name) or subnet resource id.')
            fprintf('%s\n', '    --vnet-name                  : VNet name.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : Name of the function app.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add Access Restriction opening (Allow) named developers for IPv4 address 130.220.0.0/27 with')
            fprintf('%s\n', '    priority 200 to main site.')
            fprintf('%s\n', '        az functionapp config access-restriction add -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        developers --action Allow --ip-address 130.220.0.0/27 --priority 200')
            fprintf('%s\n', '    Add Access Restriction opening (Allow) named build_server for IPv4 address 192.168.0.0/27 with')
            fprintf('%s\n', '    priority 250 to scm site.')
            fprintf('%s\n', '        az functionapp config access-restriction add -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        build_server --action Allow --ip-address 192.168.0.0/27 --priority 250 --scm-site true')
            fprintf('%s\n', '    Add Access Restriction opening (Allow) named app_gateway for Subnet app_gw in vNet core_weu with')
            fprintf('%s\n', '    priority 300 to main site.')
            fprintf('%s\n', '        az functionapp config access-restriction add -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        app_gateway --action Allow --vnet-name core_weu --subnet app_gateway --priority 300')
            fprintf('%s\n', '    Add Access Restriction opening (Allow) named internal_agents for Subnet build_agents in vNet')
            fprintf('%s\n', '    corp01 with priority 500 to scm site; and ignore service endpoint registration on the Subnet.')
            fprintf('%s\n', '        az functionapp config access-restriction add -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        internal_agents --action Allow --vnet-name corp01 --subnet build_agents --priority 500')
            fprintf('%s\n', '        --scm-site true --ignore-missing-endpoint true')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp config access-restriction add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
