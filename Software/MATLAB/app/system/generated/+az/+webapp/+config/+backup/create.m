classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az webapp config backup create : Create a backup of a web app.
            this.BaseCmd = 'az webapp config backup create ';
        end
        function this = container_url(this, varargin)
            % URL with SAS token to the blob storage container.
            this.Options = [this.Options, '--container-url', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = webapp_name(this, varargin)
            % The name of the web app.
            this.Options = [this.Options, '--webapp-name', varargin{:}];
        end

        function this = backup_name(this, varargin)
            % Name of the backup. If unspecified, the backup will be named with the web app name and a timestamp.
            this.Options = [this.Options, '--backup-name', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified. Database Arguments
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = db_connection_string(this, varargin)
            % Connection string for the database in the backup.
            this.Options = [this.Options, '--db-connection-string', varargin{:}];
        end

        function this = db_name(this, varargin)
            % Name of the database in the backup.
            this.Options = [this.Options, '--db-name', varargin{:}];
        end

        function this = db_type(this, varargin)
            % Type of database in the backup.  Allowed values: LocalMySql, MySql, PostgreSql, SqlAzure.
            this.Options = [this.Options, '--db-type', varargin{:}];
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
            fprintf('%s\n', '    az webapp config backup create : Create a backup of a web app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-url     [Required] : URL with SAS token to the blob storage container.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --webapp-name       [Required] : The name of the web app.')
            fprintf('%s\n', '    --backup-name                  : Name of the backup. If unspecified, the backup will be named')
            fprintf('%s\n', '                                     with the web app name and a timestamp.')
            fprintf('%s\n', '    --slot -s                      : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                     specified.')
            fprintf('%s\n', 'Database Arguments')
            fprintf('%s\n', '    --db-connection-string         : Connection string for the database in the backup.')
            fprintf('%s\n', '    --db-name                      : Name of the database in the backup.')
            fprintf('%s\n', '    --db-type                      : Type of database in the backup.  Allowed values: LocalMySql,')
            fprintf('%s\n', '                                     MySql, PostgreSql, SqlAzure.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a backup of a web app. (autogenerated)')
            fprintf('%s\n', '        az webapp config backup create --container-url {container-url} --resource-group')
            fprintf('%s\n', '        MyResourceGroup --webapp-name MyWebapp')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config backup create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
