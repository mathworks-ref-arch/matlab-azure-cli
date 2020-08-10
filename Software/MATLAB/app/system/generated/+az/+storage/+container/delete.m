classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az storage container delete : Marks the specified container for deletion.
            % The container and any blobs contained within it are later deleted during garbage collection.
            this.BaseCmd = 'az storage container delete ';
        end
        function this = name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = bypass_immutability_policy(this, varargin)
            % Bypasses upcoming service behavior that will block a container from being deleted if it has a immutability-policy. Specifying this will ignore arguments aside from those used to identify the container ("--name", "--account-name").
            this.Options = [this.Options, '--bypass-immutability-policy', varargin{:}];
        end

        function this = fail_not_exist(this, varargin)
            % Throw an exception if the container does not exist.
            this.Options = [this.Options, '--fail-not-exist', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % If specified, delete_container only succeeds if the container's lease is active and matches this ID. Required if the container has an active lease.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Precondition Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % Commence only if modified since supplied UTC datetime (Y-m-d'T'H:M'Z').
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % Commence only if unmodified since supplied UTC datetime (Y-m-d'T'H:M'Z'). Storage Account Arguments
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage account key or a SAS token. If neither are present, the command will try to query the storage account key using the authenticated Azure account. If a large number of storage commands are executed the API quota may be hit.
            this.Options = [this.Options, '--account-name', varargin{:}];
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
            fprintf('%s\n', '    az storage container delete : Marks the specified container for deletion.')
            fprintf('%s\n', '        The container and any blobs contained within it are later deleted during garbage collection.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n         [Required] : The container name.')
            fprintf('%s\n', '    --auth-mode                  : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                   use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                   "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                   authentication parameters for the account are provided.')
            fprintf('%s\n', '                                   Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                   key, login.')
            fprintf('%s\n', '    --bypass-immutability-policy : Bypasses upcoming service behavior that will block a container')
            fprintf('%s\n', '                                   from being deleted if it has a immutability-policy. Specifying')
            fprintf('%s\n', '                                   this will ignore arguments aside from those used to identify the')
            fprintf('%s\n', '                                   container ("--name", "--account-name").')
            fprintf('%s\n', '    --fail-not-exist             : Throw an exception if the container does not exist.')
            fprintf('%s\n', '    --lease-id                   : If specified, delete_container only succeeds if the container''s')
            fprintf('%s\n', '                                   lease is active and matches this ID. Required if the container')
            fprintf('%s\n', '                                   has an active lease.')
            fprintf('%s\n', '    --timeout                    : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-modified-since          : Commence only if modified since supplied UTC datetime')
            fprintf('%s\n', '                                   (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-unmodified-since        : Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                                   (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                   account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name               : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                   AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                   storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                   command will try to query the storage account key using the')
            fprintf('%s\n', '                                   authenticated Azure account. If a large number of storage')
            fprintf('%s\n', '                                   commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string          : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                   AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                  : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                   storage account name. Environment variable:')
            fprintf('%s\n', '                                   AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Marks the specified container for deletion. (autogenerated)')
            fprintf('%s\n', '        az storage container delete --account-key 00000000 --account-name MyAccount --name')
            fprintf('%s\n', '        MyContainer')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage container delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
