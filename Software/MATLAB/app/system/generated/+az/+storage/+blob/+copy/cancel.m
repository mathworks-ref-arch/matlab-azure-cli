classdef cancel < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = cancel()
            % az storage blob copy cancel : Aborts a pending copy_blob operation, and leaves a destination
            % blob with zero length and full metadata.
            this.BaseCmd = 'az storage blob copy cancel ';
        end
        function this = copy_id(this, varargin)
            % Copy identifier provided in the copy.id of the original copy_blob operation.
            this.Options = [this.Options, '--copy-id', varargin{:}];
        end

        function this = destination_blob(this, varargin)
            % Name of the destination blob. If the exists, it will be overwritten.
            this.Options = [this.Options, '--destination-blob', varargin{:}];
        end

        function this = destination_container(this, varargin)
            % The container name.
            this.Options = [this.Options, '--destination-container', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % Required if the destination blob has an active infinite lease.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Storage Account Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage blob copy cancel"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage blob copy cancel : Aborts a pending copy_blob operation, and leaves a destination')
            fprintf('%s\n', '    blob with zero length and full metadata.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --copy-id                  [Required] : Copy identifier provided in the copy.id of the original')
            fprintf('%s\n', '                                            copy_blob operation.')
            fprintf('%s\n', '    --destination-blob -b      [Required] : Name of the destination blob. If the exists, it will be')
            fprintf('%s\n', '                                            overwritten.')
            fprintf('%s\n', '    --destination-container -c [Required] : The container name.')
            fprintf('%s\n', '    --auth-mode                           : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                            directly use your login credentials for the')
            fprintf('%s\n', '                                            authentication. The legacy "key" mode will attempt to')
            fprintf('%s\n', '                                            query for an account key if no authentication parameters')
            fprintf('%s\n', '                                            for the account are provided. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --lease-id                            : Required if the destination blob has an active infinite')
            fprintf('%s\n', '                                            lease.')
            fprintf('%s\n', '    --timeout                             : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                            service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                         : Storage account key. Must be used in conjunction with')
            fprintf('%s\n', '                                            storage account name. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with')
            fprintf('%s\n', '                                            either storage account key or a SAS token. If neither')
            fprintf('%s\n', '                                            are present, the command will try to query the storage')
            fprintf('%s\n', '                                            account key using the authenticated Azure account. If a')
            fprintf('%s\n', '                                            large number of storage commands are executed the API')
            fprintf('%s\n', '                                            quota may be hit.')
            fprintf('%s\n', '    --connection-string                   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                           : A Shared Access Signature (SAS). Must be used in')
            fprintf('%s\n', '                                            conjunction with storage account name. Environment')
            fprintf('%s\n', '                                            variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob copy cancel"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class cancel 
