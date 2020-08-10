classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage share-rm update : Update the properties for an Azure file share.
            % Command group 'storage share-rm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az storage share-rm update ';
        end
        function this = access_tier(this, varargin)
            % Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium.  Allowed values: Cool, Hot, Premium, TransactionOptimized. Argument '--access-tier' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--access-tier', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs that is associated with the share. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = quota(this, varargin)
            % The maximum size of the share in gigabytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400.
            this.Options = [this.Options, '--quota', varargin{:}];
        end

        function this = root_squash(this, varargin)
            % Reduction of the access rights for the remote superuser. Allowed values: AllSquash, NoRootSquash, RootSquash. Argument '--root-squash' is in preview. It may be changed/removed in a future release.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The name or ID of the storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage share-rm update : Update the properties for an Azure file share.')
            fprintf('%s\n', '        Command group ''storage share-rm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --access-tier [Preview] : Access tier for specific share. GpV2 account can choose')
            fprintf('%s\n', '                              between TransactionOptimized (default), Hot, and Cool. FileStorage')
            fprintf('%s\n', '                              account can choose Premium.  Allowed values: Cool, Hot, Premium,')
            fprintf('%s\n', '                              TransactionOptimized.')
            fprintf('%s\n', '        Argument ''--access-tier'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --metadata              : Metadata in space-separated key=value pairs that is associated with')
            fprintf('%s\n', '                              the share. This overwrites any existing metadata.')
            fprintf('%s\n', '    --quota -q              : The maximum size of the share in gigabytes. Must be greater than 0,')
            fprintf('%s\n', '                              and less than or equal to 5TB (5120). For Large File Shares, the')
            fprintf('%s\n', '                              maximum size is 102400.')
            fprintf('%s\n', '    --root-squash [Preview] : Reduction of the access rights for the remote superuser.')
            fprintf('%s\n', '                              Allowed values: AllSquash, NoRootSquash, RootSquash.')
            fprintf('%s\n', '        Argument ''--root-squash'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                   : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                              pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                              JSON string>.')
            fprintf('%s\n', '    --force-string          : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                              attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                              property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                   : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                              Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : The file share name.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --storage-account       : The name or ID of the storage account.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the properties for an Azure file share ''myfileshare'' under the storage account')
            fprintf('%s\n', '    ''mystorageaccount'' (account name) in resource group ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage share-rm update -g MyResourceGroup --storage-account mystorageaccount --name')
            fprintf('%s\n', '        myfileshare --quota 3 --metadata key1=value1 key2=value2')
            fprintf('%s\n', '    Update the properties for an Azure file share ''myfileshare'' under the storage account')
            fprintf('%s\n', '    ''mystorageaccount'' (account id).')
            fprintf('%s\n', '        az storage share-rm update --storage-account mystorageaccount --name myfileshare --quota 3')
            fprintf('%s\n', '        --metadata key1=value1 key2=value2')
            fprintf('%s\n', '    Update the properties for an Azure file shares by resource id.')
            fprintf('%s\n', '        az storage share-rm update --ids file-share-id --quota 3 --metadata key1=value1 key2=value2')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage share-rm update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
