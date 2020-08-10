classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az mariadb server restore : Restore a server from backup.
            this.BaseCmd = 'az mariadb server restore ';
        end
        function this = restore_point_in_time(this, varargin)
            % The point in time to restore from (ISO8601 format), e.g., 2017-04-26T02:10:00+08:00.
            this.Options = [this.Options, '--restore-point-in-time', varargin{:}];
        end

        function this = source_server(this, varargin)
            % The name or resource ID of the source server to restore from.
            this.Options = [this.Options, '--source-server', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az mariadb server restore : Restore a server from backup.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --restore-point-in-time [Required] : The point in time to restore from (ISO8601 format), e.g.,')
            fprintf('%s\n', '                                         2017-04-26T02:10:00+08:00.')
            fprintf('%s\n', '    --source-server -s      [Required] : The name or resource ID of the source server to restore')
            fprintf('%s\n', '                                         from.')
            fprintf('%s\n', '    --no-wait                          : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                              : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                         complete resource ID containing all information of')
            fprintf('%s\n', '                                         ''Resource Id'' arguments. You should provide either --ids or')
            fprintf('%s\n', '                                         other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                          : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                         letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                         characters and maximum 63 characters.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Restore ''testsvr'' to a specific point-in-time as a new server ''testsvrnew''.')
            fprintf('%s\n', '        az mariadb server restore -g testgroup -n testsvrnew --source-server testsvr --restore-')
            fprintf('%s\n', '        point-in-time "2017-06-15T13:10:00Z"')
            fprintf('%s\n', '    Restore ''testsvr2'' to ''testsvrnew'', where ''testsvrnew'' is in a different resource group from')
            fprintf('%s\n', '    ''testsvr2''.')
            fprintf('%s\n', '        az mariadb server restore -g testgroup -n testsvrnew \')
            fprintf('%s\n', '            -s "/subscriptions/${SubID}/resourceGroups/${ResourceGroup}/providers/Microsoft.DBforMar')
            fprintf('%s\n', '        iaDB/servers/testsvr2" \')
            fprintf('%s\n', '            --restore-point-in-time "2017-06-15T13:10:00Z"')
            fprintf('%s\n', 'For more specific examples, use: az find "az mariadb server restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
