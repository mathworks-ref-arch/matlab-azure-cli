classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az sql db classification recommendation list : List the recommended sensitivity classifications
            % of a given database.
            this.BaseCmd = 'az sql db classification recommendation list ';
        end
        function this = filter(this, varargin)
            % An OData filter expression that filters elements in the collection.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = include_disabled_recommendations(this, varargin)
            % Specifies whether to include disabled recommendations or not.
            this.Options = [this.Options, '--include-disabled-recommendations', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Azure SQL Database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db classification recommendation list : List the recommended sensitivity classifications')
            fprintf('%s\n', '    of a given database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --filter                           : An OData filter expression that filters elements in the')
            fprintf('%s\n', '                                         collection.')
            fprintf('%s\n', '    --include-disabled-recommendations : Specifies whether to include disabled recommendations or')
            fprintf('%s\n', '                                         not.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                              : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                         complete resource ID containing all information of')
            fprintf('%s\n', '                                         ''Resource Id'' arguments. You should provide either --ids or')
            fprintf('%s\n', '                                         other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                          : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s                        : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                         using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List the recommended sensitivity classifications of a given database.')
            fprintf('%s\n', '        az sql db classification recommendation list -g mygroup -s myserver -n mydb')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db classification recommendation list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
