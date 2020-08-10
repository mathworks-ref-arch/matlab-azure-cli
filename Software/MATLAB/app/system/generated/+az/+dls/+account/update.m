classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az dls account update : Updates a Data Lake Store account.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls account update ';
        end
        function this = allow_azure_ips(this, varargin)
            % Allow/block Azure originating IPs through the firewall.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--allow-azure-ips', varargin{:}];
        end

        function this = default_group(this, varargin)
            % Name of the default group to give permissions to for freshly created files and folders in the Data Lake Store account.
            this.Options = [this.Options, '--default-group', varargin{:}];
        end

        function this = firewall_state(this, varargin)
            % Enable/disable existing firewall rules.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--firewall-state', varargin{:}];
        end

        function this = key_version(this, varargin)
            % Key version for the user-assigned encryption type.
            this.Options = [this.Options, '--key-version', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Store account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = tier(this, varargin)
            % The desired commitment tier for this account to use.  Allowed values: Commitment_100TB, Commitment_10TB, Commitment_1PB, Commitment_1TB, Commitment_500TB, Commitment_5PB, Consumption.
            this.Options = [this.Options, '--tier', varargin{:}];
        end

        function this = trusted_id_provider_state(this, varargin)
            % Enable/disable the existing trusted ID providers.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--trusted-id-provider-state', varargin{:}];
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

        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dls account update : Updates a Data Lake Store account.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-azure-ips           : Allow/block Azure originating IPs through the firewall.  Allowed')
            fprintf('%s\n', '                                  values: Disabled, Enabled.')
            fprintf('%s\n', '    --default-group             : Name of the default group to give permissions to for freshly')
            fprintf('%s\n', '                                  created files and folders in the Data Lake Store account.')
            fprintf('%s\n', '    --firewall-state            : Enable/disable existing firewall rules.  Allowed values: Disabled,')
            fprintf('%s\n', '                                  Enabled.')
            fprintf('%s\n', '    --key-version               : Key version for the user-assigned encryption type.')
            fprintf('%s\n', '    --resource-group -g         : If not specified, will attempt to discover the resource group for')
            fprintf('%s\n', '                                  the specified Data Lake Store account.')
            fprintf('%s\n', '    --tags                      : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                  clear existing tags.')
            fprintf('%s\n', '    --tier                      : The desired commitment tier for this account to use.  Allowed')
            fprintf('%s\n', '                                  values: Commitment_100TB, Commitment_10TB, Commitment_1PB,')
            fprintf('%s\n', '                                  Commitment_1TB, Commitment_500TB, Commitment_5PB, Consumption.')
            fprintf('%s\n', '    --trusted-id-provider-state : Enable/disable the existing trusted ID providers.  Allowed values:')
            fprintf('%s\n', '                                  Disabled, Enabled.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates a Data Lake Store account. (autogenerated)')
            fprintf('%s\n', '        az dls account update --account mydatalakestoragegen1 --allow-azure-ips Enabled --firewall-')
            fprintf('%s\n', '        state Enabled --resource-group MyResourceGroup --subscription MySubscription --tags')
            fprintf('%s\n', '        key=value')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls account update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
