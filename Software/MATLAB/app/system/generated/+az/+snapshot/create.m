classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az snapshot create : Create a snapshot.
            this.BaseCmd = 'az snapshot create ';
        end
        function this = name(this, varargin)
            % The name of the snapshot.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = disk_access(this, varargin)
            % Name or ID of the disk access resource for using private endpoints on disks.
            this.Options = [this.Options, '--disk-access', varargin{:}];
        end

        function this = disk_encryption_set(this, varargin)
            % Name or ID of disk encryption set that is used to encrypt the disk.
            this.Options = [this.Options, '--disk-encryption-set', varargin{:}];
        end

        function this = encryption_type(this, varargin)
            % Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest.
            this.Options = [this.Options, '--encryption-type', varargin{:}];
        end

        function this = for_upload(this, varargin)
            % Create the snapshot for uploading blobs later on through storage commands. Run "az snapshot grant-access --access-level Write" to retrieve the snapshot's SAS token.  Allowed values: false, true.
            this.Options = [this.Options, '--for-upload', varargin{:}];
        end

        function this = hyper_v_generation(this, varargin)
            % The hypervisor generation of the Virtual Machine. Applicable to OS disks only.  Allowed values: V1, V2.  Default: V1.
            this.Options = [this.Options, '--hyper-v-generation', varargin{:}];
        end

        function this = incremental(this, varargin)
            % Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.  Allowed values: false, true.
            this.Options = [this.Options, '--incremental', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`. If location is not specified and no default location specified, location will be automatically set as same as the resource group.
            this.Options = [this.Options, '--location', varargin{:}];
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
            % Allowed values: Premium_LRS, Standard_LRS, Standard_ZRS. Default: Standard_LRS.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = source(this, varargin)
            % Source to create the disk/snapshot from, including unmanaged blob uri, managed disk id or name, or snapshot id or name.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = source_storage_account_id(this, varargin)
            % Used when source blob is in a different subscription.
            this.Options = [this.Options, '--source-storage-account-id', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az snapshot create : Create a snapshot.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the snapshot.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --disk-access                  : Name or ID of the disk access resource for using private')
            fprintf('%s\n', '                                     endpoints on disks.')
            fprintf('%s\n', '    --disk-encryption-set          : Name or ID of disk encryption set that is used to encrypt the')
            fprintf('%s\n', '                                     disk.')
            fprintf('%s\n', '    --encryption-type              : Encryption type. EncryptionAtRestWithPlatformKey: Disk is')
            fprintf('%s\n', '                                     encrypted with XStore managed key at rest. It is the default')
            fprintf('%s\n', '                                     encryption type. EncryptionAtRestWithCustomerKey: Disk is')
            fprintf('%s\n', '                                     encrypted with Customer managed key at rest.')
            fprintf('%s\n', '    --for-upload                   : Create the snapshot for uploading blobs later on through')
            fprintf('%s\n', '                                     storage commands. Run "az snapshot grant-access --access-level')
            fprintf('%s\n', '                                     Write" to retrieve the snapshot''s SAS token.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --hyper-v-generation           : The hypervisor generation of the Virtual Machine. Applicable to')
            fprintf('%s\n', '                                     OS disks only.  Allowed values: V1, V2.  Default: V1.')
            fprintf('%s\n', '    --incremental                  : Whether a snapshot is incremental. Incremental snapshots on the')
            fprintf('%s\n', '                                     same disk occupy less space than full snapshots and can be')
            fprintf('%s\n', '                                     diffed.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`. If location is not specified and no')
            fprintf('%s\n', '                                     default location specified, location will be automatically set')
            fprintf('%s\n', '                                     as same as the resource group.')
            fprintf('%s\n', '    --network-access-policy        : Policy for accessing the disk via network.  Allowed values:')
            fprintf('%s\n', '                                     AllowAll, AllowPrivate, DenyAll.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --size-gb -z                   : Size in GB. Max size: 4095 GB (certain preview disks can be')
            fprintf('%s\n', '                                     larger).')
            fprintf('%s\n', '    --sku                          : Allowed values: Premium_LRS, Standard_LRS, Standard_ZRS.')
            fprintf('%s\n', '                                     Default: Standard_LRS.')
            fprintf('%s\n', '    --source                       : Source to create the disk/snapshot from, including unmanaged')
            fprintf('%s\n', '                                     blob uri, managed disk id or name, or snapshot id or name.')
            fprintf('%s\n', '    --source-storage-account-id    : Used when source blob is in a different subscription.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a snapshot by importing from a blob uri.')
            fprintf('%s\n', '        az snapshot create -g MyResourceGroup -n MySnapshot --source')
            fprintf('%s\n', '        https://vhd1234.blob.core.windows.net/vhds/osdisk1234.vhd')
            fprintf('%s\n', '    Create an empty snapshot.')
            fprintf('%s\n', '        az snapshot create -g MyResourceGroup -n MySnapshot --size-gb 10')
            fprintf('%s\n', '    Create a snapshot by copying an existing disk in the same resource group.')
            fprintf('%s\n', '        az snapshot create -g MyResourceGroup -n MySnapshot2 --source MyDisk')
            fprintf('%s\n', '    Create a snapshot from an existing disk in another resource group.')
            fprintf('%s\n', '        az snapshot create -g MyResourceGroup -n MySnapshot2 --source "/subscriptions/00000/resource')
            fprintf('%s\n', '        Groups/AnotherResourceGroup/providers/Microsoft.Compute/disks/MyDisk"')
            fprintf('%s\n', '    Create a snapshot and associate it with a disk access resource.')
            fprintf('%s\n', '        az snapshot create -g MyResourceGroup -n MySnapshot --size-gb 10 --network-access-policy')
            fprintf('%s\n', '        AllowPrivate --disk-access MyDiskAccessID')
            fprintf('%s\n', 'For more specific examples, use: az find "az snapshot create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
