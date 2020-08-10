classdef set_permission < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_permission()
            % az storage container set-permission : Sets the permissions for the specified container or stored
            % access  policies that may be used with Shared Access Signatures.
            % The permissions indicate whether blobs in a container may be accessed publicly.
            this.BaseCmd = 'az storage container set-permission ';
        end
        function this = name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % If specified, set_container_acl only succeeds if the container's lease is active and matches this ID.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = public_access(this, varargin)
            % Specifies whether data in the container may be accessed publicly. Allowed values: blob, container, off.
            this.Options = [this.Options, '--public-access', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage container set-permission"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage container set-permission : Sets the permissions for the specified container or stored')
            fprintf('%s\n', '    access  policies that may be used with Shared Access Signatures.')
            fprintf('%s\n', '        The permissions indicate whether blobs in a container may be accessed publicly.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n  [Required] : The container name.')
            fprintf('%s\n', '    --auth-mode           : The mode in which to run the command. "login" mode will directly use')
            fprintf('%s\n', '                            your login credentials for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                            will attempt to query for an account key if no authentication parameters')
            fprintf('%s\n', '                            for the account are provided. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --lease-id            : If specified, set_container_acl only succeeds if the container''s lease')
            fprintf('%s\n', '                            is active and matches this ID.')
            fprintf('%s\n', '    --public-access       : Specifies whether data in the container may be accessed publicly.')
            fprintf('%s\n', '                            Allowed values: blob, container, off.')
            fprintf('%s\n', '    --timeout             : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-modified-since   : Commence only if modified since supplied UTC datetime (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-unmodified-since : Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                            (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key         : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                            name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                            account key or a SAS token. If neither are present, the command will try')
            fprintf('%s\n', '                            to query the storage account key using the authenticated Azure account.')
            fprintf('%s\n', '                            If a large number of storage commands are executed the API quota may be')
            fprintf('%s\n', '                            hit.')
            fprintf('%s\n', '    --connection-string   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token           : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                            storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage container set-permission"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_permission 
