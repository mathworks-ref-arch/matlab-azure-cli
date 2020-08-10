classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage blob service-properties delete-policy update : Update the storage blob delete-policy.
            this.BaseCmd = 'az storage blob service-properties delete-policy update ';
        end
        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE. Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = days_retained(this, varargin)
            % Number of days that soft-deleted blob will be retained. Must be in range [1,365].
            this.Options = [this.Options, '--days-retained', varargin{:}];
        end

        function this = enable(this, varargin)
            % Enables/disables soft-delete.  Allowed values: false, true. Storage Account Arguments
            this.Options = [this.Options, '--enable', varargin{:}];
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
            fprintf('%s\n', '    az storage blob service-properties delete-policy update : Update the storage blob delete-policy.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auth-mode         : The mode in which to run the command. "login" mode will directly use your')
            fprintf('%s\n', '                          login credentials for the authentication. The legacy "key" mode will')
            fprintf('%s\n', '                          attempt to query for an account key if no authentication parameters for')
            fprintf('%s\n', '                          the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.')
            fprintf('%s\n', '                          Allowed values: key, login.')
            fprintf('%s\n', '    --days-retained     : Number of days that soft-deleted blob will be retained. Must be in range')
            fprintf('%s\n', '                          [1,365].')
            fprintf('%s\n', '    --enable            : Enables/disables soft-delete.  Allowed values: false, true.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key       : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                          name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name      : Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT.')
            fprintf('%s\n', '                          Must be used in conjunction with either storage account key or a SAS')
            fprintf('%s\n', '                          token. If neither are present, the command will try to query the storage')
            fprintf('%s\n', '                          account key using the authenticated Azure account. If a large number of')
            fprintf('%s\n', '                          storage commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                          AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token         : A Shared Access Signature (SAS). Must be used in conjunction with storage')
            fprintf('%s\n', '                          account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the storage blob delete-policy. (autogenerated)')
            fprintf('%s\n', '        az storage blob service-properties delete-policy update --account-name mystorageccount')
            fprintf('%s\n', '        --account-key 00000000 --days-retained 7 --enable true')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob service-properties delete-policy')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
