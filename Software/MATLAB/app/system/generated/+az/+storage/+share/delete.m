classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az storage share delete : Marks the specified share for deletion.
            % If the share does not exist, the operation fails on the service. By  default, the exception
            % is swallowed by the client. To expose the exception, specify True for fail_not_exist.
            this.BaseCmd = 'az storage share delete ';
        end
        function this = name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = delete_snapshots(this, varargin)
            % Specify the deletion strategy when the share has snapshots.  Allowed values: include.
            this.Options = [this.Options, '--delete-snapshots', varargin{:}];
        end

        function this = fail_not_exist(this, varargin)
            % Specify whether to throw an exception when the share doesn't exist. False by default.
            this.Options = [this.Options, '--fail-not-exist', varargin{:}];
        end

        function this = snapshot(this, varargin)
            % A string that represents the snapshot version, if applicable. Specify this argument to delete a specific snapshot only. delete_snapshots must be None if this is specified.
            this.Options = [this.Options, '--snapshot', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage share delete"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage share delete : Marks the specified share for deletion.')
            fprintf('%s\n', '        If the share does not exist, the operation fails on the service. By  default, the exception')
            fprintf('%s\n', '        is swallowed by the client. To expose the exception, specify True for fail_not_exist.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The file share name.')
            fprintf('%s\n', '    --delete-snapshots   : Specify the deletion strategy when the share has snapshots.  Allowed')
            fprintf('%s\n', '                           values: include.')
            fprintf('%s\n', '    --fail-not-exist     : Specify whether to throw an exception when the share doesn''t exist. False')
            fprintf('%s\n', '                           by default.')
            fprintf('%s\n', '    --snapshot           : A string that represents the snapshot version, if applicable. Specify')
            fprintf('%s\n', '                           this argument to delete a specific snapshot only. delete_snapshots must')
            fprintf('%s\n', '                           be None if this is specified.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage share delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
