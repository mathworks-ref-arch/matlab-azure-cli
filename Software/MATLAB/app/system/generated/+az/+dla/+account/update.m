classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az dla account update : Update a Data Lake Analytics account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account update ';
        end
        function this = allow_azure_ips(this, varargin)
            % Allow or block IPs originating from Azure through the firewall. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--allow-azure-ips', varargin{:}];
        end

        function this = firewall_state(this, varargin)
            % Enable or disable existing firewall rules.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--firewall-state', varargin{:}];
        end

        function this = max_degree_of_parallelism(this, varargin)
            % The maximum degree of parallelism for this account.
            this.Options = [this.Options, '--max-degree-of-parallelism', varargin{:}];
        end

        function this = max_job_count(this, varargin)
            % The maximum number of concurrent jobs for this account.
            this.Options = [this.Options, '--max-job-count', varargin{:}];
        end

        function this = query_store_retention(this, varargin)
            % The number of days to retain job metadata.
            this.Options = [this.Options, '--query-store-retention', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = tier(this, varargin)
            % The desired commitment tier for this account to use.  Allowed values: Commitment_100000AUHours, Commitment_10000AUHours, Commitment_1000AUHours, Commitment_100AUHours, Commitment_500000AUHours, Commitment_50000AUHours, Commitment_5000AUHours, Commitment_500AUHours, Consumption.
            this.Options = [this.Options, '--tier', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
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
            fprintf('%s\n', '    az dla account update : Update a Data Lake Analytics account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-azure-ips           : Allow or block IPs originating from Azure through the firewall.')
            fprintf('%s\n', '                                  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --firewall-state            : Enable or disable existing firewall rules.  Allowed values:')
            fprintf('%s\n', '                                  Disabled, Enabled.')
            fprintf('%s\n', '    --max-degree-of-parallelism : The maximum degree of parallelism for this account.')
            fprintf('%s\n', '    --max-job-count             : The maximum number of concurrent jobs for this account.')
            fprintf('%s\n', '    --query-store-retention     : The number of days to retain job metadata.')
            fprintf('%s\n', '    --resource-group -g         : If not specified, will attempt to discover the resource group for')
            fprintf('%s\n', '                                  the specified Data Lake Analytics account.')
            fprintf('%s\n', '    --tags                      : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                  clear existing tags.')
            fprintf('%s\n', '    --tier                      : The desired commitment tier for this account to use.  Allowed')
            fprintf('%s\n', '                                  values: Commitment_100000AUHours, Commitment_10000AUHours,')
            fprintf('%s\n', '                                  Commitment_1000AUHours, Commitment_100AUHours,')
            fprintf('%s\n', '                                  Commitment_500000AUHours, Commitment_50000AUHours,')
            fprintf('%s\n', '                                  Commitment_5000AUHours, Commitment_500AUHours, Consumption.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                : Name of the Data Lake Analytics account.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
