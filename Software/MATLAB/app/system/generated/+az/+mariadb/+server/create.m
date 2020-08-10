classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az mariadb server create : Create a server.
            this.BaseCmd = 'az mariadb server create ';
        end
        function this = name(this, varargin)
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The name of the sku. Follows the convention {pricing tier}_{compute generation}_{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16.
            this.Options = [this.Options, '--sku-name', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = auto_grow(this, varargin)
            % Enable or disable autogrow of the storage. Default value is Enabled.  Allowed values: Disabled, Enabled.  Default: Enabled.
            this.Options = [this.Options, '--auto-grow', varargin{:}];
        end

        function this = backup_retention(this, varargin)
            % The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days.
            this.Options = [this.Options, '--backup-retention', varargin{:}];
        end

        function this = geo_redundant_backup(this, varargin)
            % Enable or disable geo-redundant backups. Default value is Disabled. Not supported in Basic pricing tier.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--geo-redundant-backup', varargin{:}];
        end

        function this = infrastructure_encryption(this, varargin)
            % Add an optional second layer of encryption for data using new encryption algorithm. Default value is Disabled.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--infrastructure-encryption', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = public_network_access(this, varargin)
            % Enable or disable public network access to server. When disabled, only connections made through Private Links can reach this server. Default is Enabled.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--public-network-access', varargin{:}];
        end

        function this = ssl_enforcement(this, varargin)
            % Enable or disable ssl enforcement for connections to server. Default is Enabled.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--ssl-enforcement', varargin{:}];
        end

        function this = storage_size(this, varargin)
            % The storage capacity of the server (unit is megabytes). Minimum 5120 and increases in 1024 increments. Default is 51200.
            this.Options = [this.Options, '--storage-size', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = version(this, varargin)
            % Server major version. Authentication Arguments
            this.Options = [this.Options, '--version', varargin{:}];
        end

        function this = admin_password(this, varargin)
            % The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_user(this, varargin)
            % Administrator username for the server. Once set, it cannot be changed.
            this.Options = [this.Options, '--admin-user', varargin{:}];
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
            fprintf('%s\n', '    az mariadb server create : Create a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                     letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                     characters and maximum 63 characters.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku-name          [Required] : The name of the sku. Follows the convention {pricing')
            fprintf('%s\n', '                                     tier}_{compute generation}_{vCores} in shorthand. Examples:')
            fprintf('%s\n', '                                     B_Gen5_1, GP_Gen5_4, MO_Gen5_16.')
            fprintf('%s\n', '    --assign-identity              : Generate and assign an Azure Active Directory Identity for this')
            fprintf('%s\n', '                                     server for use with key management services like Azure')
            fprintf('%s\n', '                                     KeyVault.')
            fprintf('%s\n', '    --auto-grow                    : Enable or disable autogrow of the storage. Default value is')
            fprintf('%s\n', '                                     Enabled.  Allowed values: Disabled, Enabled.  Default: Enabled.')
            fprintf('%s\n', '    --backup-retention             : The number of days a backup is retained. Range of 7 to 35 days.')
            fprintf('%s\n', '                                     Default is 7 days.')
            fprintf('%s\n', '    --geo-redundant-backup         : Enable or disable geo-redundant backups. Default value is')
            fprintf('%s\n', '                                     Disabled. Not supported in Basic pricing tier.  Allowed values:')
            fprintf('%s\n', '                                     Disabled, Enabled.')
            fprintf('%s\n', '    --infrastructure-encryption -i : Add an optional second layer of encryption for data using new')
            fprintf('%s\n', '                                     encryption algorithm. Default value is Disabled.  Allowed')
            fprintf('%s\n', '                                     values: Disabled, Enabled.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --public-network-access        : Enable or disable public network access to server. When')
            fprintf('%s\n', '                                     disabled, only connections made through Private Links can reach')
            fprintf('%s\n', '                                     this server. Default is Enabled.  Allowed values: Disabled,')
            fprintf('%s\n', '                                     Enabled.')
            fprintf('%s\n', '    --ssl-enforcement              : Enable or disable ssl enforcement for connections to server.')
            fprintf('%s\n', '                                     Default is Enabled.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --storage-size                 : The storage capacity of the server (unit is megabytes). Minimum')
            fprintf('%s\n', '                                     5120 and increases in 1024 increments. Default is 51200.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --version                      : Server major version.')
            fprintf('%s\n', 'Authentication Arguments')
            fprintf('%s\n', '    --admin-password -p [Required] : The password of the administrator. Minimum 8 characters and')
            fprintf('%s\n', '                                     maximum 128 characters. Password must contain characters from')
            fprintf('%s\n', '                                     three of the following categories: English uppercase letters,')
            fprintf('%s\n', '                                     English lowercase letters, numbers, and non-alphanumeric')
            fprintf('%s\n', '                                     characters.')
            fprintf('%s\n', '    --admin-user -u     [Required] : Administrator username for the server. Once set, it cannot be')
            fprintf('%s\n', '                                     changed.')
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
            fprintf('%s\n', '    Create a MariaDB server in North Europe with sku GP_Gen5_2 (General Purpose, Gen 5 hardware, 2')
            fprintf('%s\n', '    vCores).')
            fprintf('%s\n', '        az mariadb server create -l northeurope -g testgroup -n testsvr -u username -p password \')
            fprintf('%s\n', '            --sku-name GP_Gen5_2')
            fprintf('%s\n', '    Create a MariaDB server with all paramaters set.')
            fprintf('%s\n', '        az mariadb server create -l northeurope -g testgroup -n testsvr -u username -p password \')
            fprintf('%s\n', '            --sku-name B_Gen5_1 --ssl-enforcement Disabled --public-network-access Disabled \')
            fprintf('%s\n', '            --backup-retention 10 --geo-redundant-backup Enabled --storage-size 51200 \')
            fprintf('%s\n', '            --tags "key=value" --version 10.2')
            fprintf('%s\n', 'For more specific examples, use: az find "az mariadb server create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
