classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az storage table delete : Deletes the specified table and any data it contains.
            % When a table is successfully deleted, it is immediately marked for deletion  and is no
            % longer accessible to clients. The table is later removed from  the Table service during
            % garbage collection.  Note that deleting a table is likely to take at least 40 seconds to
            % complete.  If an operation is attempted against the table while it was being deleted,  an
            % :class:`AzureConflictHttpError` will be thrown.
            this.BaseCmd = 'az storage table delete ';
        end
        function this = name(this, varargin)
            % The name of the table to delete.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = fail_not_exist(this, varargin)
            % Specifies whether to throw an exception if the table doesn't exist.
            this.Options = [this.Options, '--fail-not-exist', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage table delete"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage table delete : Deletes the specified table and any data it contains.')
            fprintf('%s\n', '        When a table is successfully deleted, it is immediately marked for deletion  and is no')
            fprintf('%s\n', '        longer accessible to clients. The table is later removed from  the Table service during')
            fprintf('%s\n', '        garbage collection.  Note that deleting a table is likely to take at least 40 seconds to')
            fprintf('%s\n', '        complete.  If an operation is attempted against the table while it was being deleted,  an')
            fprintf('%s\n', '        :class:`AzureConflictHttpError` will be thrown.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The name of the table to delete.')
            fprintf('%s\n', '    --fail-not-exist     : Specifies whether to throw an exception if the table doesn''t exist.')
            fprintf('%s\n', '    --timeout            : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key        : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                           name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name       : Storage account name. Related environment variable:')
            fprintf('%s\n', '                           AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                           account key or a SAS token. If neither are present, the command will try')
            fprintf('%s\n', '                           to query the storage account key using the authenticated Azure account.')
            fprintf('%s\n', '                           If a large number of storage commands are executed the API quota may be')
            fprintf('%s\n', '                           hit.')
            fprintf('%s\n', '    --connection-string  : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                           AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token          : A Shared Access Signature (SAS). Must be used in conjunction with storage')
            fprintf('%s\n', '                           account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage table delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
