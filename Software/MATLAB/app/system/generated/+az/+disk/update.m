classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az disk update : Update a managed disk.
            this.BaseCmd = 'az disk update ';
        end
        function this = disk_access(this, varargin)
            % Name or ID of the disk access resource for using private endpoints on disks.
            this.Options = [this.Options, '--disk-access', varargin{:}];
        end

        function this = disk_encryption_set(this, varargin)
            % Name or ID of disk encryption set that is used to encrypt the disk.
            this.Options = [this.Options, '--disk-encryption-set', varargin{:}];
        end

        function this = disk_iops_read_write(this, varargin)
            % The number of IOPS allowed for this disk. Only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
            this.Options = [this.Options, '--disk-iops-read-write', varargin{:}];
        end

        function this = disk_mbps_read_write(this, varargin)
            % The bandwidth allowed for this disk. Only settable for UltraSSD disks. MBps means millions of bytes per second with ISO notation of powers of 10.
            this.Options = [this.Options, '--disk-mbps-read-write', varargin{:}];
        end

        function this = encryption_type(this, varargin)
            % Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest.
            this.Options = [this.Options, '--encryption-type', varargin{:}];
        end

        function this = network_access_policy(this, varargin)
            % Policy for accessing the disk via network.  Allowed values: AllowAll, AllowPrivate, DenyAll.
            this.Options = [this.Options, '--network-access-policy', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = size_gb(this, varargin)
            % Size in GB. Max size: 4095 GB (certain preview disks can be larger).
            this.Options = [this.Options, '--size-gb', varargin{:}];
        end

        function this = sku(this, varargin)
            % Underlying storage SKU.  Allowed values: Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            % The name of the managed disk.
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
            fprintf('%s\n', '    az disk update : Update a managed disk.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disk-access           : Name or ID of the disk access resource for using private endpoints on')
            fprintf('%s\n', '                              disks.')
            fprintf('%s\n', '    --disk-encryption-set   : Name or ID of disk encryption set that is used to encrypt the disk.')
            fprintf('%s\n', '    --disk-iops-read-write  : The number of IOPS allowed for this disk. Only settable for UltraSSD')
            fprintf('%s\n', '                              disks. One operation can transfer between 4k and 256k bytes.')
            fprintf('%s\n', '    --disk-mbps-read-write  : The bandwidth allowed for this disk. Only settable for UltraSSD disks.')
            fprintf('%s\n', '                              MBps means millions of bytes per second with ISO notation of powers of')
            fprintf('%s\n', '                              10.')
            fprintf('%s\n', '    --encryption-type       : Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted')
            fprintf('%s\n', '                              with XStore managed key at rest. It is the default encryption type.')
            fprintf('%s\n', '                              EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer')
            fprintf('%s\n', '                              managed key at rest.')
            fprintf('%s\n', '    --network-access-policy : Policy for accessing the disk via network.  Allowed values: AllowAll,')
            fprintf('%s\n', '                              AllowPrivate, DenyAll.')
            fprintf('%s\n', '    --no-wait               : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --size-gb -z            : Size in GB. Max size: 4095 GB (certain preview disks can be larger).')
            fprintf('%s\n', '    --sku                   : Underlying storage SKU.  Allowed values: Premium_LRS, StandardSSD_LRS,')
            fprintf('%s\n', '                              Standard_LRS, UltraSSD_LRS.')
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
            fprintf('%s\n', '    --name -n               : The name of the managed disk.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Update a managed disk. (autogenerated)')
            fprintf('%s\n', '        az disk update --name MyManagedDisk --resource-group MyResourceGroup --size-gb 20')
            fprintf('%s\n', '    Update a managed disk and associate it with a disk access resource.')
            fprintf('%s\n', '        az disk update --name MyManagedDisk --resource-group MyResourceGroup --network-access-policy')
            fprintf('%s\n', '        AllowPrivate --disk-access MyDiskAccessID')
            fprintf('%s\n', 'For more specific examples, use: az find "az disk update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
