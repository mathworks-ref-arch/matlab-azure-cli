classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az aks create : Create a new managed Kubernetes cluster.
            this.BaseCmd = 'az aks create ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = aad_admin_group_object_ids(this, varargin)
            % Comma seperated list of aad group object IDs that will be set as cluster admin.
            this.Options = [this.Options, '--aad-admin-group-object-ids', varargin{:}];
        end

        function this = aad_client_app_id(this, varargin)
            % The ID of an Azure Active Directory client application of type "Native". This application is for user login via kubectl.
            this.Options = [this.Options, '--aad-client-app-id', varargin{:}];
        end

        function this = aad_server_app_id(this, varargin)
            % The ID of an Azure Active Directory server application of type "Web app/API". This application represents the managed cluster's apiserver (Server application).
            this.Options = [this.Options, '--aad-server-app-id', varargin{:}];
        end

        function this = aad_server_app_secret(this, varargin)
            % The secret of an Azure Active Directory server application.
            this.Options = [this.Options, '--aad-server-app-secret', varargin{:}];
        end

        function this = aad_tenant_id(this, varargin)
            % The ID of an Azure Active Directory tenant.
            this.Options = [this.Options, '--aad-tenant-id', varargin{:}];
        end

        function this = admin_username(this, varargin)
            % User account to create on node VMs for SSH access. Default: azureuser.
            this.Options = [this.Options, '--admin-username', varargin{:}];
        end

        function this = api_server_authorized_ip_ranges(this, varargin)
            % Comma seperated list of authorized apiserver IP ranges. Set to 0.0.0.0/32 to restrict apiserver traffic to node pools.
            this.Options = [this.Options, '--api-server-authorized-ip-ranges', varargin{:}];
        end

        function this = attach_acr(this, varargin)
            % Grant the 'acrpull' role assignment to the ACR specified by name or resource ID.
            this.Options = [this.Options, '--attach-acr', varargin{:}];
        end

        function this = client_secret(this, varargin)
            % Secret associated with the service principal. This argument is required if `--service-principal` is specified.
            this.Options = [this.Options, '--client-secret', varargin{:}];
        end

        function this = disable_rbac(this, varargin)
            % Disable Kubernetes Role-Based Access Control.
            this.Options = [this.Options, '--disable-rbac', varargin{:}];
        end

        function this = dns_name_prefix(this, varargin)
            % Prefix for hostnames that are created. If not specified, generate a hostname using the managed cluster and resource group names.
            this.Options = [this.Options, '--dns-name-prefix', varargin{:}];
        end

        function this = dns_service_ip(this, varargin)
            % An IP address assigned to the Kubernetes DNS service. This address must be within the Kubernetes service address range specified by "--service- cidr". For example, 10.0.0.10.
            this.Options = [this.Options, '--dns-service-ip', varargin{:}];
        end

        function this = docker_bridge_address(this, varargin)
            % A specific IP address and netmask for the Docker bridge, using standard CIDR notation. This address must not be in any Subnet IP ranges, or the Kubernetes service address range. For example, 172.17.0.1/16.
            this.Options = [this.Options, '--docker-bridge-address', varargin{:}];
        end

        function this = enable_aad(this, varargin)
            % Enable managed AAD feature for cluster.
            this.Options = [this.Options, '--enable-aad', varargin{:}];
        end

        function this = enable_addons(this, varargin)
            % Enable the Kubernetes addons in a comma-separated list. These addons are available: http_application_routing - configure ingress with automatic public DNS name creation. monitoring - turn on Log Analytics monitoring. Uses the Log Analytics Default Workspace if it exists, else creates one. Specify "--workspace-resource-id" to use an existing workspace. If monitoring addon is enabled --no-wait argument will have no effect virtual-node - enable AKS Virtual Node (PREVIEW). Requires --subnet-name to provide the name of an existing subnet for the Virtual Node to use.
            this.Options = [this.Options, '--enable-addons', varargin{:}];
        end

        function this = enable_cluster_autoscaler(this, varargin)
            % Enable cluster autoscaler, default value is false. If specified, please make sure the kubernetes version is larger than 1.10.6.
            this.Options = [this.Options, '--enable-cluster-autoscaler', varargin{:}];
        end

        function this = enable_managed_identity(this, varargin)
            % Using a system assigned managed identity to manage cluster resource group.
            this.Options = [this.Options, '--enable-managed-identity', varargin{:}];
        end

        function this = enable_node_public_ip(this, varargin)
            % Enable VMSS node public IP. Argument '--enable-node-public-ip' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-node-public-ip', varargin{:}];
        end

        function this = enable_private_cluster(this, varargin)
            % Enable private cluster.
            this.Options = [this.Options, '--enable-private-cluster', varargin{:}];
        end

        function this = generate_ssh_keys(this, varargin)
            % Generate SSH public and private key files if missing. The keys will be stored in the ~/.ssh directory.
            this.Options = [this.Options, '--generate-ssh-keys', varargin{:}];
        end

        function this = kubernetes_version(this, varargin)
            % Version of Kubernetes to use for creating the cluster, such as "1.16.9".  Values from: `az aks get-versions`.
            this.Options = [this.Options, '--kubernetes-version', varargin{:}];
        end

        function this = load_balancer_idle_timeout(this, varargin)
            % Load balancer idle timeout in minutes. Desired idle timeout for load balancer outbound flows, default is 30 minutes. Please specify a value in the range of [4, 120].
            this.Options = [this.Options, '--load-balancer-idle-timeout', varargin{:}];
        end

        function this = load_balancer_managed_outbound_ip_count(this, varargin)
            % Load balancer managed outbound IP count. Desired number of managed outbound IPs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only.
            this.Options = [this.Options, '--load-balancer-managed-outbound-ip-count', varargin{:}];
        end

        function this = load_balancer_outbound_ip_prefixes(this, varargin)
            % Load balancer outbound IP prefix resource IDs. Comma-separated public IP prefix resource IDs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only.
            this.Options = [this.Options, '--load-balancer-outbound-ip-prefixes', varargin{:}];
        end

        function this = load_balancer_outbound_ips(this, varargin)
            % Load balancer outbound IP resource IDs. Comma-separated public IP resource IDs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only.
            this.Options = [this.Options, '--load-balancer-outbound-ips', varargin{:}];
        end

        function this = load_balancer_outbound_ports(this, varargin)
            % Load balancer outbound allocated ports. Desired static number of outbound ports per VM in the load balancer backend pool. By default, set to 0 which uses the default allocation based on the number of VMs.
            this.Options = [this.Options, '--load-balancer-outbound-ports', varargin{:}];
        end

        function this = load_balancer_sku(this, varargin)
            % Azure Load Balancer SKU selection for your cluster. basic or standard. Select between Basic or Standard Azure Load Balancer SKU for your AKS cluster.
            this.Options = [this.Options, '--load-balancer-sku', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_count(this, varargin)
            % Maximum nodes count used for autoscaler, when "-- enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = max_pods(this, varargin)
            % The maximum number of pods deployable to a node. If not specified, defaults to 110, or 30 for advanced networking configurations.
            this.Options = [this.Options, '--max-pods', varargin{:}];
        end

        function this = min_count(this, varargin)
            % Minimum nodes count used for autoscaler, when "-- enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = network_plugin(this, varargin)
            % The Kubernetes network plugin to use.  Allowed values: azure, kubenet. Specify "azure" for advanced networking configurations. Defaults to "kubenet".
            this.Options = [this.Options, '--network-plugin', varargin{:}];
        end

        function this = network_policy(this, varargin)
            % The Kubernetes network policy to use. Using together with "azure" network plugin. Specify "azure" for Azure network policy manager and "calico" for calico network policy controller. Defaults to "" (network policy disabled).
            this.Options = [this.Options, '--network-policy', varargin{:}];
        end

        function this = no_ssh_key(this, varargin)
            % Do not use or create a local SSH key. To access nodes after creating a cluster with this option, use the Azure Portal.
            this.Options = [this.Options, '--no-ssh-key', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = node_count(this, varargin)
            % Number of nodes in the Kubernetes node pool. After creating a cluster, you can change the size of its node pool with `az aks scale`.  Default: 3.
            this.Options = [this.Options, '--node-count', varargin{:}];
        end

        function this = node_osdisk_size(this, varargin)
            % Size in GB of the OS disk for each node in the node pool. Minimum 30 GB.
            this.Options = [this.Options, '--node-osdisk-size', varargin{:}];
        end

        function this = node_vm_size(this, varargin)
            % Size of Virtual Machines to create as Kubernetes nodes.  Default: Standard_DS2_v2.
            this.Options = [this.Options, '--node-vm-size', varargin{:}];
        end

        function this = nodepool_labels(this, varargin)
            % Space-separated labels: key[=value] [key[=value] ...]. You can not change the node labels through CLI after creation. See https://aka.ms/node-labels for syntax of labels.
            this.Options = [this.Options, '--nodepool-labels', varargin{:}];
        end

        function this = nodepool_name(this, varargin)
            % Node pool name, up to 12 alphanumeric characters. Default: nodepool1.
            this.Options = [this.Options, '--nodepool-name', varargin{:}];
        end

        function this = nodepool_tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use "" to clear existing tags.
            this.Options = [this.Options, '--nodepool-tags', varargin{:}];
        end

        function this = outbound_type(this, varargin)
            % How outbound traffic will be configured for a cluster.  Allowed values: loadBalancer, userDefinedRouting. Select between loadBalancer and userDefinedRouting. If not set, defaults to type loadBalancer. Requires --vnet-subnet-id to be provided with a preconfigured route table and --load-balancer-sku to be Standard.
            this.Options = [this.Options, '--outbound-type', varargin{:}];
        end

        function this = pod_cidr(this, varargin)
            % A CIDR notation IP range from which to assign pod IPs when kubenet is used. This range must not overlap with any Subnet IP ranges. For example, 172.244.0.0/16.
            this.Options = [this.Options, '--pod-cidr', varargin{:}];
        end

        function this = service_cidr(this, varargin)
            % A CIDR notation IP range from which to assign service cluster IPs. This range must not overlap with any Subnet IP ranges. For example, 10.0.0.0/16.
            this.Options = [this.Options, '--service-cidr', varargin{:}];
        end

        function this = service_principal(this, varargin)
            % Service principal used for authentication to Azure APIs. If not specified, a new service principal is created and cached at $HOME/.azure/aksServicePrincipal.json to be used by subsequent `az aks` commands.
            this.Options = [this.Options, '--service-principal', varargin{:}];
        end

        function this = skip_subnet_role_assignment(this, varargin)
            % Skip role assignment for subnet (advanced networking). If specified, please make sure your service principal has the access to your subnet.
            this.Options = [this.Options, '--skip-subnet-role-assignment', varargin{:}];
        end

        function this = ssh_key_value(this, varargin)
            % Public key path or key contents to install on node VMs for SSH access. For example, 'ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm'.  Default: ~/.ssh/id_rsa.pub.
            this.Options = [this.Options, '--ssh-key-value', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = uptime_sla(this, varargin)
            % Enable a paid managed cluster service with a financially backed SLA.
            this.Options = [this.Options, '--uptime-sla', varargin{:}];
        end

        function this = vm_set_type(this, varargin)
            % Agent pool vm set type. VirtualMachineScaleSets or AvailabilitySet.
            this.Options = [this.Options, '--vm-set-type', varargin{:}];
        end

        function this = vnet_subnet_id(this, varargin)
            % The ID of a subnet in an existing VNet into which to deploy the cluster.
            this.Options = [this.Options, '--vnet-subnet-id', varargin{:}];
        end

        function this = windows_admin_password(this, varargin)
            % Password to create on Windows node VMs.
            this.Options = [this.Options, '--windows-admin-password', varargin{:}];
        end

        function this = windows_admin_username(this, varargin)
            % Username to create on Windows node VMs.
            this.Options = [this.Options, '--windows-admin-username', varargin{:}];
        end

        function this = workspace_resource_id(this, varargin)
            % The resource ID of an existing Log Analytics Workspace to use for storing monitoring data. If not specified, uses the default Log Analytics Workspace if it exists, otherwise creates one.
            this.Options = [this.Options, '--workspace-resource-id', varargin{:}];
        end

        function this = zones(this, varargin)
            % Availability zones where agent nodes will be placed. Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--zones', varargin{:}];
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
            fprintf('%s\n', '    az aks create : Create a new managed Kubernetes cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                      [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --aad-admin-group-object-ids              : Comma seperated list of aad group object IDs that')
            fprintf('%s\n', '                                                will be set as cluster admin.')
            fprintf('%s\n', '    --aad-client-app-id                       : The ID of an Azure Active Directory client')
            fprintf('%s\n', '                                                application of type "Native". This application is')
            fprintf('%s\n', '                                                for user login via kubectl.')
            fprintf('%s\n', '    --aad-server-app-id                       : The ID of an Azure Active Directory server')
            fprintf('%s\n', '                                                application of type "Web app/API". This application')
            fprintf('%s\n', '                                                represents the managed cluster''s apiserver (Server')
            fprintf('%s\n', '                                                application).')
            fprintf('%s\n', '    --aad-server-app-secret                   : The secret of an Azure Active Directory server')
            fprintf('%s\n', '                                                application.')
            fprintf('%s\n', '    --aad-tenant-id                           : The ID of an Azure Active Directory tenant.')
            fprintf('%s\n', '    --admin-username -u                       : User account to create on node VMs for SSH access.')
            fprintf('%s\n', '                                                Default: azureuser.')
            fprintf('%s\n', '    --api-server-authorized-ip-ranges         : Comma seperated list of authorized apiserver IP')
            fprintf('%s\n', '                                                ranges. Set to 0.0.0.0/32 to restrict apiserver')
            fprintf('%s\n', '                                                traffic to node pools.')
            fprintf('%s\n', '    --attach-acr                              : Grant the ''acrpull'' role assignment to the ACR')
            fprintf('%s\n', '                                                specified by name or resource ID.')
            fprintf('%s\n', '    --client-secret                           : Secret associated with the service principal. This')
            fprintf('%s\n', '                                                argument is required if `--service-principal` is')
            fprintf('%s\n', '                                                specified.')
            fprintf('%s\n', '    --disable-rbac                            : Disable Kubernetes Role-Based Access Control.')
            fprintf('%s\n', '    --dns-name-prefix -p                      : Prefix for hostnames that are created. If not')
            fprintf('%s\n', '                                                specified, generate a hostname using the managed')
            fprintf('%s\n', '                                                cluster and resource group names.')
            fprintf('%s\n', '    --dns-service-ip                          : An IP address assigned to the Kubernetes DNS')
            fprintf('%s\n', '                                                service.')
            fprintf('%s\n', '        This address must be within the Kubernetes service address range specified by "--service-')
            fprintf('%s\n', '        cidr". For example, 10.0.0.10.')
            fprintf('%s\n', '    --docker-bridge-address                   : A specific IP address and netmask for the Docker')
            fprintf('%s\n', '                                                bridge, using standard CIDR notation.')
            fprintf('%s\n', '        This address must not be in any Subnet IP ranges, or the Kubernetes service address range.')
            fprintf('%s\n', '        For example, 172.17.0.1/16.')
            fprintf('%s\n', '    --enable-aad                              : Enable managed AAD feature for cluster.')
            fprintf('%s\n', '    --enable-addons -a                        : Enable the Kubernetes addons in a comma-separated')
            fprintf('%s\n', '                                                list.')
            fprintf('%s\n', '        These addons are available:')
            fprintf('%s\n', '            http_application_routing - configure ingress with automatic public DNS name creation.')
            fprintf('%s\n', '            monitoring - turn on Log Analytics monitoring. Uses the Log Analytics Default Workspace')
            fprintf('%s\n', '        if it exists, else creates one.')
            fprintf('%s\n', '                         Specify "--workspace-resource-id" to use an existing workspace.')
            fprintf('%s\n', '                         If monitoring addon is enabled --no-wait argument will have no effect')
            fprintf('%s\n', '            virtual-node - enable AKS Virtual Node (PREVIEW). Requires --subnet-name to provide the')
            fprintf('%s\n', '        name of an existing subnet for the Virtual Node to use.')
            fprintf('%s\n', '    --enable-cluster-autoscaler               : Enable cluster autoscaler, default value is false.')
            fprintf('%s\n', '        If specified, please make sure the kubernetes version is larger than 1.10.6.')
            fprintf('%s\n', '    --enable-managed-identity                 : Using a system assigned managed identity to manage')
            fprintf('%s\n', '                                                cluster resource group.')
            fprintf('%s\n', '    --enable-node-public-ip         [Preview] : Enable VMSS node public IP.')
            fprintf('%s\n', '        Argument ''--enable-node-public-ip'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --enable-private-cluster                  : Enable private cluster.')
            fprintf('%s\n', '    --generate-ssh-keys                       : Generate SSH public and private key files if')
            fprintf('%s\n', '                                                missing. The keys will be stored in the ~/.ssh')
            fprintf('%s\n', '                                                directory.')
            fprintf('%s\n', '    --kubernetes-version -k                   : Version of Kubernetes to use for creating the')
            fprintf('%s\n', '                                                cluster, such as "1.16.9".  Values from: `az aks')
            fprintf('%s\n', '                                                get-versions`.')
            fprintf('%s\n', '    --load-balancer-idle-timeout              : Load balancer idle timeout in minutes.')
            fprintf('%s\n', '        Desired idle timeout for load balancer outbound flows, default is 30 minutes. Please specify')
            fprintf('%s\n', '        a value in the range of [4, 120].')
            fprintf('%s\n', '    --load-balancer-managed-outbound-ip-count : Load balancer managed outbound IP count.')
            fprintf('%s\n', '        Desired number of managed outbound IPs for load balancer outbound connection. Valid for')
            fprintf('%s\n', '        Standard SKU load balancer cluster only.')
            fprintf('%s\n', '    --load-balancer-outbound-ip-prefixes      : Load balancer outbound IP prefix resource IDs.')
            fprintf('%s\n', '        Comma-separated public IP prefix resource IDs for load balancer outbound connection. Valid')
            fprintf('%s\n', '        for Standard SKU load balancer cluster only.')
            fprintf('%s\n', '    --load-balancer-outbound-ips              : Load balancer outbound IP resource IDs.')
            fprintf('%s\n', '        Comma-separated public IP resource IDs for load balancer outbound connection. Valid for')
            fprintf('%s\n', '        Standard SKU load balancer cluster only.')
            fprintf('%s\n', '    --load-balancer-outbound-ports            : Load balancer outbound allocated ports.')
            fprintf('%s\n', '        Desired static number of outbound ports per VM in the load balancer backend pool. By')
            fprintf('%s\n', '        default, set to 0 which uses the default allocation based on the number of VMs.')
            fprintf('%s\n', '    --load-balancer-sku                       : Azure Load Balancer SKU selection for your cluster.')
            fprintf('%s\n', '                                                basic or standard.')
            fprintf('%s\n', '        Select between Basic or Standard Azure Load Balancer SKU for your AKS cluster.')
            fprintf('%s\n', '    --location -l                             : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                                You can configure the default location using `az')
            fprintf('%s\n', '                                                configure --defaults location=<location>`.')
            fprintf('%s\n', '    --max-count                               : Maximum nodes count used for autoscaler, when "--')
            fprintf('%s\n', '                                                enable-cluster-autoscaler" specified. Please specify')
            fprintf('%s\n', '                                                the value in the range of [1, 100].')
            fprintf('%s\n', '    --max-pods -m                             : The maximum number of pods deployable to a node.')
            fprintf('%s\n', '        If not specified, defaults to 110, or 30 for advanced networking configurations.')
            fprintf('%s\n', '    --min-count                               : Minimum nodes count used for autoscaler, when "--')
            fprintf('%s\n', '                                                enable-cluster-autoscaler" specified. Please specify')
            fprintf('%s\n', '                                                the value in the range of [1, 100].')
            fprintf('%s\n', '    --network-plugin                          : The Kubernetes network plugin to use.  Allowed')
            fprintf('%s\n', '                                                values: azure, kubenet.')
            fprintf('%s\n', '        Specify "azure" for advanced networking configurations. Defaults to "kubenet".')
            fprintf('%s\n', '    --network-policy                          : The Kubernetes network policy to use.')
            fprintf('%s\n', '        Using together with "azure" network plugin.')
            fprintf('%s\n', '        Specify "azure" for Azure network policy manager and "calico" for calico network policy')
            fprintf('%s\n', '        controller.')
            fprintf('%s\n', '        Defaults to "" (network policy disabled).')
            fprintf('%s\n', '    --no-ssh-key -x                           : Do not use or create a local SSH key.')
            fprintf('%s\n', '        To access nodes after creating a cluster with this option, use the Azure Portal.')
            fprintf('%s\n', '    --no-wait                                 : Do not wait for the long-running operation to')
            fprintf('%s\n', '                                                finish.')
            fprintf('%s\n', '    --node-count -c                           : Number of nodes in the Kubernetes node pool. After')
            fprintf('%s\n', '                                                creating a cluster, you can change the size of its')
            fprintf('%s\n', '                                                node pool with `az aks scale`.  Default: 3.')
            fprintf('%s\n', '    --node-osdisk-size                        : Size in GB of the OS disk for each node in the node')
            fprintf('%s\n', '                                                pool. Minimum 30 GB.')
            fprintf('%s\n', '    --node-vm-size -s                         : Size of Virtual Machines to create as Kubernetes')
            fprintf('%s\n', '                                                nodes.  Default: Standard_DS2_v2.')
            fprintf('%s\n', '    --nodepool-labels                         : Space-separated labels: key[=value] [key[=value]')
            fprintf('%s\n', '                                                ...]. You can not change the node labels through CLI')
            fprintf('%s\n', '                                                after creation. See https://aka.ms/node-labels for')
            fprintf('%s\n', '                                                syntax of labels.')
            fprintf('%s\n', '    --nodepool-name                           : Node pool name, up to 12 alphanumeric characters.')
            fprintf('%s\n', '                                                Default: nodepool1.')
            fprintf('%s\n', '    --nodepool-tags                           : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                                Use "" to clear existing tags.')
            fprintf('%s\n', '    --outbound-type                           : How outbound traffic will be configured for a')
            fprintf('%s\n', '                                                cluster.  Allowed values: loadBalancer,')
            fprintf('%s\n', '                                                userDefinedRouting.')
            fprintf('%s\n', '        Select between loadBalancer and userDefinedRouting. If not set, defaults to type')
            fprintf('%s\n', '        loadBalancer. Requires --vnet-subnet-id to be provided with a preconfigured route table and')
            fprintf('%s\n', '        --load-balancer-sku to be Standard.')
            fprintf('%s\n', '    --pod-cidr                                : A CIDR notation IP range from which to assign pod')
            fprintf('%s\n', '                                                IPs when kubenet is used.')
            fprintf('%s\n', '        This range must not overlap with any Subnet IP ranges. For example, 172.244.0.0/16.')
            fprintf('%s\n', '    --service-cidr                            : A CIDR notation IP range from which to assign')
            fprintf('%s\n', '                                                service cluster IPs.')
            fprintf('%s\n', '        This range must not overlap with any Subnet IP ranges. For example, 10.0.0.0/16.')
            fprintf('%s\n', '    --service-principal                       : Service principal used for authentication to Azure')
            fprintf('%s\n', '                                                APIs.')
            fprintf('%s\n', '        If not specified, a new service principal is created and cached at')
            fprintf('%s\n', '        $HOME/.azure/aksServicePrincipal.json to be used by subsequent `az aks` commands.')
            fprintf('%s\n', '    --skip-subnet-role-assignment             : Skip role assignment for subnet (advanced')
            fprintf('%s\n', '                                                networking).')
            fprintf('%s\n', '        If specified, please make sure your service principal has the access to your subnet.')
            fprintf('%s\n', '    --ssh-key-value                           : Public key path or key contents to install on node')
            fprintf('%s\n', '                                                VMs for SSH access. For example, ''ssh-rsa')
            fprintf('%s\n', '                                                AAAAB...snip...UcyupgH azureuser@linuxvm''.  Default:')
            fprintf('%s\n', '                                                ~/.ssh/id_rsa.pub.')
            fprintf('%s\n', '    --tags                                    : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                                Use '''' to clear existing tags.')
            fprintf('%s\n', '    --uptime-sla                              : Enable a paid managed cluster service with a')
            fprintf('%s\n', '                                                financially backed SLA.')
            fprintf('%s\n', '    --vm-set-type                             : Agent pool vm set type. VirtualMachineScaleSets or')
            fprintf('%s\n', '                                                AvailabilitySet.')
            fprintf('%s\n', '    --vnet-subnet-id                          : The ID of a subnet in an existing VNet into which to')
            fprintf('%s\n', '                                                deploy the cluster.')
            fprintf('%s\n', '    --windows-admin-password                  : Password to create on Windows node VMs.')
            fprintf('%s\n', '    --windows-admin-username                  : Username to create on Windows node VMs.')
            fprintf('%s\n', '    --workspace-resource-id                   : The resource ID of an existing Log Analytics')
            fprintf('%s\n', '                                                Workspace to use for storing monitoring data. If not')
            fprintf('%s\n', '                                                specified, uses the default Log Analytics Workspace')
            fprintf('%s\n', '                                                if it exists, otherwise creates one.')
            fprintf('%s\n', '    --zones -z                                : Availability zones where agent nodes will be placed.')
            fprintf('%s\n', '                                                Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a Kubernetes cluster with an existing SSH public key.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --ssh-key-value /path/to/publickey')
            fprintf('%s\n', '    Create a Kubernetes cluster with a specific version.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --kubernetes-version 1.16.9')
            fprintf('%s\n', '    Create a Kubernetes cluster with a larger node pool.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --node-count 7')
            fprintf('%s\n', '    Create a kubernetes cluster with k8s 1.13.9 but use vmas.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --kubernetes-version 1.16.9 --vm-set-')
            fprintf('%s\n', '        type AvailabilitySet')
            fprintf('%s\n', '    Create a kubernetes cluster with default kubernetes version, default SKU load balancer')
            fprintf('%s\n', '    (Standard) and default vm set type (VirtualMachineScaleSets).')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster')
            fprintf('%s\n', '    Create a kubernetes cluster with standard SKU load balancer and two AKS created IPs for the load')
            fprintf('%s\n', '    balancer outbound connection usage.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-managed-outbound-ip-')
            fprintf('%s\n', '        count 2')
            fprintf('%s\n', '    Create a kubernetes cluster with a standard SKU load balancer, with two outbound AKS managed IPs')
            fprintf('%s\n', '    an idle flow timeout of 5 minutes and 8000 allocated ports per machine')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-managed-outbound-ip-')
            fprintf('%s\n', '        count 2 --load-balancer-idle-timeout 5 --load-balancer-outbound-ports 8000')
            fprintf('%s\n', '    Create a kubernetes cluster with standard SKU load balancer and use the provided public IPs for')
            fprintf('%s\n', '    the load balancer outbound connection usage.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-outbound-ips <ip-')
            fprintf('%s\n', '        resource-id-1,ip-resource-id-2>')
            fprintf('%s\n', '    Create a kubernetes cluster with standard SKU load balancer and use the provided public IP')
            fprintf('%s\n', '    prefixes for the load balancer outbound connection usage.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-outbound-ip-prefixes')
            fprintf('%s\n', '        <ip-prefix-resource-id-1,ip-prefix-resource-id-2>')
            fprintf('%s\n', '    Create a kubernetes cluster with basic SKU load balancer and AvailabilitySet vm set type.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-sku basic --vm-set-type')
            fprintf('%s\n', '        AvailabilitySet')
            fprintf('%s\n', '    Create a kubernetes cluster with authorized apiserver IP ranges.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --api-server-authorized-ip-ranges')
            fprintf('%s\n', '        193.168.1.0/24,194.168.1.0/24,195.168.1.0')
            fprintf('%s\n', '    Create a kubernetes cluster which enables managed identity.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --enable-managed-identity')
            fprintf('%s\n', '    Create a kubernetes cluster with userDefinedRouting, standard load balancer SKU and a custom')
            fprintf('%s\n', '    subnet preconfigured with a route table')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --outbound-type userDefinedRouting')
            fprintf('%s\n', '        --load-balancer-sku standard --vnet-subnet-id customUserSubnetVnetID')
            fprintf('%s\n', '    Create a kubernetes cluster with supporting Windows agent pools.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --load-balancer-sku Standard --network-')
            fprintf('%s\n', '        plugin azure --windows-admin-username azure --windows-admin-password ''replacePassword1234$''')
            fprintf('%s\n', '    Create a kubernetes cluster with managed AAD enabled.')
            fprintf('%s\n', '        az aks create -g MyResourceGroup -n MyManagedCluster --enable-aad --aad-admin-group-object-')
            fprintf('%s\n', '        ids <id-1,id-2> --aad-tenant-id <id>')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
