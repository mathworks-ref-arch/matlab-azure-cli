classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az mysql server update : Update a server.
            this.BaseCmd = 'az mysql server update ';
        end
        function this = admin_password(this, varargin)
            % The password of the administrator. Minimum 8 characters and maximum 128 characters. Password must contain characters from three of the following categories: English uppercase letters, English lowercase letters, numbers, and non-alphanumeric characters.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign an Azure Active Directory Identity for this server for use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = auto_grow(this, varargin)
            % Enable or disable autogrow of the storage. Default value is Enabled. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--auto-grow', varargin{:}];
        end

        function this = backup_retention(this, varargin)
            % The number of days a backup is retained. Range of 7 to 35 days. Default is 7 days.
            this.Options = [this.Options, '--backup-retention', varargin{:}];
        end

        function this = minimal_tls_version(this, varargin)
            % Set the minimal TLS version for connections to server when SSL is enabled. Default is TLSEnforcementDisabled.  Allowed values: TLS1_0, TLS1_1, TLS1_2, TLSEnforcementDisabled.
            this.Options = [this.Options, '--minimal-tls-version', varargin{:}];
        end

        function this = public_network_access(this, varargin)
            % Enable or disable public network access to server. When disabled, only connections made through Private Links can reach this server. Default is Enabled.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--public-network-access', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The name of the sku. Follows the convention {pricing tier}_{compute generation}_{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16.
            this.Options = [this.Options, '--sku-name', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az mysql server update : Update a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-password -p     : The password of the administrator. Minimum 8 characters and maximum')
            fprintf('%s\n', '                              128 characters. Password must contain characters from three of the')
            fprintf('%s\n', '                              following categories: English uppercase letters, English lowercase')
            fprintf('%s\n', '                              letters, numbers, and non-alphanumeric characters.')
            fprintf('%s\n', '    --assign-identity       : Generate and assign an Azure Active Directory Identity for this server')
            fprintf('%s\n', '                              for use with key management services like Azure KeyVault.')
            fprintf('%s\n', '    --auto-grow             : Enable or disable autogrow of the storage. Default value is Enabled.')
            fprintf('%s\n', '                              Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --backup-retention      : The number of days a backup is retained. Range of 7 to 35 days.')
            fprintf('%s\n', '                              Default is 7 days.')
            fprintf('%s\n', '    --minimal-tls-version   : Set the minimal TLS version for connections to server when SSL is')
            fprintf('%s\n', '                              enabled. Default is TLSEnforcementDisabled.  Allowed values: TLS1_0,')
            fprintf('%s\n', '                              TLS1_1, TLS1_2, TLSEnforcementDisabled.')
            fprintf('%s\n', '    --public-network-access : Enable or disable public network access to server. When disabled, only')
            fprintf('%s\n', '                              connections made through Private Links can reach this server. Default')
            fprintf('%s\n', '                              is Enabled.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --sku-name              : The name of the sku. Follows the convention {pricing tier}_{compute')
            fprintf('%s\n', '                              generation}_{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4,')
            fprintf('%s\n', '                              MO_Gen5_16.')
            fprintf('%s\n', '    --ssl-enforcement       : Enable or disable ssl enforcement for connections to server. Default')
            fprintf('%s\n', '                              is Enabled.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --storage-size          : The storage capacity of the server (unit is megabytes). Minimum 5120')
            fprintf('%s\n', '                              and increases in 1024 increments. Default is 51200.')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                   : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                              pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                              JSON string>.')
            fprintf('%s\n', '    --force-string          : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                              attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                              property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                   : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                              Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : Name of the server. The name can contain only lowercase letters,')
            fprintf('%s\n', '                              numbers, and the hyphen (-) character. Minimum 3 characters and')
            fprintf('%s\n', '                              maximum 63 characters.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a server''s sku.')
            fprintf('%s\n', '        az mysql server update -g testgroup -n testsvrnew --sku-name GP_Gen5_4')
            fprintf('%s\n', '    Update a server''s tags.')
            fprintf('%s\n', '        az mysql server update -g testgroup -n testsvrnew --tags "k1=v1" "k2=v2"')
            fprintf('%s\n', '    Update a server. (autogenerated)')
            fprintf('%s\n', '        az mysql server update --name testsvrnew --resource-group testgroup --ssl-enforcement')
            fprintf('%s\n', '        Enabled --minimal-tls-version TLS1_0')
            fprintf('%s\n', 'For more specific examples, use: az find "az mysql server update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
