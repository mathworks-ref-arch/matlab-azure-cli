classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az webapp config connection-string set : Update a web app's connection strings.
            this.BaseCmd = 'az webapp config connection-string set ';
        end
        function this = connection_string_type(this, varargin)
            % Connection string type.  Allowed values: ApiHub, Custom, DocDb, EventHub, MySql, NotificationHub, PostgreSQL, RedisCache, SQLAzure, SQLServer, ServiceBus.
            this.Options = [this.Options, '--connection-string-type', varargin{:}];
        end

        function this = settings(this, varargin)
            % Space-separated connection-string in a format of `<name>=<value>`.
            this.Options = [this.Options, '--settings', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = slot_settings(this, varargin)
            % Space-separated slot connection-string in a format of either `<name>=<value>` or `@<json_file>`.
            this.Options = [this.Options, '--slot-settings', varargin{:}];
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`. If `--ids` is provided this should NOT be specified.
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
            fprintf('%s\n', '    az webapp config connection-string set : Update a web app''s connection strings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-string-type -t [Required] : Connection string type.  Allowed values: ApiHub,')
            fprintf('%s\n', '                                             Custom, DocDb, EventHub, MySql, NotificationHub,')
            fprintf('%s\n', '                                             PostgreSQL, RedisCache, SQLAzure, SQLServer,')
            fprintf('%s\n', '                                             ServiceBus.')
            fprintf('%s\n', '    --settings                             : Space-separated connection-string in a format of')
            fprintf('%s\n', '                                             `<name>=<value>`.')
            fprintf('%s\n', '    --slot -s                              : The name of the slot. Default to the productions slot')
            fprintf('%s\n', '                                             if not specified.')
            fprintf('%s\n', '    --slot-settings                        : Space-separated slot connection-string in a format of')
            fprintf('%s\n', '                                             either `<name>=<value>` or `@<json_file>`.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                  : One or more resource IDs (space-delimited). It should')
            fprintf('%s\n', '                                             be a complete resource ID containing all information of')
            fprintf('%s\n', '                                             ''Resource Id'' arguments. You should provide either')
            fprintf('%s\n', '                                             --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                              : Name of the web app. You can configure the default')
            fprintf('%s\n', '                                             using `az configure --defaults web=<name>`. If `--ids`')
            fprintf('%s\n', '                                             is provided this should NOT be specified.')
            fprintf('%s\n', '    --resource-group -g                    : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                             group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                         : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                             default subscription using `az account set -s')
            fprintf('%s\n', '                                             NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                            : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                             table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                             more information and examples.')
            fprintf('%s\n', '    --verbose                              : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                             logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a mysql connection string.')
            fprintf('%s\n', '        az webapp config connection-string set -g MyResourceGroup -n MyUniqueApp -t mysql \')
            fprintf('%s\n', '            --settings mysql1=''Server=myServer;Database=myDB;Uid=myUser;Pwd=myPwd;''')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config connection-string set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
