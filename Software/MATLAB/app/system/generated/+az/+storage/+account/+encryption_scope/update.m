classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage account encryption-scope update : Update properties for specified encryption scope
            % within storage account.
            % Command group 'storage account encryption-scope' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az storage account encryption-scope update ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the encryption scope within the specified storage account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = key_source(this, varargin)
            % The provider for the encryption scope.  Allowed values: Microsoft.KeyVault, Microsoft.Storage.
            this.Options = [this.Options, '--key-source', varargin{:}];
        end

        function this = key_uri(this, varargin)
            % The object identifier for a key vault key object. When applied, the encryption scope will use the key referenced by the identifier to enable customer-managed key support on this encryption scope.
            this.Options = [this.Options, '--key-uri', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = state(this, varargin)
            % Change the state the encryption scope. When disabled, all blob read/write operations using this encryption scope will fail. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--state', varargin{:}];
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
            fprintf('%s\n', '    az storage account encryption-scope update : Update properties for specified encryption scope')
            fprintf('%s\n', '    within storage account.')
            fprintf('%s\n', '        Command group ''storage account encryption-scope'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name [Required] : The storage account name.')
            fprintf('%s\n', '    --name -n      [Required] : The name of the encryption scope within the specified storage')
            fprintf('%s\n', '                                account.')
            fprintf('%s\n', '    --key-source -s           : The provider for the encryption scope.  Allowed values:')
            fprintf('%s\n', '                                Microsoft.KeyVault, Microsoft.Storage.')
            fprintf('%s\n', '    --key-uri -u              : The object identifier for a key vault key object. When applied, the')
            fprintf('%s\n', '                                encryption scope will use the key referenced by the identifier to')
            fprintf('%s\n', '                                enable customer-managed key support on this encryption scope.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --state                   : Change the state the encryption scope. When disabled, all blob')
            fprintf('%s\n', '                                read/write operations using this encryption scope will fail.')
            fprintf('%s\n', '                                Allowed values: Disabled, Enabled.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an encryption scope key source to Micosoft.Storage.')
            fprintf('%s\n', '        az storage account encryption-scope update --name myencryption -s Microsoft.Storage')
            fprintf('%s\n', '        --account-name mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Create an encryption scope within storage account based on Micosoft.KeyVault key source.')
            fprintf('%s\n', '        az storage account encryption-scope update --name myencryption -s Microsoft.KeyVault -u')
            fprintf('%s\n', '        "https://vaultname.vault.azure.net/keys/keyname/1f7fa7edc99f4cdf82b5b5f32f2a50a7" --account-')
            fprintf('%s\n', '        name mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Disable an encryption scope within storage account.')
            fprintf('%s\n', '        az storage account encryption-scope update --name myencryption --state Disabled --account-')
            fprintf('%s\n', '        name mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Enable an encryption scope within storage account.')
            fprintf('%s\n', '        az storage account encryption-scope update --name myencryption --state Enabled --account-')
            fprintf('%s\n', '        name mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account encryption-scope update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
