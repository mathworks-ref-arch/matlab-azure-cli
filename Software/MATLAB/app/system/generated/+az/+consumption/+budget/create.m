classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az consumption budget create : Create a budget for an Azure subscription.
            % Command group 'consumption' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az consumption budget create ';
        end
        function this = amount(this, varargin)
            % Amount of a budget.
            this.Options = [this.Options, '--amount', varargin{:}];
        end

        function this = budget_name(this, varargin)
            % Name of a budget.
            this.Options = [this.Options, '--budget-name', varargin{:}];
        end

        function this = category(this, varargin)
            % Category of the budget can be cost or usage.  Allowed values: cost, usage.
            this.Options = [this.Options, '--category', varargin{:}];
        end

        function this = end_date(this, varargin)
            % End date (YYYY-MM-DD in UTC) of time period of a budget.
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = start_date(this, varargin)
            % Start date (YYYY-MM-DD in UTC) of time period of a budget.
            this.Options = [this.Options, '--start-date', varargin{:}];
        end

        function this = time_grain(this, varargin)
            % Time grain of the budget can be monthly, quarterly, or annually. Allowed values: annually, monthly, quarterly.
            this.Options = [this.Options, '--time-grain', varargin{:}];
        end

        function this = meter_filter(this, varargin)
            % Space-separated list of meters to filter on. Required if category is usage.
            this.Options = [this.Options, '--meter-filter', varargin{:}];
        end

        function this = resource_filter(this, varargin)
            % Space-separated list of resource instances to filter on.
            this.Options = [this.Options, '--resource-filter', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_group_filter(this, varargin)
            % Space-separated list of resource groups to filter on.
            this.Options = [this.Options, '--resource-group-filter', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az consumption budget create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az consumption budget create : Create a budget for an Azure subscription.')
            fprintf('%s\n', '        Command group ''consumption'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --amount        [Required] : Amount of a budget.')
            fprintf('%s\n', '    --budget-name   [Required] : Name of a budget.')
            fprintf('%s\n', '    --category      [Required] : Category of the budget can be cost or usage.  Allowed values: cost,')
            fprintf('%s\n', '                                 usage.')
            fprintf('%s\n', '    --end-date -e   [Required] : End date (YYYY-MM-DD in UTC) of time period of a budget.')
            fprintf('%s\n', '    --start-date -s [Required] : Start date (YYYY-MM-DD in UTC) of time period of a budget.')
            fprintf('%s\n', '    --time-grain    [Required] : Time grain of the budget can be monthly, quarterly, or annually.')
            fprintf('%s\n', '                                 Allowed values: annually, monthly, quarterly.')
            fprintf('%s\n', '    --meter-filter             : Space-separated list of meters to filter on. Required if category')
            fprintf('%s\n', '                                 is usage.')
            fprintf('%s\n', '    --resource-filter          : Space-separated list of resource instances to filter on.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-group-filter    : Space-separated list of resource groups to filter on.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az consumption budget create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
