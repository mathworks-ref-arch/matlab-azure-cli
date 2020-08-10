classdef merge < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = merge()
            % az storage entity merge : Updates an existing entity by merging the entity's properties.
            % Throws  if the entity does not exist.   This operation does not replace the existing entity
            % as the update_entity operation does. A property cannot be removed with merge_entity.  Any
            % properties with null values are ignored. All other properties will be  updated or added.
            this.BaseCmd = 'az storage entity merge ';
        end
        function this = entity(this, varargin)
            % The entity to merge. Could be a dict or an entity object. Must contain a PartitionKey and a RowKey.
            this.Options = [this.Options, '--entity', varargin{:}];
        end

        function this = table_name(this, varargin)
            % The name of the table containing the entity to merge.
            this.Options = [this.Options, '--table-name', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Precondition Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = if_match(this, varargin)
            % The client may specify the ETag for the entity on the request in order to compare to the ETag maintained by the service for the purpose of optimistic concurrency. The merge operation will be performed only if the ETag sent by the client matches the value maintained by the server, indicating that the entity has not been modified since it was retrieved by the client. To force an unconditional merge, set If-Match to the wildcard character (*). Default: *. Storage Account Arguments
            this.Options = [this.Options, '--if-match', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage entity merge"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage entity merge : Updates an existing entity by merging the entity''s properties.')
            fprintf('%s\n', '        Throws  if the entity does not exist.   This operation does not replace the existing entity')
            fprintf('%s\n', '        as the update_entity operation does. A property cannot be removed with merge_entity.  Any')
            fprintf('%s\n', '        properties with null values are ignored. All other properties will be  updated or added.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --entity -e     [Required] : The entity to merge. Could be a dict or an entity object. Must')
            fprintf('%s\n', '                                 contain a PartitionKey and a RowKey.')
            fprintf('%s\n', '    --table-name -t [Required] : The name of the table containing the entity to merge.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                 : The client may specify the ETag for the entity on the request in')
            fprintf('%s\n', '                                 order to compare to the ETag maintained by the service for the')
            fprintf('%s\n', '                                 purpose of optimistic concurrency. The merge operation will be')
            fprintf('%s\n', '                                 performed only if the ETag sent by the client matches the value')
            fprintf('%s\n', '                                 maintained by the server, indicating that the entity has not been')
            fprintf('%s\n', '                                 modified since it was retrieved by the client. To force an')
            fprintf('%s\n', '                                 unconditional merge, set If-Match to the wildcard character (*).')
            fprintf('%s\n', '                                 Default: *.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage entity merge"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class merge 
