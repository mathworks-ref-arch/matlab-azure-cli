classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage blob service-properties update : Update storage blob service properties.
            this.BaseCmd = 'az storage blob service-properties update ';
        end
        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Soft Delete Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = delete_retention(this, varargin)
            % Enables soft-delete.  Allowed values: false, true.
            this.Options = [this.Options, '--delete-retention', varargin{:}];
        end

        function this = delete_retention_period(this, varargin)
            % Number of days that soft-deleted blob will be retained. Must be in range [1,365]. Static Website Arguments
            this.Options = [this.Options, '--delete-retention-period', varargin{:}];
        end

        function this = opt_404_document(this, varargin)
            % Represents the path to the error document that should be shown when an error 404 is issued, in other words, when a browser requests a page that does not exist.
            this.Options = [this.Options, '--404-document', varargin{:}];
        end

        function this = index_document(this, varargin)
            % Represents the name of the index document. This is commonly "index.html".
            this.Options = [this.Options, '--index-document', varargin{:}];
        end

        function this = static_website(this, varargin)
            % Enables static-website.  Allowed values: false, true. Storage Account Arguments
            this.Options = [this.Options, '--static-website', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage blob service-properties update : Update storage blob service properties.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auth-mode               : The mode in which to run the command. "login" mode will directly use')
            fprintf('%s\n', '                                your login credentials for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                                will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --timeout                 : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                     : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                string or JSON string>.')
            fprintf('%s\n', '    --force-string            : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                  : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                     : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Soft Delete Arguments')
            fprintf('%s\n', '    --delete-retention        : Enables soft-delete.  Allowed values: false, true.')
            fprintf('%s\n', '    --delete-retention-period : Number of days that soft-deleted blob will be retained. Must be in')
            fprintf('%s\n', '                                range [1,365].')
            fprintf('%s\n', 'Static Website Arguments')
            fprintf('%s\n', '    --404-document            : Represents the path to the error document that should be shown when')
            fprintf('%s\n', '                                an error 404 is issued, in other words, when a browser requests a')
            fprintf('%s\n', '                                page that does not exist.')
            fprintf('%s\n', '    --index-document          : Represents the name of the index document. This is commonly')
            fprintf('%s\n', '                                "index.html".')
            fprintf('%s\n', '    --static-website          : Enables static-website.  Allowed values: false, true.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key             : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name            : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                command will try to query the storage account key using the')
            fprintf('%s\n', '                                authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string       : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token               : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
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
            fprintf('%s\n', '    Update storage blob service properties. (autogenerated)')
            fprintf('%s\n', '        az storage blob service-properties update --404-document error.html --account-name')
            fprintf('%s\n', '        mystorageccount --account-key 00000000 --index-document index.html --static-website true')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob service-properties update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
