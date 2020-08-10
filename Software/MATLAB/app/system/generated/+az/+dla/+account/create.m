classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dla account create : Create a Data Lake Analytics account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = default_data_lake_store(this, varargin)
            % The default Data Lake Store account to associate with the created account.
            this.Options = [this.Options, '--default-data-lake-store', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_degree_of_parallelism(this, varargin)
            % The maximum degree of parallelism for this account. Default: 30.
            this.Options = [this.Options, '--max-degree-of-parallelism', varargin{:}];
        end

        function this = max_job_count(this, varargin)
            % The maximum number of concurrent jobs for this account. Default: 3.
            this.Options = [this.Options, '--max-job-count', varargin{:}];
        end

        function this = query_store_retention(this, varargin)
            % The number of days to retain job metadata.  Default: 30.
            this.Options = [this.Options, '--query-store-retention', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = tier(this, varargin)
            % The desired commitment tier for this account to use. Allowed values: Commitment_100000AUHours, Commitment_10000AUHours, Commitment_1000AUHours, Commitment_100AUHours, Commitment_500000AUHours, Commitment_50000AUHours, Commitment_5000AUHours, Commitment_500AUHours, Consumption.
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla account create : Create a Data Lake Analytics account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n              [Required] : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --default-data-lake-store [Required] : The default Data Lake Store account to associate with the')
            fprintf('%s\n', '                                           created account.')
            fprintf('%s\n', '    --location -l                        : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --max-degree-of-parallelism          : The maximum degree of parallelism for this account.')
            fprintf('%s\n', '                                           Default: 30.')
            fprintf('%s\n', '    --max-job-count                      : The maximum number of concurrent jobs for this account.')
            fprintf('%s\n', '                                           Default: 3.')
            fprintf('%s\n', '    --query-store-retention              : The number of days to retain job metadata.  Default: 30.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', '    --tier                               : The desired commitment tier for this account to use.')
            fprintf('%s\n', '                                           Allowed values: Commitment_100000AUHours,')
            fprintf('%s\n', '                                           Commitment_10000AUHours, Commitment_1000AUHours,')
            fprintf('%s\n', '                                           Commitment_100AUHours, Commitment_500000AUHours,')
            fprintf('%s\n', '                                           Commitment_50000AUHours, Commitment_5000AUHours,')
            fprintf('%s\n', '                                           Commitment_500AUHours, Consumption.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
