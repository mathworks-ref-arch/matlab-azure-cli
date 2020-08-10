classdef cancel < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = cancel()
            % az storage file copy cancel : Aborts a pending copy_file operation, and leaves a destination
            % file  with zero length and full metadata.
            this.BaseCmd = 'az storage file copy cancel ';
        end
        function this = copy_id(this, varargin)
            % Copy identifier provided in the copy.id of the original copy_file operation.
            this.Options = [this.Options, '--copy-id', varargin{:}];
        end

        function this = destination_path(this, varargin)
            % The path to the file within the file share.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = destination_share(this, varargin)
            % Name of the destination share. The share must exist.
            this.Options = [this.Options, '--destination-share', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage file copy cancel"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage file copy cancel : Aborts a pending copy_file operation, and leaves a destination')
            fprintf('%s\n', '    file  with zero length and full metadata.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --copy-id              [Required] : Copy identifier provided in the copy.id of the original')
            fprintf('%s\n', '                                        copy_file operation.')
            fprintf('%s\n', '    --destination-path -p  [Required] : The path to the file within the file share.')
            fprintf('%s\n', '    --destination-share -s [Required] : Name of the destination share. The share must exist.')
            fprintf('%s\n', '    --timeout                         : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                        service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                     : Storage account key. Must be used in conjunction with')
            fprintf('%s\n', '                                        storage account name. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                    : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_ACCOUNT. Must be used in conjunction with')
            fprintf('%s\n', '                                        either storage account key or a SAS token. If neither are')
            fprintf('%s\n', '                                        present, the command will try to query the storage account')
            fprintf('%s\n', '                                        key using the authenticated Azure account. If a large number')
            fprintf('%s\n', '                                        of storage commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string               : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                       : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                        with storage account name. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file copy cancel"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class cancel 
