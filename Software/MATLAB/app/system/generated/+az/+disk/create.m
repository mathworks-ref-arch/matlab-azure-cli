classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az disk create : Create a managed disk.
            this.BaseCmd = 'az disk create ';
        end
        function this = name(this, varargin)
            % The name of the managed disk.
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

        function this = disk_iops_read_only(this, varargin)
            % The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
            this.Options = [this.Options, '--disk-iops-read-only', varargin{:}];
        end

        function this = disk_iops_read_write(this, varargin)
            % The number of IOPS allowed for this disk. Only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
            this.Options = [this.Options, '--disk-iops-read-write', varargin{:}];
        end

        function this = disk_mbps_read_only(this, varargin)
            % The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
            this.Options = [this.Options, '--disk-mbps-read-only', varargin{:}];
        end

        function this = disk_mbps_read_write(this, varargin)
            % The bandwidth allowed for this disk. Only settable for UltraSSD disks. MBps means millions of bytes per second with ISO notation of powers of 10.
            this.Options = [this.Options, '--disk-mbps-read-write', varargin{:}];
        end

        function this = encryption_type(this, varargin)
            % Encryption type. EncryptionAtRestWithPlatformKey: Disk is encrypted with XStore managed key at rest. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted with Customer managed key at rest.
            this.Options = [this.Options, '--encryption-type', varargin{:}];
        end

        function this = for_upload(this, varargin)
            % Create the disk for uploading blobs later on through storage commands. Run "az disk grant-access --access-level Write" to retrieve the disk's SAS token.  Allowed values: false, true.
            this.Options = [this.Options, '--for-upload', varargin{:}];
        end

        function this = gallery_image_reference(this, varargin)
            % ID of the shared galley image version from which to create a disk.
            this.Options = [this.Options, '--gallery-image-reference', varargin{:}];
        end

        function this = gallery_image_reference_lun(this, varargin)
            % If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
            this.Options = [this.Options, '--gallery-image-reference-lun', varargin{:}];
        end

        function this = hyper_v_generation(this, varargin)
            % The hypervisor generation of the Virtual Machine. Applicable to OS disks only.  Allowed values: V1, V2.  Default: V1.
            this.Options = [this.Options, '--hyper-v-generation', varargin{:}];
        end

        function this = image_reference(this, varargin)
            % ID or URN (publisher:offer:sku:version) of the image from which to create a disk.
            this.Options = [this.Options, '--image-reference', varargin{:}];
        end

        function this = image_reference_lun(this, varargin)
            % If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
            this.Options = [this.Options, '--image-reference-lun', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`. If location is not specified and no default location specified, location will be automatically set as same as the resource group.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_shares(this, varargin)
            % The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
            this.Options = [this.Options, '--max-shares', varargin{:}];
        end

        function this = network_access_policy(this, varargin)
            % Policy for accessing the disk via network.  Allowed values: AllowAll, AllowPrivate, DenyAll.
            this.Options = [this.Options, '--network-access-policy', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = os_type(this, varargin)
            % The Operating System type of the Disk.  Allowed values: Linux, Windows.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = size_gb(this, varargin)
            % Size in GB. Max size: 4095 GB (certain preview disks can be larger).
            this.Options = [this.Options, '--size-gb', varargin{:}];
        end

        function this = sku(this, varargin)
            % Underlying storage SKU.  Allowed values: Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.  Default: Premium_LRS.
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

        function this = upload_size_bytes(this, varargin)
            % The size (in bytes) of the contents of the upload including the VHD footer. Min value: 20972032. Max value: 35183298347520.
            this.Options = [this.Options, '--upload-size-bytes', varargin{:}];
        end

        function this = zone(this, varargin)
            % Availability zone into which to provision the resource. Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--zone', varargin{:}];
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
            fprintf('%s\n', '    az disk create : Create a managed disk.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the managed disk.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --disk-access                  : Name or ID of the disk access resource for using private')
            fprintf('%s\n', '                                     endpoints on disks.')
            fprintf('%s\n', '    --disk-encryption-set          : Name or ID of disk encryption set that is used to encrypt the')
            fprintf('%s\n', '                                     disk.')
            fprintf('%s\n', '    --disk-iops-read-only          : The total number of IOPS that will be allowed across all VMs')
            fprintf('%s\n', '                                     mounting the shared disk as ReadOnly. One operation can')
            fprintf('%s\n', '                                     transfer between 4k and 256k bytes.')
            fprintf('%s\n', '    --disk-iops-read-write         : The number of IOPS allowed for this disk. Only settable for')
            fprintf('%s\n', '                                     UltraSSD disks. One operation can transfer between 4k and 256k')
            fprintf('%s\n', '                                     bytes.')
            fprintf('%s\n', '    --disk-mbps-read-only          : The total throughput (MBps) that will be allowed across all VMs')
            fprintf('%s\n', '                                     mounting the shared disk as ReadOnly. MBps means millions of')
            fprintf('%s\n', '                                     bytes per second - MB here uses the ISO notation, of powers of')
            fprintf('%s\n', '                                     10.')
            fprintf('%s\n', '    --disk-mbps-read-write         : The bandwidth allowed for this disk. Only settable for UltraSSD')
            fprintf('%s\n', '                                     disks. MBps means millions of bytes per second with ISO')
            fprintf('%s\n', '                                     notation of powers of 10.')
            fprintf('%s\n', '    --encryption-type              : Encryption type. EncryptionAtRestWithPlatformKey: Disk is')
            fprintf('%s\n', '                                     encrypted with XStore managed key at rest. It is the default')
            fprintf('%s\n', '                                     encryption type. EncryptionAtRestWithCustomerKey: Disk is')
            fprintf('%s\n', '                                     encrypted with Customer managed key at rest.')
            fprintf('%s\n', '    --for-upload                   : Create the disk for uploading blobs later on through storage')
            fprintf('%s\n', '                                     commands. Run "az disk grant-access --access-level Write" to')
            fprintf('%s\n', '                                     retrieve the disk''s SAS token.  Allowed values: false, true.')
            fprintf('%s\n', '    --gallery-image-reference      : ID of the shared galley image version from which to create a')
            fprintf('%s\n', '                                     disk.')
            fprintf('%s\n', '    --gallery-image-reference-lun  : If the disk is created from an image''s data disk, this is an')
            fprintf('%s\n', '                                     index that indicates which of the data disks in the image to')
            fprintf('%s\n', '                                     use. For OS disks, this field is null.')
            fprintf('%s\n', '    --hyper-v-generation           : The hypervisor generation of the Virtual Machine. Applicable to')
            fprintf('%s\n', '                                     OS disks only.  Allowed values: V1, V2.  Default: V1.')
            fprintf('%s\n', '    --image-reference              : ID or URN (publisher:offer:sku:version) of the image from which')
            fprintf('%s\n', '                                     to create a disk.')
            fprintf('%s\n', '    --image-reference-lun          : If the disk is created from an image''s data disk, this is an')
            fprintf('%s\n', '                                     index that indicates which of the data disks in the image to')
            fprintf('%s\n', '                                     use. For OS disks, this field is null.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`. If location is not specified and no')
            fprintf('%s\n', '                                     default location specified, location will be automatically set')
            fprintf('%s\n', '                                     as same as the resource group.')
            fprintf('%s\n', '    --max-shares                   : The maximum number of VMs that can attach to the disk at the')
            fprintf('%s\n', '                                     same time. Value greater than one indicates a disk that can be')
            fprintf('%s\n', '                                     mounted on multiple VMs at the same time.')
            fprintf('%s\n', '    --network-access-policy        : Policy for accessing the disk via network.  Allowed values:')
            fprintf('%s\n', '                                     AllowAll, AllowPrivate, DenyAll.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --os-type                      : The Operating System type of the Disk.  Allowed values: Linux,')
            fprintf('%s\n', '                                     Windows.')
            fprintf('%s\n', '    --size-gb -z                   : Size in GB. Max size: 4095 GB (certain preview disks can be')
            fprintf('%s\n', '                                     larger).')
            fprintf('%s\n', '    --sku                          : Underlying storage SKU.  Allowed values: Premium_LRS,')
            fprintf('%s\n', '                                     StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.  Default:')
            fprintf('%s\n', '                                     Premium_LRS.')
            fprintf('%s\n', '    --source                       : Source to create the disk/snapshot from, including unmanaged')
            fprintf('%s\n', '                                     blob uri, managed disk id or name, or snapshot id or name.')
            fprintf('%s\n', '    --source-storage-account-id    : Used when source blob is in a different subscription.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --upload-size-bytes            : The size (in bytes) of the contents of the upload including the')
            fprintf('%s\n', '                                     VHD footer. Min value: 20972032. Max value: 35183298347520.')
            fprintf('%s\n', '    --zone                         : Availability zone into which to provision the resource.')
            fprintf('%s\n', '                                     Allowed values: 1, 2, 3.')
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
            fprintf('%s\n', '    Create a managed disk by importing from a blob uri.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --source')
            fprintf('%s\n', '        https://vhd1234.blob.core.windows.net/vhds/osdisk1234.vhd')
            fprintf('%s\n', '    Create an empty managed disk.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --size-gb 10')
            fprintf('%s\n', '    Create a managed disk by copying an existing disk or snapshot.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk2 --source MyDisk')
            fprintf('%s\n', '    Create a disk in an availability zone in the region of "East US 2"')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --size-gb 10 --location eastus2 --zone 1')
            fprintf('%s\n', '    Create a disk from image.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --image-reference')
            fprintf('%s\n', '        Canonical:UbuntuServer:18.04-LTS:18.04.202002180')
            fprintf('%s\n', '    Create a disk from gallery image.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --gallery-image-reference $id')
            fprintf('%s\n', '    Create a disk with total number of IOPS and total throughput (MBps) limitation.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --size-gb 10 --sku UltraSSD_LRS --disk-iops-')
            fprintf('%s\n', '        read-only 200 --disk-mbps-read-only 30')
            fprintf('%s\n', '    Create a disk and specify maximum number of VMs that can attach to the disk at the same time.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --size-gb 256 --max-shares 2 -l centraluseuap')
            fprintf('%s\n', '    Create a disk and associate it with a disk access resource.')
            fprintf('%s\n', '        az disk create -g MyResourceGroup -n MyDisk --size-gb 10 --network-access-policy')
            fprintf('%s\n', '        AllowPrivate --disk-access MyDiskAccessID')
            fprintf('%s\n', 'For more specific examples, use: az find "az disk create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
