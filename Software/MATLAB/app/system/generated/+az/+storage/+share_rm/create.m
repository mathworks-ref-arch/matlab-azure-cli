classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az storage share-rm create : Create a new Azure file share under the specified storage account.
            % Command group 'storage share-rm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az storage share-rm create ';
        end
        function this = name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The name or ID of the storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = access_tier(this, varargin)
            % Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.  Allowed values: Cool, Hot, Premium, TransactionOptimized. Argument '--access-tier' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--access-tier', varargin{:}];
        end

        function this = enabled_protocols(this, varargin)
            % Immutable property for file shares protocol. NFS protocol will be only available for premium file shares (file shares in the FileStorage account type).  Allowed values: NFS, SMB. Argument '--enabled-protocols' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enabled-protocols', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs that is associated with the share. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = quota(this, varargin)
            % The maximum size of the share in gigabytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400.
            this.Options = [this.Options, '--quota', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = root_squash(this, varargin)
            % Reduction of the access rights for the remote superuser.  Allowed values: AllSquash, NoRootSquash, RootSquash. Argument '--root-squash' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--root-squash', varargin{:}];
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
            fprintf('%s\n', '    az storage share-rm create : Create a new Azure file share under the specified storage account.')
            fprintf('%s\n', '        Command group ''storage share-rm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          [Required] : The file share name.')
            fprintf('%s\n', '    --storage-account  [Required] : The name or ID of the storage account.')
            fprintf('%s\n', '    --access-tier       [Preview] : Access tier for specific share. GpV2 account can')
            fprintf('%s\n', '                                    choose between TransactionOptimized (default), Hot, and Cool.')
            fprintf('%s\n', '                                    FileStorage account can choose Premium.  Allowed values: Cool,')
            fprintf('%s\n', '                                    Hot, Premium, TransactionOptimized.')
            fprintf('%s\n', '        Argument ''--access-tier'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --enabled-protocols [Preview] : Immutable property for file shares protocol. NFS')
            fprintf('%s\n', '                                    protocol will be only available for premium file shares (file')
            fprintf('%s\n', '                                    shares in the FileStorage account type).  Allowed values: NFS,')
            fprintf('%s\n', '                                    SMB.')
            fprintf('%s\n', '        Argument ''--enabled-protocols'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --metadata                    : Metadata in space-separated key=value pairs that is associated')
            fprintf('%s\n', '                                    with the share. This overwrites any existing metadata.')
            fprintf('%s\n', '    --quota -q                    : The maximum size of the share in gigabytes. Must be greater than')
            fprintf('%s\n', '                                    0, and less than or equal to 5TB (5120). For Large File Shares,')
            fprintf('%s\n', '                                    the maximum size is 102400.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --root-squash       [Preview] : Reduction of the access rights for the remote')
            fprintf('%s\n', '                                    superuser.  Allowed values: AllSquash, NoRootSquash, RootSquash.')
            fprintf('%s\n', '        Argument ''--root-squash'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new Azure file share ''myfileshare'' with metadata and quota as 10 GB under the storage')
            fprintf('%s\n', '    account ''mystorageaccount''(account name) in resource group ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage share-rm create -g MyResourceGroup --storage-account mystorageaccount --name')
            fprintf('%s\n', '        myfileshare --quota 10 --metadata key1=value1 key2=value2')
            fprintf('%s\n', '    Create a new Azure file share ''myfileshare'' with metadata and quota as 6000 GB under the storage')
            fprintf('%s\n', '    account ''mystorageaccount''(account name) which enables large file share in resource group')
            fprintf('%s\n', '    ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage account update -g MyResourceGroup --name mystorageaccount --enable-large-file-')
            fprintf('%s\n', '        share')
            fprintf('%s\n', '        az storage share-rm create -g MyResourceGroup --storage-account mystorageaccount --name')
            fprintf('%s\n', '        myfileshare --quota 6000 --metadata key1=value1 key2=value2')
            fprintf('%s\n', '    Create a new Azure file share ''myfileshare'' with metadata and quota as 10 GB under the storage')
            fprintf('%s\n', '    account ''mystorageaccount'' (account id).')
            fprintf('%s\n', '        az storage share-rm create --storage-account mystorageaccount --name myfileshare --quota 10')
            fprintf('%s\n', '        --metadata key1=value1 key2=value2')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage share-rm create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
