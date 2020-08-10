classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az webapp config access-restriction remove : Removes an Access Restriction from the webapp.
            % Command group 'webapp config access-restriction' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az webapp config access-restriction remove ';
        end
        function this = action(this, varargin)
            % Allow or deny access.  Allowed values: Allow, Deny.  Default: Allow.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % IP address or CIDR range.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = rule_name(this, varargin)
            % Name of the access restriction to remove.
            this.Options = [this.Options, '--rule-name', varargin{:}];
        end

        function this = scm_site(this, varargin)
            % True if access restriction should be removed from scm site.  Allowed values: false, true.
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
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
            fprintf('%s\n', '    az webapp config access-restriction remove : Removes an Access Restriction from the webapp.')
            fprintf('%s\n', '        Command group ''webapp config access-restriction'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --action            : Allow or deny access.  Allowed values: Allow, Deny.  Default: Allow.')
            fprintf('%s\n', '    --ip-address        : IP address or CIDR range.')
            fprintf('%s\n', '    --rule-name -r      : Name of the access restriction to remove.')
            fprintf('%s\n', '    --scm-site          : True if access restriction should be removed from scm site.  Allowed')
            fprintf('%s\n', '                          values: false, true.')
            fprintf('%s\n', '    --slot -s           : The name of the slot. Default to the productions slot if not specified.')
            fprintf('%s\n', '    --subnet            : Subnet name (requires vNet name) or subnet resource id.')
            fprintf('%s\n', '    --vnet-name         : VNet name.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the web app. You can configure the default using `az configure')
            fprintf('%s\n', '                          --defaults web=<name>`.')
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
            fprintf('%s\n', '    Remove Access Restriction named developers from the main site.')
            fprintf('%s\n', '        az webapp config access-restriction remove -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        developers')
            fprintf('%s\n', '    Remove Access Restriction named internal_agents from the scm site.')
            fprintf('%s\n', '        az webapp config access-restriction remove -g ResourceGroup -n AppName --rule-name')
            fprintf('%s\n', '        internal_agents --scm-site true')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config access-restriction remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
