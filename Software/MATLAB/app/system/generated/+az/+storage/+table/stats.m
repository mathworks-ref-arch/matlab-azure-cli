classdef stats < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = stats()
            % az storage table stats : Retrieves statistics related to replication for the Table service.
            % It is  only available when read-access geo-redundant replication is enabled for  the storage
            % account.  With geo-redundant replication, Azure Storage maintains your data durable  in two
            % locations. In both locations, Azure Storage constantly maintains  multiple healthy replicas
            % of your data. The location where you read,  create, update, or delete data is the primary
            % storage account location.  The primary location exists in the region you choose at the time
            % you  create an account via the Azure Management Azure classic portal, for  example, North
            % Central US. The location to which your data is replicated  is the secondary location. The
            % secondary location is automatically  determined based on the location of the primary; it is
            % in a second data  center that resides in the same region as the primary location. Read-only
            % access is available from the secondary location, if read-access geo-redundant  replication
            % is enabled for your storage account.
            this.BaseCmd = 'az storage table stats ';
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage table stats"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage table stats : Retrieves statistics related to replication for the Table service.')
            fprintf('%s\n', '        It is  only available when read-access geo-redundant replication is enabled for  the storage')
            fprintf('%s\n', '        account.  With geo-redundant replication, Azure Storage maintains your data durable  in two')
            fprintf('%s\n', '        locations. In both locations, Azure Storage constantly maintains  multiple healthy replicas')
            fprintf('%s\n', '        of your data. The location where you read,  create, update, or delete data is the primary')
            fprintf('%s\n', '        storage account location.  The primary location exists in the region you choose at the time')
            fprintf('%s\n', '        you  create an account via the Azure Management Azure classic portal, for  example, North')
            fprintf('%s\n', '        Central US. The location to which your data is replicated  is the secondary location. The')
            fprintf('%s\n', '        secondary location is automatically  determined based on the location of the primary; it is')
            fprintf('%s\n', '        in a second data  center that resides in the same region as the primary location. Read-only')
            fprintf('%s\n', '        access is available from the secondary location, if read-access geo-redundant  replication')
            fprintf('%s\n', '        is enabled for your storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --timeout           : Request timeout in seconds. Applies to each call to the service.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage table stats"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class stats 
