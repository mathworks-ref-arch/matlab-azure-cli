classdef enable_for_azurefileshare < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable_for_azurefileshare()
            % az backup protection enable-for-azurefileshare : Start protecting a previously unprotected Azure
            % File share within an Azure Storage account as per the specified policy to a Recovery services
            % vault.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protection enable-for-azurefileshare ';
        end
        function this = azure_file_share(this, varargin)
            % Name of the Azure FileShare.
            this.Options = [this.Options, '--azure-file-share', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % Name of the backup policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name of the Storage Account of the FileShare.
            this.Options = [this.Options, '--storage-account', varargin{:}];
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

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az backup protection enable-for-azurefileshare : Start protecting a previously unprotected Azure')
            fprintf('%s\n', '    File share within an Azure Storage account as per the specified policy to a Recovery services')
            fprintf('%s\n', '    vault.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --azure-file-share [Required] : Name of the Azure FileShare.')
            fprintf('%s\n', '    --policy-name -p   [Required] : Name of the backup policy.')
            fprintf('%s\n', '    --storage-account  [Required] : Name of the Storage Account of the FileShare.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v               : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Start protecting a previously unprotected Azure File share within an Azure Storage account as')
            fprintf('%s\n', '    per the specified policy to a Recovery services vault. Provide the Azure File share name and the')
            fprintf('%s\n', '    parent storage account name.')
            fprintf('%s\n', '        az backup protection enable-for-azurefileshare --policy-name MyPolicy --resource-group')
            fprintf('%s\n', '        MyResourceGroup --vault-name MyVault --storage-account MyStorageAccount --azure-file-share')
            fprintf('%s\n', '        MyAzureFileShare')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protection enable-for-azurefileshare"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable_for_azurefileshare 
