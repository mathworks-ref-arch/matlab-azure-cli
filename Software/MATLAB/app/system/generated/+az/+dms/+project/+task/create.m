classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dms project task create : Create and start a migration Task.
            this.BaseCmd = 'az dms project task create ';
        end
        function this = database_options_json(this, varargin)
            % Database and table information. This can be either a JSON- formatted string or the location to a file containing the JSON object. See example below for the format.
            this.Options = [this.Options, '--database-options-json', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = project_name(this, varargin)
            % The name of the Project.
            this.Options = [this.Options, '--project-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the Service.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = source_connection_json(this, varargin)
            % The connection information to the source server. This can be either a JSON-formatted string or the location to a file containing the JSON object. See example below for the format.
            this.Options = [this.Options, '--source-connection-json', varargin{:}];
        end

        function this = target_connection_json(this, varargin)
            % The connection information to the target server. This can be either a JSON-formatted string or the location to a file containing the JSON object. See example below for the format.
            this.Options = [this.Options, '--target-connection-json', varargin{:}];
        end

        function this = enable_data_integrity_validation(this, varargin)
            % Whether to perform a checksum based data integrity validation between source and target for the selected database and tables.
            this.Options = [this.Options, '--enable-data-integrity-validation', varargin{:}];
        end

        function this = enable_query_analysis_validation(this, varargin)
            % Whether to perform a quick and intelligent query analysis by retrieving queries from the source database and executing them in the target. The result will have execution statistics for executions in source and target databases for the extracted queries.
            this.Options = [this.Options, '--enable-query-analysis-validation', varargin{:}];
        end

        function this = enable_schema_validation(this, varargin)
            % Whether to compare the schema information between source and target.
            this.Options = [this.Options, '--enable-schema-validation', varargin{:}];
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
            fprintf('%s\n', '    az dms project task create : Create and start a migration Task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --database-options-json  [Required] : Database and table information. This can be either a JSON-')
            fprintf('%s\n', '                                          formatted string or the location to a file containing the')
            fprintf('%s\n', '                                          JSON object. See example below for the format.')
            fprintf('%s\n', '    --name -n                [Required] : The name of the Task.')
            fprintf('%s\n', '    --project-name           [Required] : The name of the Project.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name           [Required] : The name of the Service.')
            fprintf('%s\n', '    --source-connection-json [Required] : The connection information to the source server. This can')
            fprintf('%s\n', '                                          be either a JSON-formatted string or the location to a')
            fprintf('%s\n', '                                          file containing the JSON object. See example below for the')
            fprintf('%s\n', '                                          format.')
            fprintf('%s\n', '    --target-connection-json [Required] : The connection information to the target server. This can')
            fprintf('%s\n', '                                          be either a JSON-formatted string or the location to a')
            fprintf('%s\n', '                                          file containing the JSON object. See example below for the')
            fprintf('%s\n', '                                          format.')
            fprintf('%s\n', '    --enable-data-integrity-validation  : Whether to perform a checksum based data integrity')
            fprintf('%s\n', '                                          validation between source and target for the selected')
            fprintf('%s\n', '                                          database and tables.')
            fprintf('%s\n', '    --enable-query-analysis-validation  : Whether to perform a quick and intelligent query analysis')
            fprintf('%s\n', '                                          by retrieving queries from the source database and')
            fprintf('%s\n', '                                          executing them in the target. The result will have')
            fprintf('%s\n', '                                          execution statistics for executions in source and target')
            fprintf('%s\n', '                                          databases for the extracted queries.')
            fprintf('%s\n', '    --enable-schema-validation          : Whether to compare the schema information between source')
            fprintf('%s\n', '                                          and target.')
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
            fprintf('%s\n', '    Create and start a Task which performs no validation checks.')
            fprintf('%s\n', '        az dms project task create --database-options-json "C:\CLI Files\databaseOptions.json" -n')
            fprintf('%s\n', '        mytask --project-name myproject -g myresourcegroup --service-name mydms --source-connection-')
            fprintf('%s\n', '        json "{''dataSource'': ''myserver'', ''authentication'': ''SqlAuthentication'', ''encryptConnection'':')
            fprintf('%s\n', '        ''true'', ''trustServerCertificate'': ''true''}" --target-connection-json "C:\CLI')
            fprintf('%s\n', '        Files\targetConnection.json"')
            fprintf('%s\n', '    Create and start a Task which performs all validation checks.')
            fprintf('%s\n', '        az dms project task create --database-options-json "C:\CLI Files\databaseOptions.json" -n')
            fprintf('%s\n', '        mytask --project-name myproject -g myresourcegroup --service-name mydms --source-connection-')
            fprintf('%s\n', '        json "C:\CLI Files\sourceConnection.json" --target-connection-json "C:\CLI')
            fprintf('%s\n', '        Files\targetConnection.json" --enable-data-integrity-validation --enable-query-analysis-')
            fprintf('%s\n', '        validation --enable-schema-validation')
            fprintf('%s\n', '    The format of the database options JSON object.')
            fprintf('%s\n', '        [')
            fprintf('%s\n', '            {')
            fprintf('%s\n', '                "name": "source database",')
            fprintf('%s\n', '                "target_database_name": "target database",')
            fprintf('%s\n', '                "make_source_db_read_only": false|true,')
            fprintf('%s\n', '                "table_map": {')
            fprintf('%s\n', '                    "schema.SourceTableName1": "schema.TargetTableName1",')
            fprintf('%s\n', '                    "schema.SourceTableName2": "schema.TargetTableName2",')
            fprintf('%s\n', '                    ...n')
            fprintf('%s\n', '                }')
            fprintf('%s\n', '            },')
            fprintf('%s\n', '            ...n')
            fprintf('%s\n', '        ]')
            fprintf('%s\n', '    The format of the connection JSON object.')
            fprintf('%s\n', '        {')
            fprintf('%s\n', '            "userName": "user name",    // if this is missing or null, you will be prompted')
            fprintf('%s\n', '            "password": null,           // if this is missing or null (highly recommended) you will')
            fprintf('%s\n', '        be prompted')
            fprintf('%s\n', '            "dataSource": "server name[,port]",')
            fprintf('%s\n', '            "authentication": "SqlAuthentication|WindowsAuthentication",')
            fprintf('%s\n', '            "encryptConnection": true,      // highly recommended to leave as true')
            fprintf('%s\n', '            "trustServerCertificate": true  // highly recommended to leave as true')
            fprintf('%s\n', '        }')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms project task create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
