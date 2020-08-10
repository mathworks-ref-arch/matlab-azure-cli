classdef export < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = export()
            % az sql db export : Export a database to a bacpac.
            this.BaseCmd = 'az sql db export ';
        end
        function this = admin_password(this, varargin)
            % Required. The password of the SQL administrator.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_user(this, varargin)
            % Required. The name of the SQL administrator.
            this.Options = [this.Options, '--admin-user', varargin{:}];
        end

        function this = storage_key(this, varargin)
            % Required. The storage key to use.  If storage key type is SharedAccessKey, it must be preceded with a "?.".
            this.Options = [this.Options, '--storage-key', varargin{:}];
        end

        function this = storage_key_type(this, varargin)
            % Required. The type of the storage key to use.  Allowed values: SharedAccessKey, StorageAccessKey.
            this.Options = [this.Options, '--storage-key-type', varargin{:}];
        end

        function this = storage_uri(this, varargin)
            % Required. The storage uri to use.
            this.Options = [this.Options, '--storage-uri', varargin{:}];
        end

        function this = auth_type(this, varargin)
            % The authentication type.  Allowed values: ADPassword, SQL.
            this.Options = [this.Options, '--auth-type', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Azure SQL Database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db export : Export a database to a bacpac.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-password -p [Required] : Required. The password of the SQL administrator.')
            fprintf('%s\n', '    --admin-user -u     [Required] : Required. The name of the SQL administrator.')
            fprintf('%s\n', '    --storage-key       [Required] : Required. The storage key to use.  If storage key type is')
            fprintf('%s\n', '                                     SharedAccessKey, it must be preceded with a "?.".')
            fprintf('%s\n', '    --storage-key-type  [Required] : Required. The type of the storage key to use.  Allowed values:')
            fprintf('%s\n', '                                     SharedAccessKey, StorageAccessKey.')
            fprintf('%s\n', '    --storage-uri       [Required] : Required. The storage uri to use.')
            fprintf('%s\n', '    --auth-type -a                 : The authentication type.  Allowed values: ADPassword, SQL.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                      : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g            : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s                    : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get an SAS key for use in export operation.')
            fprintf('%s\n', '        az storage blob generate-sas --account-name myAccountName -c myContainer -n myBacpac.bacpac')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --permissions w --expiry 2018-01-01T00:00:00Z')
            fprintf('%s\n', '    Export bacpac using an SAS key.')
            fprintf('%s\n', '        az sql db export -s myserver -n mydatabase -g mygroup -p password -u login \')
            fprintf('%s\n', '            --storage-key "?sr=b&sp=rw&se=2018-01-01T00%3A00%3A00Z&sig=mysignature&sv=2015-07-08" \')
            fprintf('%s\n', '            --storage-key-type SharedAccessKey \')
            fprintf('%s\n', '            --storage-uri https://myAccountName.blob.core.windows.net/myContainer/myBacpac.bacpac')
            fprintf('%s\n', '    Export bacpac using a storage account key.')
            fprintf('%s\n', '        az sql db export -s myserver -n mydatabase -g mygroup -p password -u login \')
            fprintf('%s\n', '            --storage-key MYKEY== --storage-key-type StorageAccessKey \')
            fprintf('%s\n', '            --storage-uri https://myAccountName.blob.core.windows.net/myContainer/myBacpac.bacpac')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db export"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class export 
