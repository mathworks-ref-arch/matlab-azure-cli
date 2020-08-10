classdef insert < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = insert()
            % az storage entity insert : Insert an entity into a table.
            this.BaseCmd = 'az storage entity insert ';
        end
        function this = entity(this, varargin)
            % Space-separated list of key=value pairs. Must contain a PartitionKey and a RowKey. The PartitionKey and RowKey must be unique within the table, and may be up to 64Kb in size. If using an integer value as a key, convert it to a fixed-width string which can be canonically sorted. For example, convert the integer value 1 to the string value "0000001" to ensure proper sorting.
            this.Options = [this.Options, '--entity', varargin{:}];
        end

        function this = table_name(this, varargin)
            % The name of the table to insert the entity into.
            this.Options = [this.Options, '--table-name', varargin{:}];
        end

        function this = if_exists(this, varargin)
            % Behavior when an entity already exists for the specified PartitionKey and RowKey.  Allowed values: fail, merge, replace. Default: fail.
            this.Options = [this.Options, '--if-exists', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The server timeout, expressed in seconds. Storage Account Arguments
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage entity insert : Insert an entity into a table.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --entity -e     [Required] : Space-separated list of key=value pairs. Must contain a')
            fprintf('%s\n', '                                 PartitionKey and a RowKey.')
            fprintf('%s\n', '        The PartitionKey and RowKey must be unique within the table, and may be up to 64Kb in size.')
            fprintf('%s\n', '        If using an integer value as a key, convert it to a fixed-width string which can be')
            fprintf('%s\n', '        canonically sorted. For example, convert the integer value 1 to the string value "0000001"')
            fprintf('%s\n', '        to ensure proper sorting.')
            fprintf('%s\n', '    --table-name -t [Required] : The name of the table to insert the entity into.')
            fprintf('%s\n', '    --if-exists                : Behavior when an entity already exists for the specified')
            fprintf('%s\n', '                                 PartitionKey and RowKey.  Allowed values: fail, merge, replace.')
            fprintf('%s\n', '                                 Default: fail.')
            fprintf('%s\n', '    --timeout                  : The server timeout, expressed in seconds.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key              : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                 account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name             : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                 storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                 command will try to query the storage account key using the')
            fprintf('%s\n', '                                 authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                 are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string        : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                 storage account name. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Insert an entity into a table. (autogenerated)')
            fprintf('%s\n', '        az storage entity insert --connection-string $connectionString --entity PartitionKey=AAA')
            fprintf('%s\n', '        RowKey=BBB Content=ASDF2 --if-exists fail --table-name MyTable')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage entity insert"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class insert 
