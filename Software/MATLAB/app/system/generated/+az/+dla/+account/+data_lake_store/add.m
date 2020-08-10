classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az dla account data-lake-store add : Updates the specified Data Lake Analytics account to
            % include the additional Data Lake Store account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account data-lake-store add ';
        end
        function this = data_lake_store_account_name(this, varargin)
            % The name of the Data Lake Store account to add.
            this.Options = [this.Options, '--data-lake-store-account-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = suffix(this, varargin)
            % The optional suffix for the Data Lake Store account.
            this.Options = [this.Options, '--suffix', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account data-lake-store add"
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
            fprintf('%s\n', '    az dla account data-lake-store add : Updates the specified Data Lake Analytics account to')
            fprintf('%s\n', '    include the additional Data Lake Store account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --data-lake-store-account-name [Required] : The name of the Data Lake Store account to add.')
            fprintf('%s\n', '    --resource-group -g                       : If not specified, will attempt to discover the')
            fprintf('%s\n', '                                                resource group for the specified Data Lake Analytics')
            fprintf('%s\n', '                                                account.')
            fprintf('%s\n', '    --suffix                                  : The optional suffix for the Data Lake Store account.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                              : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                                     : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                should be a complete resource ID containing all')
            fprintf('%s\n', '                                                information of ''Resource Id'' arguments. You should')
            fprintf('%s\n', '                                                provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                                arguments.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account data-lake-store add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
