classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az dla catalog table-partition list : Retrieves the list of table partitions from the Data Lake
            % Analytics catalog.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla catalog table-partition list ';
        end
        function this = database_name(this, varargin)
            % The name of the database containing the partitions.
            this.Options = [this.Options, '--database-name', varargin{:}];
        end

        function this = schema_name(this, varargin)
            % The name of the schema containing the partitions.
            this.Options = [this.Options, '--schema-name', varargin{:}];
        end

        function this = table_name(this, varargin)
            % The name of the table containing the partitions.
            this.Options = [this.Options, '--table-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla catalog table-partition list"
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
            fprintf('%s\n', '    az dla catalog table-partition list : Retrieves the list of table partitions from the Data Lake')
            fprintf('%s\n', '    Analytics catalog.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --database-name [Required] : The name of the database containing the partitions.')
            fprintf('%s\n', '    --schema-name   [Required] : The name of the schema containing the partitions.')
            fprintf('%s\n', '    --table-name    [Required] : The name of the table containing the partitions.')
            fprintf('%s\n', '    --count                    : The Boolean value of true or false to request a count of the')
            fprintf('%s\n', '                                 matching resources included with the resources in the response,')
            fprintf('%s\n', '                                 e.g. Categories?$count=true.')
            fprintf('%s\n', '    --filter                   : OData filter. Optional.')
            fprintf('%s\n', '    --orderby                  : OrderBy clause. One or more comma-separated expressions with an')
            fprintf('%s\n', '                                 optional "asc" (the default) or "desc" depending on the order you''d')
            fprintf('%s\n', '                                 like the values sorted, e.g. Categories?$orderby=CategoryName desc.')
            fprintf('%s\n', '                                 Optional.')
            fprintf('%s\n', '    --select                   : OData Select statement. Limits the properties on each entry to just')
            fprintf('%s\n', '                                 those requested, e.g. Categories?$select=CategoryName,Description.')
            fprintf('%s\n', '                                 Optional.')
            fprintf('%s\n', '    --skip                     : The number of items to skip over before returning elements.')
            fprintf('%s\n', '    --top                      : Maximum number of items to return.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n               : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla catalog table-partition list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
