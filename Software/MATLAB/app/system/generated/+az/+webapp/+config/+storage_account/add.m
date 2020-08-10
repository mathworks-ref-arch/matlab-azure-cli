classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az webapp config storage-account add : Add an Azure storage account configuration to a web app.
            % (Linux Web Apps and Windows Containers Web Apps Only).
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az webapp config storage-account add ';
        end
        function this = access_key(this, varargin)
            % Storage account access key.
            this.Options = [this.Options, '--access-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = custom_id(this, varargin)
            % Custom identifier.
            this.Options = [this.Options, '--custom-id', varargin{:}];
        end

        function this = share_name(this, varargin)
            % Share name (Azure Files) or container name (Azure Blob Storage).
            this.Options = [this.Options, '--share-name', varargin{:}];
        end

        function this = storage_type(this, varargin)
            % Storage type.  Allowed values: AzureBlob, AzureFiles.
            this.Options = [this.Options, '--storage-type', varargin{:}];
        end

        function this = mount_path(this, varargin)
            % Path to mount storage volume within web app.
            this.Options = [this.Options, '--mount-path', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = slot_setting(this, varargin)
            % Slot setting.
            this.Options = [this.Options, '--slot-setting', varargin{:}];
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az webapp config storage-account add : Add an Azure storage account configuration to a web app.')
            fprintf('%s\n', '    (Linux Web Apps and Windows Containers Web Apps Only).')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --access-key -k   [Required] : Storage account access key.')
            fprintf('%s\n', '    --account-name -a [Required] : Storage account name.')
            fprintf('%s\n', '    --custom-id -i    [Required] : Custom identifier.')
            fprintf('%s\n', '    --share-name --sn [Required] : Share name (Azure Files) or container name (Azure Blob Storage).')
            fprintf('%s\n', '    --storage-type -t [Required] : Storage type.  Allowed values: AzureBlob, AzureFiles.')
            fprintf('%s\n', '    --mount-path -m              : Path to mount storage volume within web app.')
            fprintf('%s\n', '    --slot -s                    : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                   specified.')
            fprintf('%s\n', '    --slot-setting               : Slot setting.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                   configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a connection to the Azure Files file share called MyShare in the storage account named')
            fprintf('%s\n', '    MyStorageAccount.')
            fprintf('%s\n', '        az webapp config storage-account add -g MyResourceGroup -n MyUniqueApp \')
            fprintf('%s\n', '          --custom-id CustomId \')
            fprintf('%s\n', '          --storage-type AzureFiles \')
            fprintf('%s\n', '          --account-name MyStorageAccount \')
            fprintf('%s\n', '          --share-name MyShare \')
            fprintf('%s\n', '          --access-key MyAccessKey \')
            fprintf('%s\n', '          --mount-path /path/to/mount')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config storage-account add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
