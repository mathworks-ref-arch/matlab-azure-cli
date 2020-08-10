classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az vm create : Create an Azure Virtual Machine.
            % For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machines/virtual-
            % machines-linux-quick-create-cli.
            this.BaseCmd = 'az vm create ';
        end
        function this = name(this, varargin)
            % Name of the virtual machine.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = availability_set(this, varargin)
            % Name or ID of an existing availability set to add the VM to. None by default.
            this.Options = [this.Options, '--availability-set', varargin{:}];
        end

        function this = boot_diagnostics_storage(this, varargin)
            % Pre-existing storage account name or its blob uri to capture boot diagnostics. Its sku should be one of Standard_GRS, Standard_LRS and Standard_RAGRS.
            this.Options = [this.Options, '--boot-diagnostics-storage', varargin{:}];
        end

        function this = computer_name(this, varargin)
            % The host OS name of the virtual machine. Defaults to the name of the VM.
            this.Options = [this.Options, '--computer-name', varargin{:}];
        end

        function this = custom_data(this, varargin)
            % Custom init script file or text (cloud-init, cloud-config, etc..).
            this.Options = [this.Options, '--custom-data', varargin{:}];
        end

        function this = enable_agent(this, varargin)
            % Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified, default behavior is to set it to true. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-agent', varargin{:}];
        end

        function this = eviction_policy(this, varargin)
            % The eviction policy for the Spot priority virtual machine. Default eviction policy is Deallocate for a Spot priority virtual machine.  Allowed values: Deallocate, Delete.
            this.Options = [this.Options, '--eviction-policy', varargin{:}];
        end

        function this = image(this, varargin)
            % The name of the operating system image as a URN alias, URN, custom image name or ID, custom image version ID, or VHD blob URI. This parameter is required unless using `--attach-os- disk.` Valid URN format: "Publisher:Offer:Sku:Version".  Values from: az vm image list, az vm image show.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = license_type(this, varargin)
            % Specifies that the Windows image or disk was licensed on- premises. To enable Azure Hybrid Benefit for Windows Server, use 'Windows_Server'. To enable Multitenant Hosting Rights for Windows 10, use 'Windows_Client'. For more information see the Azure Windows VM online docs.  Allowed values: None, Windows_Client, Windows_Server.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location in which to create VM and related resources. If default location is not configured, will default to the resource group's location.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_price(this, varargin)
            % The maximum price (in US Dollars) you are willing to pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS should not be evicted for price reasons. Argument '--max-price' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--max-price', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = ppg(this, varargin)
            % The name or ID of the proximity placement group the VM should be associated with.
            this.Options = [this.Options, '--ppg', varargin{:}];
        end

        function this = priority(this, varargin)
            % Priority. Use 'Spot' to run short-lived workloads in a cost- effective way. 'Low' enum will be deprecated in the future. Please use 'Spot' to deploy Azure spot VM and/or VMSS. Default to Regular.  Allowed values: Low, Regular, Spot.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = secrets(this, varargin)
            % One or many Key Vault secrets as JSON strings or files via `@{path}` containing `[{ "sourceVault": { "id": "value" }, "vaultCertificates": [{ "certificateUrl": "value", "certificateStore": "cert store name (only on windows)"}] }]`.
            this.Options = [this.Options, '--secrets', varargin{:}];
        end

        function this = size_(this, varargin)
            % The VM size to be created. See https://azure.microsoft.com/pricing/details/virtual-machines/ for size info.  Default: Standard_DS1_v2.  Values from: az vm list-sizes.
            this.Options = [this.Options, '--size', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = validate(this, varargin)
            % Generate and validate the ARM template without creating any resources.
            this.Options = [this.Options, '--validate', varargin{:}];
        end

        function this = vmss(this, varargin)
            % Name or ID of an existing virtual machine scale set that the virtual machine should be assigned to. None by default.
            this.Options = [this.Options, '--vmss', varargin{:}];
        end

        function this = zone(this, varargin)
            % Availability zone into which to provision the resource. Allowed values: 1, 2, 3. Authentication Arguments
            this.Options = [this.Options, '--zone', varargin{:}];
        end

        function this = admin_password(this, varargin)
            % Password for the VM if authentication type is 'Password'.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_username(this, varargin)
            % Username for the VM. Default value is current username of OS. If the default value is system reserved, then default value will be set to azureuser. Please refer to https://docs.microsoft.com/en- us/rest/api/compute/virtualmachines/createorupdate#osprofile to get a full list of reserved values.
            this.Options = [this.Options, '--admin-username', varargin{:}];
        end

        function this = authentication_type(this, varargin)
            % Type of authentication to use with the VM. Defaults to password for Windows and SSH public key for Linux. "all" enables both ssh and password authentication.  Allowed values: all, password, ssh.
            this.Options = [this.Options, '--authentication-type', varargin{:}];
        end

        function this = generate_ssh_keys(this, varargin)
            % Generate SSH public and private key files if missing. The keys will be stored in the ~/.ssh directory.
            this.Options = [this.Options, '--generate-ssh-keys', varargin{:}];
        end

        function this = ssh_dest_key_path(this, varargin)
            % Destination file path on the VM for the SSH key. If the file already exists, the specified key(s) are appended to the file. Destination path for SSH public keys is currently limited to its default value "/home/username/.ssh/authorized_keys" due to a known issue in Linux provisioning agent.
            this.Options = [this.Options, '--ssh-dest-key-path', varargin{:}];
        end

        function this = ssh_key_values(this, varargin)
            % Space-separated list of SSH public keys or public key file paths. Dedicated Host Arguments
            this.Options = [this.Options, '--ssh-key-values', varargin{:}];
        end

        function this = host(this, varargin)
            % Name or ID of the dedicated host this VM will reside in. If a name is specified, a host group must be specified via `--host-group`. Argument '--host' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--host', varargin{:}];
        end

        function this = host_group(this, varargin)
            % Name of the dedicated host group containing the dedicated host this VM will reside in. Argument '--host-group' is in preview. It may be changed/removed in a future release. Managed Service Identity Arguments
            this.Options = [this.Options, '--host-group', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Accept system or user assigned identities separated by spaces. Use '[system]' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id the system assigned identity will have. Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope that the system assigned identity can access. Marketplace Image Plan Arguments
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = plan_name(this, varargin)
            % Plan name.
            this.Options = [this.Options, '--plan-name', varargin{:}];
        end

        function this = plan_product(this, varargin)
            % Plan product.
            this.Options = [this.Options, '--plan-product', varargin{:}];
        end

        function this = plan_promotion_code(this, varargin)
            % Plan promotion code.
            this.Options = [this.Options, '--plan-promotion-code', varargin{:}];
        end

        function this = plan_publisher(this, varargin)
            % Plan publisher. Monitor Arguments
            this.Options = [this.Options, '--plan-publisher', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of Log Analytics Workspace. If you specify the workspace through its name, the workspace should be in the same resource group with the vm, otherwise a new workspace will be created. Argument '--workspace' is in preview. It may be changed/removed in a future release. Network Arguments
            this.Options = [this.Options, '--workspace', varargin{:}];
        end

        function this = accelerated_networking(this, varargin)
            % Enable accelerated networking. Unless specified, CLI will enable it based on machine image and size.  Allowed values: false, true.
            this.Options = [this.Options, '--accelerated-networking', varargin{:}];
        end

        function this = asgs(this, varargin)
            % Space-separated list of existing application security groups to associate with the VM.
            this.Options = [this.Options, '--asgs', varargin{:}];
        end

        function this = nics(this, varargin)
            % Names or IDs of existing NICs to attach to the VM. The first NIC will be designated as primary. If omitted, a new NIC will be created. If an existing NIC is specified, do not specify subnet, VNet, public IP or NSG.
            this.Options = [this.Options, '--nics', varargin{:}];
        end

        function this = nsg(this, varargin)
            % The name to use when creating a new Network Security Group (default) or referencing an existing one. Can also reference an existing NSG by ID or specify "" for none ('""' in Azure CLI using PowerShell or --% operator).
            this.Options = [this.Options, '--nsg', varargin{:}];
        end

        function this = nsg_rule(this, varargin)
            % NSG rule to create when creating a new NSG. Defaults to open ports for allowing RDP on Windows and allowing SSH on Linux. NONE represents no NSG rule.  Allowed values: NONE, RDP, SSH.
            this.Options = [this.Options, '--nsg-rule', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address (e.g. 10.0.0.5).
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name of the public IP address when creating one (default) or referencing an existing one. Can also reference an existing public IP by ID or specify "" for None ('""' in Azure CLI using PowerShell or --% operator).
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = public_ip_address_allocation(this, varargin)
            % Allowed values: dynamic, static.
            this.Options = [this.Options, '--public-ip-address-allocation', varargin{:}];
        end

        function this = public_ip_address_dns_name(this, varargin)
            % Globally unique DNS name for a newly created public IP.
            this.Options = [this.Options, '--public-ip-address-dns-name', varargin{:}];
        end

        function this = public_ip_sku(this, varargin)
            % Public IP SKU. It is set to Basic by default.  Allowed values: Basic, Standard.
            this.Options = [this.Options, '--public-ip-sku', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name of the subnet when creating a new VNet or referencing an existing one. Can also reference an existing subnet by ID. If both vnet-name and subnet are omitted, an appropriate VNet and subnet will be selected automatically, or a new one will be created.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = subnet_address_prefix(this, varargin)
            % The subnet IP address prefix to use when creating a new VNet in CIDR format.  Default: 10.0.0.0/24.
            this.Options = [this.Options, '--subnet-address-prefix', varargin{:}];
        end

        function this = vnet_address_prefix(this, varargin)
            % The IP address prefix to use when creating a new VNet in CIDR format.  Default: 10.0.0.0/16.
            this.Options = [this.Options, '--vnet-address-prefix', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the virtual network when creating a new one or referencing an existing one. Storage Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = attach_data_disks(this, varargin)
            % Attach existing data disks to the VM. Can use the name or ID of a managed disk or the URI to an unmanaged disk VHD.
            this.Options = [this.Options, '--attach-data-disks', varargin{:}];
        end

        function this = attach_os_disk(this, varargin)
            % Attach an existing OS disk to the VM. Can use the name or ID of a managed disk or the URI to an unmanaged disk VHD.
            this.Options = [this.Options, '--attach-os-disk', varargin{:}];
        end

        function this = data_disk_caching(this, varargin)
            % Storage caching type for data disk(s), including 'None', 'ReadOnly', 'ReadWrite', etc. Use a singular value to apply on all disks, or use `<lun>=<vaule1> <lun>=<value2>` to configure individual disk.
            this.Options = [this.Options, '--data-disk-caching', varargin{:}];
        end

        function this = data_disk_encryption_sets(this, varargin)
            % Names or IDs (space delimited) of disk encryption sets for data disks.
            this.Options = [this.Options, '--data-disk-encryption-sets', varargin{:}];
        end

        function this = data_disk_sizes_gb(this, varargin)
            % Space-separated empty managed data disk sizes in GB to create.
            this.Options = [this.Options, '--data-disk-sizes-gb', varargin{:}];
        end

        function this = encryption_at_host(this, varargin)
            % Enable Host Encryption for the VM or VMSS. This will enable the encryption for all the disks including Resource/Temp disk at host itself.  Allowed values: false, true.
            this.Options = [this.Options, '--encryption-at-host', varargin{:}];
        end

        function this = ephemeral_os_disk(this, varargin)
            % Allows you to create an OS disk directly on the host node, providing local disk performance and faster VM/VMSS reimage time.  Allowed values: false, true. Argument '--ephemeral-os-disk' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--ephemeral-os-disk', varargin{:}];
        end

        function this = os_disk_caching(this, varargin)
            % Storage caching type for the VM OS disk. Default: ReadWrite. Allowed values: None, ReadOnly, ReadWrite.
            this.Options = [this.Options, '--os-disk-caching', varargin{:}];
        end

        function this = os_disk_encryption_set(this, varargin)
            % Name or ID of disk encryption set for OS disk.
            this.Options = [this.Options, '--os-disk-encryption-set', varargin{:}];
        end

        function this = os_disk_name(this, varargin)
            % The name of the new VM OS disk.
            this.Options = [this.Options, '--os-disk-name', varargin{:}];
        end

        function this = os_disk_size_gb(this, varargin)
            % OS disk size in GB to create.
            this.Options = [this.Options, '--os-disk-size-gb', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Type of OS installed on a custom VHD. Do not use when specifying an URN or URN alias.  Allowed values: linux, windows.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = specialized(this, varargin)
            % Indicate whether the source image is specialized.  Allowed values: false, true.
            this.Options = [this.Options, '--specialized', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Only applicable when used with `--use-unmanaged-disk`. The name to use when creating a new storage account or referencing an existing one. If omitted, an appropriate storage account in the same resource group and location will be used, or a new one will be created.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = storage_container_name(this, varargin)
            % Only applicable when used with `--use-unmanaged-disk`. Name of the storage container for the VM OS disk. Default: vhds.
            this.Options = [this.Options, '--storage-container-name', varargin{:}];
        end

        function this = storage_sku(this, varargin)
            % The SKU of the storage account with which to persist VM. Use a singular sku that would be applied across all disks, or specify individual disks. Usage: [--storage-sku SKU | --storage-sku ID=SKU ID=SKU ID=SKU...], where each ID is "os" or a 0-indexed lun. Allowed values: Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS.
            this.Options = [this.Options, '--storage-sku', varargin{:}];
        end

        function this = ultra_ssd_enabled(this, varargin)
            % Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account.  Allowed values: false, true.
            this.Options = [this.Options, '--ultra-ssd-enabled', varargin{:}];
        end

        function this = use_unmanaged_disk(this, varargin)
            % Do not use managed disk to persist VM.
            this.Options = [this.Options, '--use-unmanaged-disk', varargin{:}];
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
            fprintf('%s\n', '    az vm create : Create an Azure Virtual Machine.')
            fprintf('%s\n', '        For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machines/virtual-')
            fprintf('%s\n', '        machines-linux-quick-create-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the virtual machine.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --availability-set             : Name or ID of an existing availability set to add the VM to.')
            fprintf('%s\n', '                                     None by default.')
            fprintf('%s\n', '    --boot-diagnostics-storage     : Pre-existing storage account name or its blob uri to capture')
            fprintf('%s\n', '                                     boot diagnostics. Its sku should be one of Standard_GRS,')
            fprintf('%s\n', '                                     Standard_LRS and Standard_RAGRS.')
            fprintf('%s\n', '    --computer-name                : The host OS name of the virtual machine. Defaults to the name')
            fprintf('%s\n', '                                     of the VM.')
            fprintf('%s\n', '    --custom-data                  : Custom init script file or text (cloud-init, cloud-config,')
            fprintf('%s\n', '                                     etc..).')
            fprintf('%s\n', '    --enable-agent                 : Indicates whether virtual machine agent should be provisioned')
            fprintf('%s\n', '                                     on the virtual machine. When this property is not specified,')
            fprintf('%s\n', '                                     default behavior is to set it to true. This will ensure that VM')
            fprintf('%s\n', '                                     Agent is installed on the VM so that extensions can be added to')
            fprintf('%s\n', '                                     the VM later.  Allowed values: false, true.')
            fprintf('%s\n', '    --eviction-policy              : The eviction policy for the Spot priority virtual machine.')
            fprintf('%s\n', '                                     Default eviction policy is Deallocate for a Spot priority')
            fprintf('%s\n', '                                     virtual machine.  Allowed values: Deallocate, Delete.')
            fprintf('%s\n', '    --image                        : The name of the operating system image as a URN alias, URN,')
            fprintf('%s\n', '                                     custom image name or ID, custom image version ID, or VHD blob')
            fprintf('%s\n', '                                     URI. This parameter is required unless using `--attach-os-')
            fprintf('%s\n', '                                     disk.` Valid URN format: "Publisher:Offer:Sku:Version".  Values')
            fprintf('%s\n', '                                     from: az vm image list, az vm image show.')
            fprintf('%s\n', '    --license-type                 : Specifies that the Windows image or disk was licensed on-')
            fprintf('%s\n', '                                     premises. To enable Azure Hybrid Benefit for Windows Server,')
            fprintf('%s\n', '                                     use ''Windows_Server''. To enable Multitenant Hosting Rights for')
            fprintf('%s\n', '                                     Windows 10, use ''Windows_Client''. For more information see the')
            fprintf('%s\n', '                                     Azure Windows VM online docs.  Allowed values: None,')
            fprintf('%s\n', '                                     Windows_Client, Windows_Server.')
            fprintf('%s\n', '    --location -l                  : Location in which to create VM and related resources. If')
            fprintf('%s\n', '                                     default location is not configured, will default to the')
            fprintf('%s\n', '                                     resource group''s location.')
            fprintf('%s\n', '    --max-price          [Preview] : The maximum price (in US Dollars) you are willing to')
            fprintf('%s\n', '                                     pay for a Spot VM/VMSS. -1 indicates that the Spot VM/VMSS')
            fprintf('%s\n', '                                     should not be evicted for price reasons.')
            fprintf('%s\n', '        Argument ''--max-price'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --ppg                          : The name or ID of the proximity placement group the VM should')
            fprintf('%s\n', '                                     be associated with.')
            fprintf('%s\n', '    --priority                     : Priority. Use ''Spot'' to run short-lived workloads in a cost-')
            fprintf('%s\n', '                                     effective way. ''Low'' enum will be deprecated in the future.')
            fprintf('%s\n', '                                     Please use ''Spot'' to deploy Azure spot VM and/or VMSS. Default')
            fprintf('%s\n', '                                     to Regular.  Allowed values: Low, Regular, Spot.')
            fprintf('%s\n', '    --secrets                      : One or many Key Vault secrets as JSON strings or files via')
            fprintf('%s\n', '                                     `@{path}` containing `[{ "sourceVault": { "id": "value" },')
            fprintf('%s\n', '                                     "vaultCertificates": [{ "certificateUrl": "value",')
            fprintf('%s\n', '                                     "certificateStore": "cert store name (only on windows)"}] }]`.')
            fprintf('%s\n', '    --size                         : The VM size to be created. See')
            fprintf('%s\n', '                                     https://azure.microsoft.com/pricing/details/virtual-machines/')
            fprintf('%s\n', '                                     for size info.  Default: Standard_DS1_v2.  Values from: az vm')
            fprintf('%s\n', '                                     list-sizes.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --validate                     : Generate and validate the ARM template without creating any')
            fprintf('%s\n', '                                     resources.')
            fprintf('%s\n', '    --vmss                         : Name or ID of an existing virtual machine scale set that the')
            fprintf('%s\n', '                                     virtual machine should be assigned to. None by default.')
            fprintf('%s\n', '    --zone -z                      : Availability zone into which to provision the resource.')
            fprintf('%s\n', '                                     Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Authentication Arguments')
            fprintf('%s\n', '    --admin-password               : Password for the VM if authentication type is ''Password''.')
            fprintf('%s\n', '    --admin-username               : Username for the VM. Default value is current username of OS.')
            fprintf('%s\n', '                                     If the default value is system reserved, then default value')
            fprintf('%s\n', '                                     will be set to azureuser. Please refer to')
            fprintf('%s\n', '                                     https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                     us/rest/api/compute/virtualmachines/createorupdate#osprofile to')
            fprintf('%s\n', '                                     get a full list of reserved values.')
            fprintf('%s\n', '    --authentication-type          : Type of authentication to use with the VM. Defaults to password')
            fprintf('%s\n', '                                     for Windows and SSH public key for Linux. "all" enables both')
            fprintf('%s\n', '                                     ssh and password authentication.  Allowed values: all,')
            fprintf('%s\n', '                                     password, ssh.')
            fprintf('%s\n', '    --generate-ssh-keys            : Generate SSH public and private key files if missing. The keys')
            fprintf('%s\n', '                                     will be stored in the ~/.ssh directory.')
            fprintf('%s\n', '    --ssh-dest-key-path            : Destination file path on the VM for the SSH key. If the file')
            fprintf('%s\n', '                                     already exists, the specified key(s) are appended to the file.')
            fprintf('%s\n', '                                     Destination path for SSH public keys is currently limited to')
            fprintf('%s\n', '                                     its default value "/home/username/.ssh/authorized_keys" due to')
            fprintf('%s\n', '                                     a known issue in Linux provisioning agent.')
            fprintf('%s\n', '    --ssh-key-values               : Space-separated list of SSH public keys or public key file')
            fprintf('%s\n', '                                     paths.')
            fprintf('%s\n', 'Dedicated Host Arguments')
            fprintf('%s\n', '    --host               [Preview] : Name or ID of the dedicated host this VM will reside')
            fprintf('%s\n', '                                     in. If a name is specified, a host group must be specified via')
            fprintf('%s\n', '                                     `--host-group`.')
            fprintf('%s\n', '        Argument ''--host'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', '    --host-group         [Preview] : Name of the dedicated host group containing the')
            fprintf('%s\n', '                                     dedicated host this VM will reside in.')
            fprintf('%s\n', '        Argument ''--host-group'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Managed Service Identity Arguments')
            fprintf('%s\n', '    --assign-identity              : Accept system or user assigned identities separated by spaces.')
            fprintf('%s\n', '                                     Use ''[system]'' to refer system assigned identity, or a resource')
            fprintf('%s\n', '                                     id to refer user assigned identity. Check out help for more')
            fprintf('%s\n', '                                     examples.')
            fprintf('%s\n', '    --role                         : Role name or id the system assigned identity will have.')
            fprintf('%s\n', '                                     Default: Contributor.')
            fprintf('%s\n', '    --scope                        : Scope that the system assigned identity can access.')
            fprintf('%s\n', 'Marketplace Image Plan Arguments')
            fprintf('%s\n', '    --plan-name                    : Plan name.')
            fprintf('%s\n', '    --plan-product                 : Plan product.')
            fprintf('%s\n', '    --plan-promotion-code          : Plan promotion code.')
            fprintf('%s\n', '    --plan-publisher               : Plan publisher.')
            fprintf('%s\n', 'Monitor Arguments')
            fprintf('%s\n', '    --workspace          [Preview] : Name or ID of Log Analytics Workspace. If you specify')
            fprintf('%s\n', '                                     the workspace through its name, the workspace should be in the')
            fprintf('%s\n', '                                     same resource group with the vm, otherwise a new workspace will')
            fprintf('%s\n', '                                     be created.')
            fprintf('%s\n', '        Argument ''--workspace'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --accelerated-networking       : Enable accelerated networking. Unless specified, CLI will')
            fprintf('%s\n', '                                     enable it based on machine image and size.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --asgs                         : Space-separated list of existing application security groups to')
            fprintf('%s\n', '                                     associate with the VM.')
            fprintf('%s\n', '    --nics                         : Names or IDs of existing NICs to attach to the VM. The first')
            fprintf('%s\n', '                                     NIC will be designated as primary. If omitted, a new NIC will')
            fprintf('%s\n', '                                     be created. If an existing NIC is specified, do not specify')
            fprintf('%s\n', '                                     subnet, VNet, public IP or NSG.')
            fprintf('%s\n', '    --nsg                          : The name to use when creating a new Network Security Group')
            fprintf('%s\n', '                                     (default) or referencing an existing one. Can also reference an')
            fprintf('%s\n', '                                     existing NSG by ID or specify "" for none (''""'' in Azure CLI')
            fprintf('%s\n', '                                     using PowerShell or --% operator).')
            fprintf('%s\n', '    --nsg-rule                     : NSG rule to create when creating a new NSG. Defaults to open')
            fprintf('%s\n', '                                     ports for allowing RDP on Windows and allowing SSH on Linux.')
            fprintf('%s\n', '                                     NONE represents no NSG rule.  Allowed values: NONE, RDP, SSH.')
            fprintf('%s\n', '    --private-ip-address           : Static private IP address (e.g. 10.0.0.5).')
            fprintf('%s\n', '    --public-ip-address            : Name of the public IP address when creating one (default) or')
            fprintf('%s\n', '                                     referencing an existing one. Can also reference an existing')
            fprintf('%s\n', '                                     public IP by ID or specify "" for None (''""'' in Azure CLI using')
            fprintf('%s\n', '                                     PowerShell or --% operator).')
            fprintf('%s\n', '    --public-ip-address-allocation : Allowed values: dynamic, static.')
            fprintf('%s\n', '    --public-ip-address-dns-name   : Globally unique DNS name for a newly created public IP.')
            fprintf('%s\n', '    --public-ip-sku                : Public IP SKU. It is set to Basic by default.  Allowed values:')
            fprintf('%s\n', '                                     Basic, Standard.')
            fprintf('%s\n', '    --subnet                       : The name of the subnet when creating a new VNet or referencing')
            fprintf('%s\n', '                                     an existing one. Can also reference an existing subnet by ID.')
            fprintf('%s\n', '                                     If both vnet-name and subnet are omitted, an appropriate VNet')
            fprintf('%s\n', '                                     and subnet will be selected automatically, or a new one will be')
            fprintf('%s\n', '                                     created.')
            fprintf('%s\n', '    --subnet-address-prefix        : The subnet IP address prefix to use when creating a new VNet in')
            fprintf('%s\n', '                                     CIDR format.  Default: 10.0.0.0/24.')
            fprintf('%s\n', '    --vnet-address-prefix          : The IP address prefix to use when creating a new VNet in CIDR')
            fprintf('%s\n', '                                     format.  Default: 10.0.0.0/16.')
            fprintf('%s\n', '    --vnet-name                    : Name of the virtual network when creating a new one or')
            fprintf('%s\n', '                                     referencing an existing one.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --attach-data-disks            : Attach existing data disks to the VM. Can use the name or ID of')
            fprintf('%s\n', '                                     a managed disk or the URI to an unmanaged disk VHD.')
            fprintf('%s\n', '    --attach-os-disk               : Attach an existing OS disk to the VM. Can use the name or ID of')
            fprintf('%s\n', '                                     a managed disk or the URI to an unmanaged disk VHD.')
            fprintf('%s\n', '    --data-disk-caching            : Storage caching type for data disk(s), including ''None'',')
            fprintf('%s\n', '                                     ''ReadOnly'', ''ReadWrite'', etc. Use a singular value to apply on')
            fprintf('%s\n', '                                     all disks, or use `<lun>=<vaule1> <lun>=<value2>` to configure')
            fprintf('%s\n', '                                     individual disk.')
            fprintf('%s\n', '    --data-disk-encryption-sets    : Names or IDs (space delimited) of disk encryption sets for data')
            fprintf('%s\n', '                                     disks.')
            fprintf('%s\n', '    --data-disk-sizes-gb           : Space-separated empty managed data disk sizes in GB to create.')
            fprintf('%s\n', '    --encryption-at-host           : Enable Host Encryption for the VM or VMSS. This will enable the')
            fprintf('%s\n', '                                     encryption for all the disks including Resource/Temp disk at')
            fprintf('%s\n', '                                     host itself.  Allowed values: false, true.')
            fprintf('%s\n', '    --ephemeral-os-disk  [Preview] : Allows you to create an OS disk directly on the host')
            fprintf('%s\n', '                                     node, providing local disk performance and faster VM/VMSS')
            fprintf('%s\n', '                                     reimage time.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--ephemeral-os-disk'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --os-disk-caching              : Storage caching type for the VM OS disk. Default: ReadWrite.')
            fprintf('%s\n', '                                     Allowed values: None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --os-disk-encryption-set       : Name or ID of disk encryption set for OS disk.')
            fprintf('%s\n', '    --os-disk-name                 : The name of the new VM OS disk.')
            fprintf('%s\n', '    --os-disk-size-gb              : OS disk size in GB to create.')
            fprintf('%s\n', '    --os-type                      : Type of OS installed on a custom VHD. Do not use when')
            fprintf('%s\n', '                                     specifying an URN or URN alias.  Allowed values: linux,')
            fprintf('%s\n', '                                     windows.')
            fprintf('%s\n', '    --specialized                  : Indicate whether the source image is specialized.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --storage-account              : Only applicable when used with `--use-unmanaged-disk`. The name')
            fprintf('%s\n', '                                     to use when creating a new storage account or referencing an')
            fprintf('%s\n', '                                     existing one. If omitted, an appropriate storage account in the')
            fprintf('%s\n', '                                     same resource group and location will be used, or a new one')
            fprintf('%s\n', '                                     will be created.')
            fprintf('%s\n', '    --storage-container-name       : Only applicable when used with `--use-unmanaged-disk`. Name of')
            fprintf('%s\n', '                                     the storage container for the VM OS disk. Default: vhds.')
            fprintf('%s\n', '    --storage-sku                  : The SKU of the storage account with which to persist VM. Use a')
            fprintf('%s\n', '                                     singular sku that would be applied across all disks, or specify')
            fprintf('%s\n', '                                     individual disks. Usage: [--storage-sku SKU | --storage-sku')
            fprintf('%s\n', '                                     ID=SKU ID=SKU ID=SKU...], where each ID is "os" or a 0-indexed')
            fprintf('%s\n', '                                     lun. Allowed values: Standard_LRS, Premium_LRS,')
            fprintf('%s\n', '                                     StandardSSD_LRS, UltraSSD_LRS.')
            fprintf('%s\n', '    --ultra-ssd-enabled            : Enables or disables the capability to have 1 or more managed')
            fprintf('%s\n', '                                     data disks with UltraSSD_LRS storage account.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --use-unmanaged-disk           : Do not use managed disk to persist VM.')
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
            fprintf('%s\n', '    Create a default Ubuntu VM with automatic SSH authentication.')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --image UbuntuLTS')
            fprintf('%s\n', '    Create a default RedHat VM with automatic SSH authentication using an image URN.')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --image RedHat:RHEL:7-RAW:7.4.2018010506')
            fprintf('%s\n', '    Create a default Windows Server VM with a private IP address.')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --public-ip-address "" --image Win2012R2Datacenter')
            fprintf('%s\n', '    Create a VM from a custom managed image.')
            fprintf('%s\n', '        az vm create -g MyResourceGroup -n MyVm --image MyImage')
            fprintf('%s\n', '    Create a VM from a specialized image version.')
            fprintf('%s\n', '        az vm create -g MyResourceGroup -n MyVm --image $id --specialized')
            fprintf('%s\n', '    Create a VM by attaching to a managed operating system disk.')
            fprintf('%s\n', '        az vm create -g MyResourceGroup -n MyVm --attach-os-disk MyOsDisk --os-type linux')
            fprintf('%s\n', '    Create an Ubuntu Linux VM using a cloud-init script for configuration. See:')
            fprintf('%s\n', '    https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-cloud-init.')
            fprintf('%s\n', '        az vm create -g MyResourceGroup -n MyVm --image debian --custom-data MyCloudInitScript.yml')
            fprintf('%s\n', '    Create a Debian VM with SSH key authentication and a public DNS entry, located on an existing')
            fprintf('%s\n', '    virtual network and availability set.')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --image debian --vnet-name MyVnet --subnet subnet1 \')
            fprintf('%s\n', '            --availability-set MyAvailabilitySet --public-ip-address-dns-name MyUniqueDnsName \')
            fprintf('%s\n', '            --ssh-key-values @key-file')
            fprintf('%s\n', '    Create a simple Ubuntu Linux VM with a public IP address, DNS entry, two data disks (10GB and')
            fprintf('%s\n', '    20GB), and then generate ssh key pairs.')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --public-ip-address-dns-name MyUniqueDnsName \')
            fprintf('%s\n', '            --image ubuntults --data-disk-sizes-gb 10 20 --size Standard_DS2_v2 \')
            fprintf('%s\n', '            --generate-ssh-keys')
            fprintf('%s\n', '    Create a Debian VM using Key Vault secrets.')
            fprintf('%s\n', '        az keyvault certificate create --vault-name vaultname -n cert1 \')
            fprintf('%s\n', '          -p "$(az keyvault certificate get-default-policy)"')
            fprintf('%s\n', '        secrets=$(az keyvault secret list-versions --vault-name vaultname \')
            fprintf('%s\n', '          -n cert1 --query "[?attributes.enabled].id" -o tsv)')
            fprintf('%s\n', '        vm_secrets=$(az vm secret format -s "$secrets")')
            fprintf('%s\n', '        az vm create -g group-name -n vm-name --admin-username deploy  \')
            fprintf('%s\n', '          --image debian --secrets "$vm_secrets"')
            fprintf('%s\n', '    Create a CentOS VM with a system assigned identity. The VM will have a ''Contributor'' role with')
            fprintf('%s\n', '    access to a storage account.')
            fprintf('%s\n', '        az vm create -n MyVm -g rg1 --image centos --assign-identity --scope')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-')
            fprintf('%s\n', '        aec3-cb9272f09590/MyResourceGroup/myRG/providers/Microsoft.Storage/storageAccounts/storage1')
            fprintf('%s\n', '    Create a debian VM with a user assigned identity.')
            fprintf('%s\n', '        az vm create -n MyVm -g rg1 --image debian --assign-identity')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-aec3-cb9272f09590/resourcegroups/myRG/providers/Microsoft.')
            fprintf('%s\n', '        ManagedIdentity/userAssignedIdentities/myID')
            fprintf('%s\n', '    Create a debian VM with both system and user assigned identity.')
            fprintf('%s\n', '        az vm create -n MyVm -g rg1 --image debian --assign-identity  [system]')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-aec3-cb9272f09590/resourcegroups/myRG/providers/Microsoft.')
            fprintf('%s\n', '        ManagedIdentity/userAssignedIdentities/myID')
            fprintf('%s\n', '    Create a VM in an availability zone in the current resource group''s region')
            fprintf('%s\n', '        az vm create -n MyVm -g MyResourceGroup --image Centos --zone 1')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
