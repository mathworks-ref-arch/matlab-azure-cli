classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az appconfig update : Update an App Configuration.
            this.BaseCmd = 'az appconfig update ';
        end
        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % The sku of App Configuration.  Allowed values: Free, Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Customer Managed Key Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = encryption_key_name(this, varargin)
            % The name of the KeyVault key. Argument '--encryption-key-name' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--encryption-key-name', varargin{:}];
        end

        function this = encryption_key_vault(this, varargin)
            % The URI of the KeyVault. Argument '--encryption-key-vault' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--encryption-key-vault', varargin{:}];
        end

        function this = encryption_key_version(this, varargin)
            % The version of the KeyVault key. Use the latest version by default. Argument '--encryption-key-version' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--encryption-key-version', varargin{:}];
        end

        function this = identity_client_id(this, varargin)
            % Client ID of the managed identity with wrap and unwrap access to encryption key. Use system assigned identity by default. Argument '--identity-client-id' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--identity-client-id', varargin{:}];
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
            fprintf('%s\n', '    az appconfig update : Update an App Configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n               [Required] : Name of the App Configuration. You can configure the')
            fprintf('%s\n', '                                         default name using `az configure --defaults')
            fprintf('%s\n', '                                         app_configuration_store=<name>`.')
            fprintf('%s\n', '    --resource-group -g                : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku                              : The sku of App Configuration.  Allowed values: Free,')
            fprintf('%s\n', '                                         Standard.')
            fprintf('%s\n', '    --tags                             : Space-separated tags: key[=value] [key[=value] ...]. Use ''''')
            fprintf('%s\n', '                                         to clear existing tags.')
            fprintf('%s\n', 'Customer Managed Key Arguments')
            fprintf('%s\n', '    --encryption-key-name    [Preview] : The name of the KeyVault key.')
            fprintf('%s\n', '        Argument ''--encryption-key-name'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --encryption-key-vault   [Preview] : The URI of the KeyVault.')
            fprintf('%s\n', '        Argument ''--encryption-key-vault'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --encryption-key-version [Preview] : The version of the KeyVault key. Use the latest')
            fprintf('%s\n', '                                         version by default.')
            fprintf('%s\n', '        Argument ''--encryption-key-version'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --identity-client-id     [Preview] : Client ID of the managed identity with wrap and')
            fprintf('%s\n', '                                         unwrap access to encryption key. Use system assigned')
            fprintf('%s\n', '                                         identity by default.')
            fprintf('%s\n', '        Argument ''--identity-client-id'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update tags of an App Configuration')
            fprintf('%s\n', '        az appconfig update -g MyResourceGroup -n MyAppConfiguration --tags key1=value1 key2=value2')
            fprintf('%s\n', '    Upgrade sku of an App Configuration to standard')
            fprintf('%s\n', '        az appconfig update -g MyResourceGroup -n MyAppConfiguration --sku Standard')
            fprintf('%s\n', '    Enable customer encryption key with system assigned identity')
            fprintf('%s\n', '        az appconfig update -g MyResourceGroup -n MyAppConfiguration --encryption-key-name myKey')
            fprintf('%s\n', '        --encryption-key-version keyVersion --encryption-key-vault')
            fprintf('%s\n', '        https://keyVaultName.vault.azure.net')
            fprintf('%s\n', '    Remove customer encryption key')
            fprintf('%s\n', '        az appconfig update -g MyResourceGroup -n MyAppConfiguration --encryption-key-name ""')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
