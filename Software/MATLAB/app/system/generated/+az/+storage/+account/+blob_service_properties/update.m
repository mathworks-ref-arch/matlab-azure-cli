classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage account blob-service-properties update : Update the properties of a storage account's
            % blob service.
            % Update the properties of a storage account's blob service, including properties for Storage
            % Analytics and CORS (Cross-Origin Resource Sharing) rules.
            % Command group 'storage account blob-service-properties' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az storage account blob-service-properties update ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = enable_change_feed(this, varargin)
            % Indicate whether change feed event logging is enabled. If it is true, you enable the storage account to begin capturing changes. The default value is true. You can see more details in https://docs.microsoft.com/en-us/azure/storage/blobs/storage- blob-change-feed?tabs=azure-portal#register-by-using-azure-cli. Allowed values: false, true.
            this.Options = [this.Options, '--enable-change-feed', varargin{:}];
        end

        function this = enable_versioning(this, varargin)
            % Versioning is enabled if set to true.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-versioning', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. Delete Retention Policy Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = delete_retention_days(this, varargin)
            % Indicate the number of days that the deleted blob should be retained. The value must be in range [1,365]. It must be provided when `--enable-delete-retention` is true.
            this.Options = [this.Options, '--delete-retention-days', varargin{:}];
        end

        function this = enable_delete_retention(this, varargin)
            % Indicate whether delete retention policy is enabled for the blob service.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-delete-retention', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Restore Policy Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = enable_restore_policy(this, varargin)
            % Enable blob restore policy when it set to true.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-restore-policy', varargin{:}];
        end

        function this = restore_days(this, varargin)
            % The number of days for the blob can be restored. It should be greater than zero and less than Delete Retention Days.
            this.Options = [this.Options, '--restore-days', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage account blob-service-properties update : Update the properties of a storage account''s')
            fprintf('%s\n', '    blob service.')
            fprintf('%s\n', '        Update the properties of a storage account''s blob service, including properties for Storage')
            fprintf('%s\n', '        Analytics and CORS (Cross-Origin Resource Sharing) rules.')
            fprintf('%s\n', '        Command group ''storage account blob-service-properties'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -n [Required] : The storage account name.')
            fprintf('%s\n', '    --enable-change-feed         : Indicate whether change feed event logging is enabled. If it is')
            fprintf('%s\n', '                                   true, you enable the storage account to begin capturing changes.')
            fprintf('%s\n', '                                   The default value is true. You can see more details in')
            fprintf('%s\n', '                                   https://docs.microsoft.com/en-us/azure/storage/blobs/storage-')
            fprintf('%s\n', '                                   blob-change-feed?tabs=azure-portal#register-by-using-azure-cli.')
            fprintf('%s\n', '                                   Allowed values: false, true.')
            fprintf('%s\n', '    --enable-versioning          : Versioning is enabled if set to true.  Allowed values: false,')
            fprintf('%s\n', '                                   true.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Delete Retention Policy Arguments')
            fprintf('%s\n', '    --delete-retention-days      : Indicate the number of days that the deleted blob should be')
            fprintf('%s\n', '                                   retained. The value must be in range [1,365]. It must be provided')
            fprintf('%s\n', '                                   when `--enable-delete-retention` is true.')
            fprintf('%s\n', '    --enable-delete-retention    : Indicate whether delete retention policy is enabled for the blob')
            fprintf('%s\n', '                                   service.  Allowed values: false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                        : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                   value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                   string or JSON string>.')
            fprintf('%s\n', '    --force-string               : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                   attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                     : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                   property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                        : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                   Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Restore Policy Arguments')
            fprintf('%s\n', '    --enable-restore-policy      : Enable blob restore policy when it set to true.  Allowed values:')
            fprintf('%s\n', '                                   false, true.')
            fprintf('%s\n', '    --restore-days               : The number of days for the blob can be restored. It should be')
            fprintf('%s\n', '                                   greater than zero and less than Delete Retention Days.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable the change feed for the storage account ''mystorageaccount'' in resource group')
            fprintf('%s\n', '    ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage account blob-service-properties update --enable-change-feed true -n')
            fprintf('%s\n', '        mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Enable delete retention policy and set delete retention days to 100 for the storage account')
            fprintf('%s\n', '    ''mystorageaccount'' in resource group ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage account blob-service-properties update --enable-delete-retention true --delete-')
            fprintf('%s\n', '        retention-days 100 -n mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Enable versioning for the storage account ''mystorageaccount'' in resource group')
            fprintf('%s\n', '    ''MyResourceGroup''.')
            fprintf('%s\n', '        az storage account blob-service-properties update --enable-versioning -n mystorageaccount -g')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account blob-service-properties update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
