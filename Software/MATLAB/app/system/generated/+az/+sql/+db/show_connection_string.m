classdef show_connection_string < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_connection_string()
            % az sql db show-connection-string : Generates a connection string to a database.
            this.BaseCmd = 'az sql db show-connection-string ';
        end
        function this = client(this, varargin)
            % Type of client connection provider.  Allowed values: ado.net, jdbc, odbc, php, php_pdo, sqlcmd. Authentication Arguments
            this.Options = [this.Options, '--client', varargin{:}];
        end

        function this = auth_type(this, varargin)
            % Type of authentication.  Allowed values: ADIntegrated, ADPassword, SqlPassword.  Default: SqlPassword.
            this.Options = [this.Options, '--auth-type', varargin{:}];
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
            % Name of the Azure SQL Database.  Default: <databasename>.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.  Default: <servername>.
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
            fprintf('%s\n', '    az sql db show-connection-string : Generates a connection string to a database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --client -c [Required] : Type of client connection provider.  Allowed values: ado.net, jdbc,')
            fprintf('%s\n', '                             odbc, php, php_pdo, sqlcmd.')
            fprintf('%s\n', 'Authentication Arguments')
            fprintf('%s\n', '    --auth-type -a         : Type of authentication.  Allowed values: ADIntegrated, ADPassword,')
            fprintf('%s\n', '                             SqlPassword.  Default: SqlPassword.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : Name of the Azure SQL Database.  Default: <databasename>.')
            fprintf('%s\n', '    --server -s            : Name of the Azure SQL server. You can configure the default using `az')
            fprintf('%s\n', '                             configure --defaults sql-server=<name>`.  Default: <servername>.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Generate connection string for ado.net')
            fprintf('%s\n', '        az sql db show-connection-string -s myserver -n mydb -c ado.net')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db show-connection-string"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_connection_string 
