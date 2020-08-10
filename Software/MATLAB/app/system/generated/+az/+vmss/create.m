classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az vmss create : Create an Azure Virtual Machine Scale Set.
            % For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machine-scale-
            % sets/virtual-machine-scale-sets-linux-create-cli.
            this.BaseCmd = 'az vmss create ';
        end
        function this = name(this, varargin)
            % Name of the virtual machine scale set.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = automatic_repairs_grace_period(this, varargin)
            % The amount of time (in minutes, between 30 and 90) for which automatic repairs are suspended due to a state change on VM.
            this.Options = [this.Options, '--automatic-repairs-grace-period', varargin{:}];
        end

        function this = computer_name_prefix(this, varargin)
            % Computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 15 characters long.
            this.Options = [this.Options, '--computer-name-prefix', varargin{:}];
        end

        function this = custom_data(this, varargin)
            % Custom init script file or text (cloud-init, cloud-config, etc..).
            this.Options = [this.Options, '--custom-data', varargin{:}];
        end

        function this = disable_overprovision(this, varargin)
            % Overprovision option (see https://azure.microsoft.com/documentation/articles/virtual -machine-scale-sets-overview/ for details).
            this.Options = [this.Options, '--disable-overprovision', varargin{:}];
        end

        function this = eviction_policy(this, varargin)
            % The eviction policy for virtual machines in a Spot priority scale set. Default eviction policy is Deallocate for a Spot priority scale set.  Allowed values: Deallocate, Delete.
            this.Options = [this.Options, '--eviction-policy', varargin{:}];
        end

        function this = health_probe(this, varargin)
            % Probe name from the existing load balancer, mainly used for rolling upgrade or automatic repairs.
            this.Options = [this.Options, '--health-probe', varargin{:}];
        end

        function this = host_group(this, varargin)
            % Name or ID of dedicated host group that the virtual machine scale set resides in.
            this.Options = [this.Options, '--host-group', varargin{:}];
        end

        function this = image(this, varargin)
            % The name of the operating system image as a URN alias, URN, custom image name or ID, or VHD blob URI. Valid URN format: "Publisher:Offer:Sku:Version".  Values from: az vm image list, az vm image show.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = instance_count(this, varargin)
            % Number of VMs in the scale set.  Default: 2.
            this.Options = [this.Options, '--instance-count', varargin{:}];
        end

        function this = license_type(this, varargin)
            % Specifies that the Windows image or disk was licensed on- premises. To enable Azure Hybrid Benefit for Windows Server, use 'Windows_Server'. To enable Multitenant Hosting Rights for Windows 10, use 'Windows_Client'. For more information see the Azure Windows VM online docs. Allowed values: None, Windows_Client, Windows_Server.
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

        function this = orchestration_mode(this, varargin)
            % Choose how virtual machines are managed by the scale set. In VM mode, you manually create and add a virtual machine of any configuration to the scale set. In ScaleSetVM mode, you define a virtual machine model and Azure will generate identical instances based on that model.  Allowed values: ScaleSetVM, VM.  Default: ScaleSetVM. Argument '--orchestration-mode' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--orchestration-mode', varargin{:}];
        end

        function this = platform_fault_domain_count(this, varargin)
            % Fault Domain count for each placement group in the availability zone.
            this.Options = [this.Options, '--platform-fault-domain-count', varargin{:}];
        end

        function this = ppg(this, varargin)
            % The name or ID of the proximity placement group the VMSS should be associated with.
            this.Options = [this.Options, '--ppg', varargin{:}];
        end

        function this = priority(this, varargin)
            % Priority. Use 'Spot' to run short-lived workloads in a cost-effective way. 'Low' enum will be deprecated in the future. Please use 'Spot' to deploy Azure spot VM and/or VMSS. Default to Regular.  Allowed values: Low, Regular, Spot.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = scale_in_policy(this, varargin)
            % Specify the scale-in policy (space delimited) that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled-in.  Allowed values: Default, NewestVM, OldestVM.
            this.Options = [this.Options, '--scale-in-policy', varargin{:}];
        end

        function this = secrets(this, varargin)
            % One or many Key Vault secrets as JSON strings or files via `@{path}` containing `[{ "sourceVault": { "id": "value" }, "vaultCertificates": [{ "certificateUrl": "value", "certificateStore": "cert store name (only on windows)"}] }]`.
            this.Options = [this.Options, '--secrets', varargin{:}];
        end

        function this = single_placement_group(this, varargin)
            % Limit the scale set to a single placement group. See https://docs.microsoft.com/azure/virtual-machine-scale- sets/virtual-machine-scale-sets-placement-groups for details.  Allowed values: false, true.
            this.Options = [this.Options, '--single-placement-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = terminate_notification_time(this, varargin)
            % Length of time (in minutes, between 5 and 15) a notification to be sent to the VM on the instance metadata server till the VM gets deleted.
            this.Options = [this.Options, '--terminate-notification-time', varargin{:}];
        end

        function this = upgrade_policy_mode(this, varargin)
            % Allowed values: Automatic, Manual, Rolling.  Default: manual.
            this.Options = [this.Options, '--upgrade-policy-mode', varargin{:}];
        end

        function this = validate(this, varargin)
            % Generate and validate the ARM template without creating any resources.
            this.Options = [this.Options, '--validate', varargin{:}];
        end

        function this = vm_sku(this, varargin)
            % Size of VMs in the scale set. Default to "Standard_DS1_v2". See https://azure.microsoft.com/pricing/details/virtual- machines/ for size info.
            this.Options = [this.Options, '--vm-sku', varargin{:}];
        end

        function this = zones(this, varargin)
            % Space-separated list of availability zones into which to provision the resource.  Allowed values: 1, 2, 3. Authentication Arguments
            this.Options = [this.Options, '--zones', varargin{:}];
        end

        function this = admin_password(this, varargin)
            % Password for the VM if authentication type is 'Password'.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_username(this, varargin)
            % Username for the VM. Default value is current username of OS. If the default value is system reserved, then default value will be set to azureuser. Please refer to https://docs.microsoft.com/en-us/rest/api/compute/virtualm achines/createorupdate#osprofile to get a full list of reserved values.
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
            % Space-separated list of SSH public keys or public key file paths. Managed Service Identity Arguments
            this.Options = [this.Options, '--ssh-key-values', varargin{:}];
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
            % Plan publisher. Network Arguments
            this.Options = [this.Options, '--plan-publisher', varargin{:}];
        end

        function this = accelerated_networking(this, varargin)
            % Enable accelerated networking. Unless specified, CLI will enable it based on machine image and size.  Allowed values: false, true.
            this.Options = [this.Options, '--accelerated-networking', varargin{:}];
        end

        function this = asgs(this, varargin)
            % Space-separated list of existing application security groups to associate with the VM.
            this.Options = [this.Options, '--asgs', varargin{:}];
        end

        function this = dns_servers(this, varargin)
            % Space-separated IP addresses of DNS servers, e.g. 10.0.0.5 10.0.0.6.
            this.Options = [this.Options, '--dns-servers', varargin{:}];
        end

        function this = nsg(this, varargin)
            % Name or ID of an existing Network Security Group.
            this.Options = [this.Options, '--nsg', varargin{:}];
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

        function this = public_ip_per_vm(this, varargin)
            % Each VM instance will have a public ip. For security, you can use '--nsg' to apply appropriate rules.
            this.Options = [this.Options, '--public-ip-per-vm', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name of the subnet when creating a new VNet or referencing an existing one. Can also reference an existing subnet by ID. If both vnet-name and subnet are omitted, an appropriate VNet and subnet will be selected automatically, or a new one will be created.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = subnet_address_prefix(this, varargin)
            % The subnet IP address prefix to use when creating a new VNet in CIDR format.
            this.Options = [this.Options, '--subnet-address-prefix', varargin{:}];
        end

        function this = vm_domain_name(this, varargin)
            % Domain name of VM instances, once configured, the FQDN is `vm<vm-index>.<vm-domain-name>.<..rest..>`.
            this.Options = [this.Options, '--vm-domain-name', varargin{:}];
        end

        function this = vnet_address_prefix(this, varargin)
            % The IP address prefix to use when creating a new VNet in CIDR format.  Default: 10.0.0.0/16.
            this.Options = [this.Options, '--vnet-address-prefix', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the virtual network when creating a new one or referencing an existing one. Network Balancer Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = app_gateway(this, varargin)
            % Name to use when creating a new application gateway (default) or referencing an existing one. Can also reference an existing application gateway by ID or specify "" for none.
            this.Options = [this.Options, '--app-gateway', varargin{:}];
        end

        function this = app_gateway_capacity(this, varargin)
            % The number of instances to use when creating a new application gateway.  Default: 10.
            this.Options = [this.Options, '--app-gateway-capacity', varargin{:}];
        end

        function this = app_gateway_sku(this, varargin)
            % SKU when creating a new application gateway.  Default: Standard_Large.
            this.Options = [this.Options, '--app-gateway-sku', varargin{:}];
        end

        function this = app_gateway_subnet_address_prefix(this, varargin)
            % The subnet IP address prefix to use when creating a new application gateway in CIDR format.
            this.Options = [this.Options, '--app-gateway-subnet-address-prefix', varargin{:}];
        end

        function this = backend_pool_name(this, varargin)
            % Name to use for the backend pool when creating a new load balancer or application gateway.
            this.Options = [this.Options, '--backend-pool-name', varargin{:}];
        end

        function this = backend_port(this, varargin)
            % When creating a new load balancer, backend port to open with NAT rules (Defaults to 22 on Linux and 3389 on Windows). When creating an application gateway, the backend port to use for the backend HTTP settings.
            this.Options = [this.Options, '--backend-port', varargin{:}];
        end

        function this = lb(this, varargin)
            % Name to use when creating a new load balancer (default) or referencing an existing one. Can also reference an existing load balancer by ID or specify "" for none.
            this.Options = [this.Options, '--lb', varargin{:}];
        end

        function this = lb_nat_pool_name(this, varargin)
            % Name to use for the NAT pool when creating a new load balancer.
            this.Options = [this.Options, '--lb-nat-pool-name', varargin{:}];
        end

        function this = lb_sku(this, varargin)
            % Sku of the Load Balancer to create. Default to 'Standard' when single placement group is turned off; otherwise, default to 'Basic'.  Allowed values: Basic, Standard. Storage Arguments
            this.Options = [this.Options, '--lb-sku', varargin{:}];
        end

        function this = data_disk_caching(this, varargin)
            % Storage caching type for data disk(s), including 'None', 'ReadOnly', 'ReadWrite', etc. Use a singular value to apply on all disks, or use `<lun>=<vaule1> <lun>=<value2>` to configure individual disk.
            this.Options = [this.Options, '--data-disk-caching', varargin{:}];
        end

        function this = data_disk_encryption_sets(this, varargin)
            % Names or IDs (space delimited) of disk encryption sets for data disks.
            this.Options = [this.Options, '--data-disk-encryption-sets', varargin{:}];
        end

        function this = data_disk_iops(this, varargin)
            % Specify the Read-Write IOPS (space delimited) for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB.
            this.Options = [this.Options, '--data-disk-iops', varargin{:}];
        end

        function this = data_disk_mbps(this, varargin)
            % Specify the bandwidth in MB per second (space delimited) for the managed disk. Should be used only when StorageAccountType is UltraSSD_LRS. If not specified, a default value would be assigned based on diskSizeGB.
            this.Options = [this.Options, '--data-disk-mbps', varargin{:}];
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
            % Storage caching type for the VM OS disk. Default: ReadWrite.  Allowed values: None, ReadOnly, ReadWrite.
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

        function this = storage_container_name(this, varargin)
            % Only applicable when used with `--use-unmanaged-disk`. Name of the storage container for the VM OS disk. Default: vhds.  Default: vhds.
            this.Options = [this.Options, '--storage-container-name', varargin{:}];
        end

        function this = storage_sku(this, varargin)
            % The SKU of the storage account with which to persist VM. Use a singular sku that would be applied across all disks, or specify individual disks. Usage: [--storage-sku SKU | --storage-sku ID=SKU ID=SKU ID=SKU...], where each ID is "os" or a 0-indexed lun. Allowed values: Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS.
            this.Options = [this.Options, '--storage-sku', varargin{:}];
        end

        function this = ultra_ssd_enabled(this, varargin)
            % Enables or disables the capability to have 1 or more managed data disks with UltraSSD_LRS storage account. Allowed values: false, true.
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
            fprintf('%s\n', '    az vmss create : Create an Azure Virtual Machine Scale Set.')
            fprintf('%s\n', '        For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machine-scale-')
            fprintf('%s\n', '        sets/virtual-machine-scale-sets-linux-create-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                [Required] : Name of the virtual machine scale set.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --automatic-repairs-grace-period    : The amount of time (in minutes, between 30 and 90) for')
            fprintf('%s\n', '                                          which automatic repairs are suspended due to a state')
            fprintf('%s\n', '                                          change on VM.')
            fprintf('%s\n', '    --computer-name-prefix              : Computer name prefix for all of the virtual machines in')
            fprintf('%s\n', '                                          the scale set. Computer name prefixes must be 1 to 15')
            fprintf('%s\n', '                                          characters long.')
            fprintf('%s\n', '    --custom-data                       : Custom init script file or text (cloud-init, cloud-config,')
            fprintf('%s\n', '                                          etc..).')
            fprintf('%s\n', '    --disable-overprovision             : Overprovision option (see')
            fprintf('%s\n', '                                          https://azure.microsoft.com/documentation/articles/virtual')
            fprintf('%s\n', '                                          -machine-scale-sets-overview/ for details).')
            fprintf('%s\n', '    --eviction-policy                   : The eviction policy for virtual machines in a Spot')
            fprintf('%s\n', '                                          priority scale set. Default eviction policy is Deallocate')
            fprintf('%s\n', '                                          for a Spot priority scale set.  Allowed values:')
            fprintf('%s\n', '                                          Deallocate, Delete.')
            fprintf('%s\n', '    --health-probe                      : Probe name from the existing load balancer, mainly used')
            fprintf('%s\n', '                                          for rolling upgrade or automatic repairs.')
            fprintf('%s\n', '    --host-group                        : Name or ID of dedicated host group that the virtual')
            fprintf('%s\n', '                                          machine scale set resides in.')
            fprintf('%s\n', '    --image                             : The name of the operating system image as a URN alias,')
            fprintf('%s\n', '                                          URN, custom image name or ID, or VHD blob URI. Valid URN')
            fprintf('%s\n', '                                          format: "Publisher:Offer:Sku:Version".  Values from: az vm')
            fprintf('%s\n', '                                          image list, az vm image show.')
            fprintf('%s\n', '    --instance-count                    : Number of VMs in the scale set.  Default: 2.')
            fprintf('%s\n', '    --license-type                      : Specifies that the Windows image or disk was licensed on-')
            fprintf('%s\n', '                                          premises. To enable Azure Hybrid Benefit for Windows')
            fprintf('%s\n', '                                          Server, use ''Windows_Server''. To enable Multitenant')
            fprintf('%s\n', '                                          Hosting Rights for Windows 10, use ''Windows_Client''. For')
            fprintf('%s\n', '                                          more information see the Azure Windows VM online docs.')
            fprintf('%s\n', '                                          Allowed values: None, Windows_Client, Windows_Server.')
            fprintf('%s\n', '    --location -l                       : Location in which to create VM and related resources. If')
            fprintf('%s\n', '                                          default location is not configured, will default to the')
            fprintf('%s\n', '                                          resource group''s location.')
            fprintf('%s\n', '    --max-price               [Preview] : The maximum price (in US Dollars) you are')
            fprintf('%s\n', '                                          willing to pay for a Spot VM/VMSS. -1 indicates that the')
            fprintf('%s\n', '                                          Spot VM/VMSS should not be evicted for price reasons.')
            fprintf('%s\n', '        Argument ''--max-price'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --orchestration-mode      [Preview] : Choose how virtual machines are managed by the')
            fprintf('%s\n', '                                          scale set. In VM mode, you manually create and add a')
            fprintf('%s\n', '                                          virtual machine of any configuration to the scale set. In')
            fprintf('%s\n', '                                          ScaleSetVM mode, you define a virtual machine model and')
            fprintf('%s\n', '                                          Azure will generate identical instances based on that')
            fprintf('%s\n', '                                          model.  Allowed values: ScaleSetVM, VM.  Default:')
            fprintf('%s\n', '                                          ScaleSetVM.')
            fprintf('%s\n', '        Argument ''--orchestration-mode'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --platform-fault-domain-count       : Fault Domain count for each placement group in the')
            fprintf('%s\n', '                                          availability zone.')
            fprintf('%s\n', '    --ppg                               : The name or ID of the proximity placement group the VMSS')
            fprintf('%s\n', '                                          should be associated with.')
            fprintf('%s\n', '    --priority                          : Priority. Use ''Spot'' to run short-lived workloads in a')
            fprintf('%s\n', '                                          cost-effective way. ''Low'' enum will be deprecated in the')
            fprintf('%s\n', '                                          future. Please use ''Spot'' to deploy Azure spot VM and/or')
            fprintf('%s\n', '                                          VMSS. Default to Regular.  Allowed values: Low, Regular,')
            fprintf('%s\n', '                                          Spot.')
            fprintf('%s\n', '    --scale-in-policy                   : Specify the scale-in policy (space delimited) that decides')
            fprintf('%s\n', '                                          which virtual machines are chosen for removal when a')
            fprintf('%s\n', '                                          Virtual Machine Scale Set is scaled-in.  Allowed values:')
            fprintf('%s\n', '                                          Default, NewestVM, OldestVM.')
            fprintf('%s\n', '    --secrets                           : One or many Key Vault secrets as JSON strings or files via')
            fprintf('%s\n', '                                          `@{path}` containing `[{ "sourceVault": { "id": "value" },')
            fprintf('%s\n', '                                          "vaultCertificates": [{ "certificateUrl": "value",')
            fprintf('%s\n', '                                          "certificateStore": "cert store name (only on windows)"}]')
            fprintf('%s\n', '                                          }]`.')
            fprintf('%s\n', '    --single-placement-group            : Limit the scale set to a single placement group. See')
            fprintf('%s\n', '                                          https://docs.microsoft.com/azure/virtual-machine-scale-')
            fprintf('%s\n', '                                          sets/virtual-machine-scale-sets-placement-groups for')
            fprintf('%s\n', '                                          details.  Allowed values: false, true.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', '    --terminate-notification-time       : Length of time (in minutes, between 5 and 15) a')
            fprintf('%s\n', '                                          notification to be sent to the VM on the instance metadata')
            fprintf('%s\n', '                                          server till the VM gets deleted.')
            fprintf('%s\n', '    --upgrade-policy-mode               : Allowed values: Automatic, Manual, Rolling.  Default:')
            fprintf('%s\n', '                                          manual.')
            fprintf('%s\n', '    --validate                          : Generate and validate the ARM template without creating')
            fprintf('%s\n', '                                          any resources.')
            fprintf('%s\n', '    --vm-sku                            : Size of VMs in the scale set. Default to')
            fprintf('%s\n', '                                          "Standard_DS1_v2". See')
            fprintf('%s\n', '                                          https://azure.microsoft.com/pricing/details/virtual-')
            fprintf('%s\n', '                                          machines/ for size info.')
            fprintf('%s\n', '    --zones -z                          : Space-separated list of availability zones into which to')
            fprintf('%s\n', '                                          provision the resource.  Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Authentication Arguments')
            fprintf('%s\n', '    --admin-password                    : Password for the VM if authentication type is ''Password''.')
            fprintf('%s\n', '    --admin-username                    : Username for the VM. Default value is current username of')
            fprintf('%s\n', '                                          OS. If the default value is system reserved, then default')
            fprintf('%s\n', '                                          value will be set to azureuser. Please refer to')
            fprintf('%s\n', '                                          https://docs.microsoft.com/en-us/rest/api/compute/virtualm')
            fprintf('%s\n', '                                          achines/createorupdate#osprofile to get a full list of')
            fprintf('%s\n', '                                          reserved values.')
            fprintf('%s\n', '    --authentication-type               : Type of authentication to use with the VM. Defaults to')
            fprintf('%s\n', '                                          password for Windows and SSH public key for Linux. "all"')
            fprintf('%s\n', '                                          enables both ssh and password authentication.  Allowed')
            fprintf('%s\n', '                                          values: all, password, ssh.')
            fprintf('%s\n', '    --generate-ssh-keys                 : Generate SSH public and private key files if missing. The')
            fprintf('%s\n', '                                          keys will be stored in the ~/.ssh directory.')
            fprintf('%s\n', '    --ssh-dest-key-path                 : Destination file path on the VM for the SSH key. If the')
            fprintf('%s\n', '                                          file already exists, the specified key(s) are appended to')
            fprintf('%s\n', '                                          the file. Destination path for SSH public keys is')
            fprintf('%s\n', '                                          currently limited to its default value')
            fprintf('%s\n', '                                          "/home/username/.ssh/authorized_keys" due to a known issue')
            fprintf('%s\n', '                                          in Linux provisioning agent.')
            fprintf('%s\n', '    --ssh-key-values                    : Space-separated list of SSH public keys or public key file')
            fprintf('%s\n', '                                          paths.')
            fprintf('%s\n', 'Managed Service Identity Arguments')
            fprintf('%s\n', '    --assign-identity                   : Accept system or user assigned identities separated by')
            fprintf('%s\n', '                                          spaces. Use ''[system]'' to refer system assigned identity,')
            fprintf('%s\n', '                                          or a resource id to refer user assigned identity. Check')
            fprintf('%s\n', '                                          out help for more examples.')
            fprintf('%s\n', '    --role                              : Role name or id the system assigned identity will have.')
            fprintf('%s\n', '                                          Default: Contributor.')
            fprintf('%s\n', '    --scope                             : Scope that the system assigned identity can access.')
            fprintf('%s\n', 'Marketplace Image Plan Arguments')
            fprintf('%s\n', '    --plan-name                         : Plan name.')
            fprintf('%s\n', '    --plan-product                      : Plan product.')
            fprintf('%s\n', '    --plan-promotion-code               : Plan promotion code.')
            fprintf('%s\n', '    --plan-publisher                    : Plan publisher.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --accelerated-networking            : Enable accelerated networking. Unless specified, CLI will')
            fprintf('%s\n', '                                          enable it based on machine image and size.  Allowed')
            fprintf('%s\n', '                                          values: false, true.')
            fprintf('%s\n', '    --asgs                              : Space-separated list of existing application security')
            fprintf('%s\n', '                                          groups to associate with the VM.')
            fprintf('%s\n', '    --dns-servers                       : Space-separated IP addresses of DNS servers, e.g. 10.0.0.5')
            fprintf('%s\n', '                                          10.0.0.6.')
            fprintf('%s\n', '    --nsg                               : Name or ID of an existing Network Security Group.')
            fprintf('%s\n', '    --public-ip-address                 : Name of the public IP address when creating one (default)')
            fprintf('%s\n', '                                          or referencing an existing one. Can also reference an')
            fprintf('%s\n', '                                          existing public IP by ID or specify "" for None (''""'' in')
            fprintf('%s\n', '                                          Azure CLI using PowerShell or --% operator).')
            fprintf('%s\n', '    --public-ip-address-allocation      : Allowed values: dynamic, static.')
            fprintf('%s\n', '    --public-ip-address-dns-name        : Globally unique DNS name for a newly created public IP.')
            fprintf('%s\n', '    --public-ip-per-vm                  : Each VM instance will have a public ip. For security, you')
            fprintf('%s\n', '                                          can use ''--nsg'' to apply appropriate rules.')
            fprintf('%s\n', '    --subnet                            : The name of the subnet when creating a new VNet or')
            fprintf('%s\n', '                                          referencing an existing one. Can also reference an')
            fprintf('%s\n', '                                          existing subnet by ID. If both vnet-name and subnet are')
            fprintf('%s\n', '                                          omitted, an appropriate VNet and subnet will be selected')
            fprintf('%s\n', '                                          automatically, or a new one will be created.')
            fprintf('%s\n', '    --subnet-address-prefix             : The subnet IP address prefix to use when creating a new')
            fprintf('%s\n', '                                          VNet in CIDR format.')
            fprintf('%s\n', '    --vm-domain-name                    : Domain name of VM instances, once configured, the FQDN is')
            fprintf('%s\n', '                                          `vm<vm-index>.<vm-domain-name>.<..rest..>`.')
            fprintf('%s\n', '    --vnet-address-prefix               : The IP address prefix to use when creating a new VNet in')
            fprintf('%s\n', '                                          CIDR format.  Default: 10.0.0.0/16.')
            fprintf('%s\n', '    --vnet-name                         : Name of the virtual network when creating a new one or')
            fprintf('%s\n', '                                          referencing an existing one.')
            fprintf('%s\n', 'Network Balancer Arguments')
            fprintf('%s\n', '    --app-gateway                       : Name to use when creating a new application gateway')
            fprintf('%s\n', '                                          (default) or referencing an existing one. Can also')
            fprintf('%s\n', '                                          reference an existing application gateway by ID or specify')
            fprintf('%s\n', '                                          "" for none.')
            fprintf('%s\n', '    --app-gateway-capacity              : The number of instances to use when creating a new')
            fprintf('%s\n', '                                          application gateway.  Default: 10.')
            fprintf('%s\n', '    --app-gateway-sku                   : SKU when creating a new application gateway.  Default:')
            fprintf('%s\n', '                                          Standard_Large.')
            fprintf('%s\n', '    --app-gateway-subnet-address-prefix : The subnet IP address prefix to use when creating a new')
            fprintf('%s\n', '                                          application gateway in CIDR format.')
            fprintf('%s\n', '    --backend-pool-name                 : Name to use for the backend pool when creating a new load')
            fprintf('%s\n', '                                          balancer or application gateway.')
            fprintf('%s\n', '    --backend-port                      : When creating a new load balancer, backend port to open')
            fprintf('%s\n', '                                          with NAT rules (Defaults to 22 on Linux and 3389 on')
            fprintf('%s\n', '                                          Windows). When creating an application gateway, the')
            fprintf('%s\n', '                                          backend port to use for the backend HTTP settings.')
            fprintf('%s\n', '    --lb --load-balancer                : Name to use when creating a new load balancer (default) or')
            fprintf('%s\n', '                                          referencing an existing one. Can also reference an')
            fprintf('%s\n', '                                          existing load balancer by ID or specify "" for none.')
            fprintf('%s\n', '    --lb-nat-pool-name --nat-pool-name  : Name to use for the NAT pool when creating a new load')
            fprintf('%s\n', '                                          balancer.')
            fprintf('%s\n', '    --lb-sku                            : Sku of the Load Balancer to create. Default to ''Standard''')
            fprintf('%s\n', '                                          when single placement group is turned off; otherwise,')
            fprintf('%s\n', '                                          default to ''Basic''.  Allowed values: Basic, Standard.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --data-disk-caching                 : Storage caching type for data disk(s), including ''None'',')
            fprintf('%s\n', '                                          ''ReadOnly'', ''ReadWrite'', etc. Use a singular value to')
            fprintf('%s\n', '                                          apply on all disks, or use `<lun>=<vaule1> <lun>=<value2>`')
            fprintf('%s\n', '                                          to configure individual disk.')
            fprintf('%s\n', '    --data-disk-encryption-sets         : Names or IDs (space delimited) of disk encryption sets for')
            fprintf('%s\n', '                                          data disks.')
            fprintf('%s\n', '    --data-disk-iops                    : Specify the Read-Write IOPS (space delimited) for the')
            fprintf('%s\n', '                                          managed disk. Should be used only when StorageAccountType')
            fprintf('%s\n', '                                          is UltraSSD_LRS. If not specified, a default value would')
            fprintf('%s\n', '                                          be assigned based on diskSizeGB.')
            fprintf('%s\n', '    --data-disk-mbps                    : Specify the bandwidth in MB per second (space delimited)')
            fprintf('%s\n', '                                          for the managed disk. Should be used only when')
            fprintf('%s\n', '                                          StorageAccountType is UltraSSD_LRS. If not specified, a')
            fprintf('%s\n', '                                          default value would be assigned based on diskSizeGB.')
            fprintf('%s\n', '    --data-disk-sizes-gb                : Space-separated empty managed data disk sizes in GB to')
            fprintf('%s\n', '                                          create.')
            fprintf('%s\n', '    --encryption-at-host                : Enable Host Encryption for the VM or VMSS. This will')
            fprintf('%s\n', '                                          enable the encryption for all the disks including')
            fprintf('%s\n', '                                          Resource/Temp disk at host itself.  Allowed values: false,')
            fprintf('%s\n', '                                          true.')
            fprintf('%s\n', '    --ephemeral-os-disk       [Preview] : Allows you to create an OS disk directly on the')
            fprintf('%s\n', '                                          host node, providing local disk performance and faster')
            fprintf('%s\n', '                                          VM/VMSS reimage time.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--ephemeral-os-disk'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --os-disk-caching                   : Storage caching type for the VM OS disk. Default:')
            fprintf('%s\n', '                                          ReadWrite.  Allowed values: None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --os-disk-encryption-set            : Name or ID of disk encryption set for OS disk.')
            fprintf('%s\n', '    --os-disk-name                      : The name of the new VM OS disk.')
            fprintf('%s\n', '    --os-disk-size-gb                   : OS disk size in GB to create.')
            fprintf('%s\n', '    --os-type                           : Type of OS installed on a custom VHD. Do not use when')
            fprintf('%s\n', '                                          specifying an URN or URN alias.  Allowed values: linux,')
            fprintf('%s\n', '                                          windows.')
            fprintf('%s\n', '    --specialized                       : Indicate whether the source image is specialized.  Allowed')
            fprintf('%s\n', '                                          values: false, true.')
            fprintf('%s\n', '    --storage-container-name            : Only applicable when used with `--use-unmanaged-disk`.')
            fprintf('%s\n', '                                          Name of the storage container for the VM OS disk. Default:')
            fprintf('%s\n', '                                          vhds.  Default: vhds.')
            fprintf('%s\n', '    --storage-sku                       : The SKU of the storage account with which to persist VM.')
            fprintf('%s\n', '                                          Use a singular sku that would be applied across all disks,')
            fprintf('%s\n', '                                          or specify individual disks. Usage: [--storage-sku SKU |')
            fprintf('%s\n', '                                          --storage-sku ID=SKU ID=SKU ID=SKU...], where each ID is')
            fprintf('%s\n', '                                          "os" or a 0-indexed lun. Allowed values: Standard_LRS,')
            fprintf('%s\n', '                                          Premium_LRS, StandardSSD_LRS, UltraSSD_LRS.')
            fprintf('%s\n', '    --ultra-ssd-enabled                 : Enables or disables the capability to have 1 or more')
            fprintf('%s\n', '                                          managed data disks with UltraSSD_LRS storage account.')
            fprintf('%s\n', '                                          Allowed values: false, true.')
            fprintf('%s\n', '    --use-unmanaged-disk                : Do not use managed disk to persist VM.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a Windows VM scale set with 5 instances, a load balancer, a public IP address, a 2GB data')
            fprintf('%s\n', '    disk and 40GB OS disk.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --instance-count 5 --image Win2016Datacenter')
            fprintf('%s\n', '        --data-disk-sizes-gb 2 --os-disk-size-gb 40')
            fprintf('%s\n', '    Create a Linux VM scale set with an auto-generated ssh key pair, a public IP address, a DNS')
            fprintf('%s\n', '    entry, an existing load balancer, and an existing virtual network.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --public-ip-address-dns-name my-globally-dns-')
            fprintf('%s\n', '        name \')
            fprintf('%s\n', '            --load-balancer MyLoadBalancer --vnet-name MyVnet --subnet MySubnet --image UbuntuLTS \')
            fprintf('%s\n', '            --generate-ssh-keys')
            fprintf('%s\n', '    Create a Linux VM scale set from a custom image using the default existing public SSH key.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --image MyImage')
            fprintf('%s\n', '    Create a Linux VM scale set with a load balancer and custom DNS servers. Each VM has a public-ip')
            fprintf('%s\n', '    address and a custom domain name.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --image centos \')
            fprintf('%s\n', '            --public-ip-per-vm --vm-domain-name myvmss --dns-servers 10.0.0.6 10.0.0.5')
            fprintf('%s\n', '    Create a Linux VM scale set using a cloud-init script for configuration. See:')
            fprintf('%s\n', '    https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-cloud-init')
            fprintf('%s\n', '        az vmss create -g MyResourceGroup -n MyVmss --image debian --custom-data')
            fprintf('%s\n', '        MyCloudInitScript.yml')
            fprintf('%s\n', '    Create a Linux VM scale set from a specialized image version.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --image $id --specialized')
            fprintf('%s\n', '    Create a Debian VM scaleset using Key Vault secrets.')
            fprintf('%s\n', '        az keyvault certificate create --vault-name vaultname -n cert1 \')
            fprintf('%s\n', '          -p "$(az keyvault certificate get-default-policy)"')
            fprintf('%s\n', '        secrets=$(az keyvault secret list-versions --vault-name vaultname \')
            fprintf('%s\n', '          -n cert1 --query "[?attributes.enabled].id" -o tsv)')
            fprintf('%s\n', '        vm_secrets=$(az vm secret format -s "$secrets")')
            fprintf('%s\n', '        az vmss create -g group-name -n vm-name --admin-username deploy  \')
            fprintf('%s\n', '          --image debian --secrets "$vm_secrets"')
            fprintf('%s\n', '    Create a VM scaleset with system assigned identity. The VM will have a ''Contributor'' Role with')
            fprintf('%s\n', '    access to a storage account.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --image centos --assign-identity --scope')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-')
            fprintf('%s\n', '        aec3-cb9272f09590/MyResourceGroup/myRG/providers/Microsoft.Storage/storageAccounts/storage1')
            fprintf('%s\n', '    Create a debian VM scaleset with a user assigned identity.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g rg1 --image debian --assign-identity')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-aec3-cb9272f09590/resourcegroups/myRG/providers/Microsoft.')
            fprintf('%s\n', '        ManagedIdentity/userAssignedIdentities/myID')
            fprintf('%s\n', '    Create a debian VM scaleset with both system and user assigned identity.')
            fprintf('%s\n', '        az vmss create -n MyVmss -g rg1 --image debian --assign-identity  [system]')
            fprintf('%s\n', '        /subscriptions/99999999-1bf0-4dda-aec3-cb9272f09590/resourcegroups/myRG/providers/Microsoft.')
            fprintf('%s\n', '        ManagedIdentity/userAssignedIdentities/myID')
            fprintf('%s\n', '    Create a single zone VM scaleset in the current resource group''s region')
            fprintf('%s\n', '        az vmss create -n MyVmss -g MyResourceGroup --image Centos --zones 1')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
