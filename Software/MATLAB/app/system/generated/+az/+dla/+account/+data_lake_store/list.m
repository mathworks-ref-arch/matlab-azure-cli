classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az dla account data-lake-store list : Gets the first page of Data Lake Store accounts linked to
            % the specified Data Lake Analytics account.
            % The response includes a link to the next page, if any.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account data-lake-store list ';
        end
        function this = count(this, varargin)
            % The Boolean value of true or false to request a count of the matching resources included with the resources in the response, e.g. Categories?$count=true.
            this.Options = [this.Options, '--count', varargin{:}];
        end

        function this = filter(this, varargin)
            % OData filter. Optional.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = orderby(this, varargin)
            % OrderBy clause. One or more comma-separated expressions with an optional "asc" (the default) or "desc" depending on the order you'd like the values sorted, e.g. Categories?$orderby=CategoryName desc. Optional.
            this.Options = [this.Options, '--orderby', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = select(this, varargin)
            % OData Select statement. Limits the properties on each entry to just those requested, e.g. Categories?$select=CategoryName,Description. Optional.
            this.Options = [this.Options, '--select', varargin{:}];
        end

        function this = skip(this, varargin)
            % The number of items to skip over before returning elements.
            this.Options = [this.Options, '--skip', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of items to return.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account data-lake-store list"
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
            fprintf('%s\n', '    az dla account data-lake-store list : Gets the first page of Data Lake Store accounts linked to')
            fprintf('%s\n', '    the specified Data Lake Analytics account.')
            fprintf('%s\n', '        The response includes a link to the next page, if any.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --count             : The Boolean value of true or false to request a count of the matching')
            fprintf('%s\n', '                          resources included with the resources in the response, e.g.')
            fprintf('%s\n', '                          Categories?$count=true.')
            fprintf('%s\n', '    --filter            : OData filter. Optional.')
            fprintf('%s\n', '    --orderby           : OrderBy clause. One or more comma-separated expressions with an optional')
            fprintf('%s\n', '                          "asc" (the default) or "desc" depending on the order you''d like the values')
            fprintf('%s\n', '                          sorted, e.g. Categories?$orderby=CategoryName desc. Optional.')
            fprintf('%s\n', '    --resource-group -g : If not specified, will attempt to discover the resource group for the')
            fprintf('%s\n', '                          specified Data Lake Analytics account.')
            fprintf('%s\n', '    --select            : OData Select statement. Limits the properties on each entry to just those')
            fprintf('%s\n', '                          requested, e.g. Categories?$select=CategoryName,Description. Optional.')
            fprintf('%s\n', '    --skip              : The number of items to skip over before returning elements.')
            fprintf('%s\n', '    --top               : Maximum number of items to return.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n        : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account data-lake-store list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
