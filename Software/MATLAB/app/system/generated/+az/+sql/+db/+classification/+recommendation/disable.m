classdef disable < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = disable()
            % az sql db classification recommendation disable : Disable sensitivity recommendations for a
            % given column (recommendations are enabled by default on all columns).
            this.BaseCmd = 'az sql db classification recommendation disable ';
        end
        function this = column(this, varargin)
            % The name of the column.
            this.Options = [this.Options, '--column', varargin{:}];
        end

        function this = schema(this, varargin)
            % The name of the schema.
            this.Options = [this.Options, '--schema', varargin{:}];
        end

        function this = table(this, varargin)
            % The name of the table.
            this.Options = [this.Options, '--table', varargin{:}];
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
            fprintf('%s\n', '    az sql db classification recommendation disable : Disable sensitivity recommendations for a')
            fprintf('%s\n', '    given column (recommendations are enabled by default on all columns).')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --column [Required] : The name of the column.')
            fprintf('%s\n', '    --schema [Required] : The name of the schema.')
            fprintf('%s\n', '    --table  [Required] : The name of the table.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         : Name of the Azure SQL server. You can configure the default using `az')
            fprintf('%s\n', '                          configure --defaults sql-server=<name>`.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Disable sensitivity recommendations for a given column.')
            fprintf('%s\n', '        az sql db classification recommendation disable -g mygroup -s myserver -n mydb --schema dbo')
            fprintf('%s\n', '        --table mytable --column mycolumn')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db classification recommendation disable"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class disable 
