classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az billing period list : Lists the available billing periods for a subscription in reverse
            % chronological order.
            % This is only supported for Azure Web-Direct subscriptions. Other subscription types which
            % were not purchased directly through the Azure web portal are not supported through this
            % preview API.
            this.BaseCmd = 'az billing period list ';
        end
        function this = filter(this, varargin)
            % May be used to filter billing periods by billingPeriodEndDate. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently support 'ne', 'or', or 'not'.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = skiptoken(this, varargin)
            % Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls.
            this.Options = [this.Options, '--skiptoken', varargin{:}];
        end

        function this = top(this, varargin)
            % May be used to limit the number of results to the most recent N billing periods.
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az billing period list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az billing period list : Lists the available billing periods for a subscription in reverse')
            fprintf('%s\n', '    chronological order.')
            fprintf('%s\n', '        This is only supported for Azure Web-Direct subscriptions. Other subscription types which')
            fprintf('%s\n', '        were not purchased directly through the Azure web portal are not supported through this')
            fprintf('%s\n', '        preview API.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --filter           : May be used to filter billing periods by billingPeriodEndDate. The filter')
            fprintf('%s\n', '                         supports ''eq'', ''lt'', ''gt'', ''le'', ''ge'', and ''and''. It does not currently')
            fprintf('%s\n', '                         support ''ne'', ''or'', or ''not''.')
            fprintf('%s\n', '    --skiptoken        : Skiptoken is only used if a previous operation returned a partial result.')
            fprintf('%s\n', '                         If a previous response contains a nextLink element, the value of the')
            fprintf('%s\n', '                         nextLink element will include a skiptoken parameter that specifies a')
            fprintf('%s\n', '                         starting point to use for subsequent calls.')
            fprintf('%s\n', '    --top              : May be used to limit the number of results to the most recent N billing')
            fprintf('%s\n', '                         periods.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az billing period list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
