classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az dla job pipeline show : Retrieve a job pipeline in a Data Lake Analytics account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla job pipeline show ';
        end
        function this = pipeline_identity(this, varargin)
            % Pipeline ID.
            this.Options = [this.Options, '--pipeline-identity', varargin{:}];
        end

        function this = end_date_time(this, varargin)
            % The end date for when to get the pipeline and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart.
            this.Options = [this.Options, '--end-date-time', varargin{:}];
        end

        function this = start_date_time(this, varargin)
            % The start date for when to get the pipeline and aggregate its data. The startDateTime and endDateTime can be no more than 30 days apart.
            this.Options = [this.Options, '--start-date-time', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla job pipeline show"
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
            fprintf('%s\n', '    az dla job pipeline show : Retrieve a job pipeline in a Data Lake Analytics account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --pipeline-identity [Required] : Pipeline ID.')
            fprintf('%s\n', '    --end-date-time                : The end date for when to get the pipeline and aggregate its')
            fprintf('%s\n', '                                     data. The startDateTime and endDateTime can be no more than 30')
            fprintf('%s\n', '                                     days apart.')
            fprintf('%s\n', '    --start-date-time              : The start date for when to get the pipeline and aggregate its')
            fprintf('%s\n', '                                     data. The startDateTime and endDateTime can be no more than 30')
            fprintf('%s\n', '                                     days apart.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                   : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla job pipeline show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
