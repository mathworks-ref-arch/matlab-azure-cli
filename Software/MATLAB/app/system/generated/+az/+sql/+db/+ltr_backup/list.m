classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az sql db ltr-backup list : List the long term retention backups for a location, server or
            % database.
            % Command group 'sql db ltr-backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql db ltr-backup list ';
        end
        function this = location(this, varargin)
            % The location of the desired backups.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = database(this, varargin)
            % Name of the Azure SQL Database. If specified (along with server name), retrieves all requested backups under this database.
            this.Options = [this.Options, '--database', varargin{:}];
        end

        function this = database_state(this, varargin)
            % 'All', 'Live', or 'Deleted'. Will fetch backups only from databases of specified state. If no state provied, defaults to 'All'.
            this.Options = [this.Options, '--database-state', varargin{:}];
        end

        function this = latest(this, varargin)
            % If true, will only return the latest backup for each database.
            this.Options = [this.Options, '--latest', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL Server. If specified, retrieves all requested backups under this server.
            this.Options = [this.Options, '--server', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db ltr-backup list : List the long term retention backups for a location, server or')
            fprintf('%s\n', '    database.')
            fprintf('%s\n', '        Command group ''sql db ltr-backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l            [Required] : The location of the desired backups.')
            fprintf('%s\n', '    --database -d                       : Name of the Azure SQL Database. If specified (along with')
            fprintf('%s\n', '                                          server name), retrieves all requested backups under this')
            fprintf('%s\n', '                                          database.')
            fprintf('%s\n', '    --database-state --state            : ''All'', ''Live'', or ''Deleted''. Will fetch backups only from')
            fprintf('%s\n', '                                          databases of specified state. If no state provied,')
            fprintf('%s\n', '                                          defaults to ''All''.')
            fprintf('%s\n', '    --latest --only-latest-per-database : If true, will only return the latest backup for each')
            fprintf('%s\n', '                                          database.')
            fprintf('%s\n', '    --resource-group -g                 : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s                         : Name of the Azure SQL Server. If specified, retrieves all')
            fprintf('%s\n', '                                          requested backups under this server.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List long term retention backups for a database.')
            fprintf('%s\n', '        az sql db ltr-backup list -l southeastasia -s myserver -d mydb')
            fprintf('%s\n', '    List long term retention backups for a server (list only the latest LTR backups, which belong to')
            fprintf('%s\n', '    live databases).')
            fprintf('%s\n', '        az sql db ltr-backup list -l southeastasia -s myserver --database-state Live --only-latest-')
            fprintf('%s\n', '        per-database True')
            fprintf('%s\n', '    List long term retention backups for a server (with resource group argument).')
            fprintf('%s\n', '        az sql db ltr-backup list -l southeastasia -g mygroup -s myserver')
            fprintf('%s\n', '    List long term retention backups for a location (list only the latest LTR backups, which belong')
            fprintf('%s\n', '    to live databases).')
            fprintf('%s\n', '        az sql db ltr-backup list -l southeastasia --database-state Live --only-latest-per-database')
            fprintf('%s\n', '        True')
            fprintf('%s\n', '    List long term retention backups for a location (with resource group argument).')
            fprintf('%s\n', '        az sql db ltr-backup list -l southeastasia -g mygroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db ltr-backup list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
