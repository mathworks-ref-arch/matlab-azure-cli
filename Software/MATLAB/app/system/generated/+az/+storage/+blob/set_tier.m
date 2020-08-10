classdef set_tier < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_tier()
            % az storage blob set-tier : Set the block or page tiers on the blob.
            % For block blob this command only supports block blob on standard storage accounts. For page
            % blob, this command only supports for page blobs on premium accounts.
            this.BaseCmd = 'az storage blob set-tier ';
        end
        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The blob name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = tier(this, varargin)
            % The tier value to set the blob to.
            this.Options = [this.Options, '--tier', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE. Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = rehydrate_priority(this, varargin)
            % Indicate the priority with which to rehydrate an archived blob. The priority can be set on a blob only once, default value is Standard.  Allowed values: High, Standard. Argument '--rehydrate-priority' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--rehydrate-priority', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The timeout parameter is expressed in seconds. This method may make multiple calls to the Azure service and the timeout will apply to each call individually.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = type(this, varargin)
            % The blob type.  Allowed values: block, page.  Default: block. Storage Account Arguments
            this.Options = [this.Options, '--type', varargin{:}];
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
            fprintf('%s\n', '    az storage blob set-tier : Set the block or page tiers on the blob.')
            fprintf('%s\n', '        For block blob this command only supports block blob on standard storage accounts. For page')
            fprintf('%s\n', '        blob, this command only supports for page blobs on premium accounts.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c    [Required] : The container name.')
            fprintf('%s\n', '    --name -n              [Required] : The blob name.')
            fprintf('%s\n', '    --tier                 [Required] : The tier value to set the blob to.')
            fprintf('%s\n', '    --auth-mode                       : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                        directly use your login credentials for the authentication.')
            fprintf('%s\n', '                                        The legacy "key" mode will attempt to query for an account')
            fprintf('%s\n', '                                        key if no authentication parameters for the account are')
            fprintf('%s\n', '                                        provided. Environment variable: AZURE_STORAGE_AUTH_MODE.')
            fprintf('%s\n', '                                        Allowed values: key, login.')
            fprintf('%s\n', '    --rehydrate-priority -r [Preview] : Indicate the priority with which to rehydrate an')
            fprintf('%s\n', '                                        archived blob. The priority can be set on a blob only once,')
            fprintf('%s\n', '                                        default value is Standard.  Allowed values: High, Standard.')
            fprintf('%s\n', '        Argument ''--rehydrate-priority'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --timeout                         : The timeout parameter is expressed in seconds. This method')
            fprintf('%s\n', '                                        may make multiple calls to the Azure service and the timeout')
            fprintf('%s\n', '                                        will apply to each call individually.')
            fprintf('%s\n', '    --type -t                         : The blob type.  Allowed values: block, page.  Default:')
            fprintf('%s\n', '                                        block.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set the block or page tiers on the blob. (autogenerated)')
            fprintf('%s\n', '        az storage blob set-tier --account-key 00000000 --account-name MyAccount --container-name')
            fprintf('%s\n', '        MyContainer --name MyBlob --tier P10')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob set-tier"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_tier 
