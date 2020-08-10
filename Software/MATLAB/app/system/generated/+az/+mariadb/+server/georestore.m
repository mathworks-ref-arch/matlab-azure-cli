classdef georestore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = georestore()
            % az mariadb server georestore : Geo-restore a server from backup.
            this.BaseCmd = 'az mariadb server georestore ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = source_server(this, varargin)
            % The name or ID of the source server to restore from.
            this.Options = [this.Options, '--source-server', varargin{:}];
        end

        function this = backup_retention(this, varargin)
            % The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days.
            this.Options = [this.Options, '--backup-retention', varargin{:}];
        end

        function this = geo_redundant_backup(this, varargin)
            % Enable or disable geo-redundant backups. Default value is Disabled. Not supported in Basic pricing tier.
            this.Options = [this.Options, '--geo-redundant-backup', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The name of the sku. Defaults to sku of the source server. Follows the convention {pricing tier}_{compute generation}_{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16.
            this.Options = [this.Options, '--sku-name', varargin{:}];
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
            fprintf('%s\n', '    az mariadb server georestore : Geo-restore a server from backup.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l      [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                    configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                    location=<location>`.')
            fprintf('%s\n', '    --source-server -s [Required] : The name or ID of the source server to restore from.')
            fprintf('%s\n', '    --backup-retention            : The number of days a backup is retained. Range of 7 to 35 days.')
            fprintf('%s\n', '                                    Default is 7 days.')
            fprintf('%s\n', '    --geo-redundant-backup        : Enable or disable geo-redundant backups. Default value is')
            fprintf('%s\n', '                                    Disabled. Not supported in Basic pricing tier.')
            fprintf('%s\n', '    --no-wait                     : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku-name                    : The name of the sku. Defaults to sku of the source server.')
            fprintf('%s\n', '                                    Follows the convention {pricing tier}_{compute')
            fprintf('%s\n', '                                    generation}_{vCores} in shorthand. Examples: B_Gen5_1,')
            fprintf('%s\n', '                                    GP_Gen5_4, MO_Gen5_16.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                     : Name of the server. The name can contain only lowercase letters,')
            fprintf('%s\n', '                                    numbers, and the hyphen (-) character. Minimum 3 characters and')
            fprintf('%s\n', '                                    maximum 63 characters.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Geo-restore ''testsvr'' into a new server ''testsvrnew'' located in West US 2.')
            fprintf('%s\n', '        az mariadb server georestore -g testgroup -n testsvrnew --source-server testsvr -l westus2')
            fprintf('%s\n', '    Geo-restore ''testsvr'' into a new server ''testsvrnew'' located in West US 2 with sku GP_Gen5_2.')
            fprintf('%s\n', '        az mariadb server georestore -g testgroup -n testsvrnew --source-server testsvr -l westus2')
            fprintf('%s\n', '        --sku-name GP_Gen5_2')
            fprintf('%s\n', '    Geo-restore ''testsvr2'' into a new server ''testsvrnew'', where ''testsvrnew'' is in a different')
            fprintf('%s\n', '    resource group from ''testsvr2''.')
            fprintf('%s\n', '        az mariadb server georestore -g testgroup -n testsvrnew \')
            fprintf('%s\n', '            -s "/subscriptions/${SubID}/resourceGroups/${ResourceGroup}/providers/Microsoft.DBforMar')
            fprintf('%s\n', '        iaDB/servers/testsvr2" \')
            fprintf('%s\n', '            -l westus2')
            fprintf('%s\n', 'For more specific examples, use: az find "az mariadb server georestore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class georestore 
