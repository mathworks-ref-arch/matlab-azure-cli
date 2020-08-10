classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az consumption usage list : List the details of Azure resource consumption, either as an invoice
            % or within a billing period.
            % Command group 'consumption' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az consumption usage list ';
        end
        function this = billing_period_name(this, varargin)
            % Name of the billing period to get the usage details that associate with.
            this.Options = [this.Options, '--billing-period-name', varargin{:}];
        end

        function this = end_date(this, varargin)
            % End date (YYYY-MM-DD in UTC). If specified, also requires --start-date.
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = include_additional_properties(this, varargin)
            % Include additional properties in the usages.
            this.Options = [this.Options, '--include-additional-properties', varargin{:}];
        end

        function this = include_meter_details(this, varargin)
            % Include meter details in the usages.
            this.Options = [this.Options, '--include-meter-details', varargin{:}];
        end

        function this = start_date(this, varargin)
            % Start date (YYYY-MM-DD in UTC). If specified, also requires --end-date.
            this.Options = [this.Options, '--start-date', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of items to return. Value range: 1-1000.
            this.Options = [this.Options, '--top', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az consumption usage list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az consumption usage list : List the details of Azure resource consumption, either as an invoice')
            fprintf('%s\n', '    or within a billing period.')
            fprintf('%s\n', '        Command group ''consumption'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --billing-period-name -p           : Name of the billing period to get the usage details that')
            fprintf('%s\n', '                                         associate with.')
            fprintf('%s\n', '    --end-date -e                      : End date (YYYY-MM-DD in UTC). If specified, also requires')
            fprintf('%s\n', '                                         --start-date.')
            fprintf('%s\n', '    --include-additional-properties -a : Include additional properties in the usages.')
            fprintf('%s\n', '    --include-meter-details -m         : Include meter details in the usages.')
            fprintf('%s\n', '    --start-date -s                    : Start date (YYYY-MM-DD in UTC). If specified, also requires')
            fprintf('%s\n', '                                         --end-date.')
            fprintf('%s\n', '    --top -t                           : Maximum number of items to return. Value range: 1-1000.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az consumption usage list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
