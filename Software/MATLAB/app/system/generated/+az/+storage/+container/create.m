classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az storage container create : Create a container in a storage account.
            % By default, container data is private ("off") to the account owner. Use "blob" to allow
            % public read access for blobs. Use "container" to allow public read and list access to the
            % entire container. You can configure the --public-access using `az storage container set-
            % permission -n CONTAINER_NAME --public-access blob/container/off`.
            this.BaseCmd = 'az storage container create ';
        end
        function this = name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = fail_on_exist(this, varargin)
            % Throw an exception if the container already exists.
            this.Options = [this.Options, '--fail-on-exist', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = public_access(this, varargin)
            % Specifies whether data in the container may be accessed publicly.  Allowed values: blob, container, off.
            this.Options = [this.Options, '--public-access', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Encryption Policy Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = default_encryption_scope(this, varargin)
            % Default the container to use specified encryption scope for all writes. Argument '--default-encryption-scope' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--default-encryption-scope', varargin{:}];
        end

        function this = prevent_encryption_scope_override(this, varargin)
            % Block override of encryption scope from the container default.  Allowed values: false, true. Argument '--prevent-encryption-scope-override' is in preview. It may be changed/removed in a future release. Storage Account Arguments
            this.Options = [this.Options, '--prevent-encryption-scope-override', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Storage account connection string. Environment variable: AZURE_STORAGE_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = sas_token(this, varargin)
            % A Shared Access Signature (SAS). Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.
            this.Options = [this.Options, '--sas-token', varargin{:}];
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
            fprintf('%s\n', '    az storage container create : Create a container in a storage account.')
            fprintf('%s\n', '        By default, container data is private ("off") to the account owner. Use "blob" to allow')
            fprintf('%s\n', '        public read access for blobs. Use "container" to allow public read and list access to the')
            fprintf('%s\n', '        entire container. You can configure the --public-access using `az storage container set-')
            fprintf('%s\n', '        permission -n CONTAINER_NAME --public-access blob/container/off`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                             [Required] : The container name.')
            fprintf('%s\n', '    --account-name                                   : Storage account name. Related environment')
            fprintf('%s\n', '                                                       variable: AZURE_STORAGE_ACCOUNT.')
            fprintf('%s\n', '    --auth-mode                                      : The mode in which to run the command. "login"')
            fprintf('%s\n', '                                                       mode will directly use your login credentials')
            fprintf('%s\n', '                                                       for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                                                       will attempt to query for an account key if')
            fprintf('%s\n', '                                                       no authentication parameters for the account')
            fprintf('%s\n', '                                                       are provided. Environment variable:')
            fprintf('%s\n', '                                                       AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                                       key, login.')
            fprintf('%s\n', '    --fail-on-exist                                  : Throw an exception if the container already')
            fprintf('%s\n', '                                                       exists.')
            fprintf('%s\n', '    --metadata                                       : Metadata in space-separated key=value pairs.')
            fprintf('%s\n', '                                                       This overwrites any existing metadata.')
            fprintf('%s\n', '    --public-access                                  : Specifies whether data in the container may')
            fprintf('%s\n', '                                                       be accessed publicly.  Allowed values: blob,')
            fprintf('%s\n', '                                                       container, off.')
            fprintf('%s\n', '    --resource-group -g                              : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                       default group using `az configure --defaults')
            fprintf('%s\n', '                                                       group=<name>`.')
            fprintf('%s\n', '    --timeout                                        : Request timeout in seconds. Applies to each')
            fprintf('%s\n', '                                                       call to the service.')
            fprintf('%s\n', 'Encryption Policy Arguments')
            fprintf('%s\n', '    --default-encryption-scope -d          [Preview] : Default the container to use')
            fprintf('%s\n', '                                                       specified encryption scope for all writes.')
            fprintf('%s\n', '        Argument ''--default-encryption-scope'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --prevent-encryption-scope-override -p [Preview] : Block override of encryption scope')
            fprintf('%s\n', '                                                       from the container default.  Allowed values:')
            fprintf('%s\n', '                                                       false, true.')
            fprintf('%s\n', '        Argument ''--prevent-encryption-scope-override'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                                    : Storage account key. Must be used in')
            fprintf('%s\n', '                                                       conjunction with storage account name.')
            fprintf('%s\n', '                                                       Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --connection-string                              : Storage account connection string.')
            fprintf('%s\n', '                                                       Environment variable:')
            fprintf('%s\n', '                                                       AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                                      : A Shared Access Signature (SAS). Must be used')
            fprintf('%s\n', '                                                       in conjunction with storage account name.')
            fprintf('%s\n', '                                                       Environment variable:')
            fprintf('%s\n', '                                                       AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                          : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                       logs.')
            fprintf('%s\n', '    --help -h                                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                      : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                       none, table, tsv, yaml, yamlc.  Default:')
            fprintf('%s\n', '                                                       json.')
            fprintf('%s\n', '    --query                                          : JMESPath query string. See')
            fprintf('%s\n', '                                                       http://jmespath.org/ for more information and')
            fprintf('%s\n', '                                                       examples.')
            fprintf('%s\n', '    --subscription                                   : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                       the default subscription using `az account')
            fprintf('%s\n', '                                                       set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                        : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                       full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a storage container in a storage account.')
            fprintf('%s\n', '        az storage container create -n MyStorageContainer')
            fprintf('%s\n', '    Create a storage container in a storage account and return an error if the container already')
            fprintf('%s\n', '    exists.')
            fprintf('%s\n', '        az storage container create -n MyStorageContainer --fail-on-exist')
            fprintf('%s\n', '    Create a storage container in a storage account and allow public read access for blobs.')
            fprintf('%s\n', '        az storage container create -n MyStorageContainer --public-access blob')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage container create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
