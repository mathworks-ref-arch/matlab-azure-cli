classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az aks update : Update a managed Kubernetes cluster.
            this.BaseCmd = 'az aks update ';
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

        function this = aad_tenant_id(this, varargin)
            % The ID of an Azure Active Directory tenant.
            this.Options = [this.Options, '--aad-tenant-id', varargin{:}];
        end

        function this = api_server_authorized_ip_ranges(this, varargin)
            % Comma seperated list of authorized apiserver IP ranges. Set to "" to allow all traffic on a previously restricted cluster. Set to 0.0.0.0/32 to restrict apiserver traffic to node pools.
            this.Options = [this.Options, '--api-server-authorized-ip-ranges', varargin{:}];
        end

        function this = attach_acr(this, varargin)
            % Grant the 'acrpull' role assignment to the ACR specified by name or resource ID.
            this.Options = [this.Options, '--attach-acr', varargin{:}];
        end

        function this = detach_acr(this, varargin)
            % Disable the 'acrpull' role assignment to the ACR specified by name or resource ID.
            this.Options = [this.Options, '--detach-acr', varargin{:}];
        end

        function this = disable_cluster_autoscaler(this, varargin)
            % Disable cluster autoscaler.
            this.Options = [this.Options, '--disable-cluster-autoscaler', varargin{:}];
        end

        function this = enable_aad(this, varargin)
            % Enable managed AAD feature for cluster.
            this.Options = [this.Options, '--enable-aad', varargin{:}];
        end

        function this = enable_cluster_autoscaler(this, varargin)
            % Enable cluster autoscaler.
            this.Options = [this.Options, '--enable-cluster-autoscaler', varargin{:}];
        end

        function this = load_balancer_idle_timeout(this, varargin)
            % Load balancer idle timeout in minutes. Desired idle timeout for load balancer outbound flows, default is 30 minutes. Please specify a value in the range of [4, 120].
            this.Options = [this.Options, '--load-balancer-idle-timeout', varargin{:}];
        end

        function this = load_balancer_managed_outbound_ip_count(this, varargin)
            % Load balancer managed outbound IP count. Desired number of managed outbound IPs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only. If updated, it will wipe off the existing setting on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs and Load balancer outbound IP prefix resource IDs.
            this.Options = [this.Options, '--load-balancer-managed-outbound-ip-count', varargin{:}];
        end

        function this = load_balancer_outbound_ip_prefixes(this, varargin)
            % Load balancer outbound IP prefix resource IDs. Comma-separated public IP prefix resource IDs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only. If updated, it will wipe off the existing setting on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs and Load balancer outbound IP prefix resource IDs.
            this.Options = [this.Options, '--load-balancer-outbound-ip-prefixes', varargin{:}];
        end

        function this = load_balancer_outbound_ips(this, varargin)
            % Load balancer outbound IP resource IDs. Comma-separated public IP resource IDs for load balancer outbound connection. Valid for Standard SKU load balancer cluster only. If updated, it will wipe off the existing setting on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs and Load balancer outbound IP prefix resource IDs.
            this.Options = [this.Options, '--load-balancer-outbound-ips', varargin{:}];
        end

        function this = load_balancer_outbound_ports(this, varargin)
            % Load balancer outbound allocated ports. Desired static number of outbound ports per VM in the load balancer backend pool. By default, set to 0 which uses the default allocation based on the number of VMs.
            this.Options = [this.Options, '--load-balancer-outbound-ports', varargin{:}];
        end

        function this = max_count(this, varargin)
            % Maximum nodes count used for autoscaler, when "-- enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = min_count(this, varargin)
            % Minimum nodes count used for autoscaler, when "-- enable-cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = update_cluster_autoscaler(this, varargin)
            % Update min-count or max-count for cluster autoscaler.
            this.Options = [this.Options, '--update-cluster-autoscaler', varargin{:}];
        end

        function this = uptime_sla(this, varargin)
            % Enable a paid managed cluster service with a financially backed SLA.
            this.Options = [this.Options, '--uptime-sla', varargin{:}];
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
            fprintf('%s\n', '    az aks update : Update a managed Kubernetes cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                      [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --aad-admin-group-object-ids              : Comma seperated list of aad group object IDs that')
            fprintf('%s\n', '                                                will be set as cluster admin.')
            fprintf('%s\n', '    --aad-tenant-id                           : The ID of an Azure Active Directory tenant.')
            fprintf('%s\n', '    --api-server-authorized-ip-ranges         : Comma seperated list of authorized apiserver IP')
            fprintf('%s\n', '                                                ranges. Set to "" to allow all traffic on a')
            fprintf('%s\n', '                                                previously restricted cluster. Set to 0.0.0.0/32 to')
            fprintf('%s\n', '                                                restrict apiserver traffic to node pools.')
            fprintf('%s\n', '    --attach-acr                              : Grant the ''acrpull'' role assignment to the ACR')
            fprintf('%s\n', '                                                specified by name or resource ID.')
            fprintf('%s\n', '    --detach-acr                              : Disable the ''acrpull'' role assignment to the ACR')
            fprintf('%s\n', '                                                specified by name or resource ID.')
            fprintf('%s\n', '    --disable-cluster-autoscaler -d           : Disable cluster autoscaler.')
            fprintf('%s\n', '    --enable-aad                              : Enable managed AAD feature for cluster.')
            fprintf('%s\n', '    --enable-cluster-autoscaler -e            : Enable cluster autoscaler.')
            fprintf('%s\n', '    --load-balancer-idle-timeout              : Load balancer idle timeout in minutes.')
            fprintf('%s\n', '        Desired idle timeout for load balancer outbound flows, default is 30 minutes. Please specify')
            fprintf('%s\n', '        a value in the range of [4, 120].')
            fprintf('%s\n', '    --load-balancer-managed-outbound-ip-count : Load balancer managed outbound IP count.')
            fprintf('%s\n', '        Desired number of managed outbound IPs for load balancer outbound connection. Valid for')
            fprintf('%s\n', '        Standard SKU load balancer cluster only. If updated, it will wipe off the existing setting')
            fprintf('%s\n', '        on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs and Load')
            fprintf('%s\n', '        balancer outbound IP prefix resource IDs.')
            fprintf('%s\n', '    --load-balancer-outbound-ip-prefixes      : Load balancer outbound IP prefix resource IDs.')
            fprintf('%s\n', '        Comma-separated public IP prefix resource IDs for load balancer outbound connection. Valid')
            fprintf('%s\n', '        for Standard SKU load balancer cluster only. If updated, it will wipe off the existing')
            fprintf('%s\n', '        setting on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs')
            fprintf('%s\n', '        and Load balancer outbound IP prefix resource IDs.')
            fprintf('%s\n', '    --load-balancer-outbound-ips              : Load balancer outbound IP resource IDs.')
            fprintf('%s\n', '        Comma-separated public IP resource IDs for load balancer outbound connection. Valid for')
            fprintf('%s\n', '        Standard SKU load balancer cluster only. If updated, it will wipe off the existing setting')
            fprintf('%s\n', '        on Load balancer managed outbound IP count; Load balancer outbound IP resource IDs and Load')
            fprintf('%s\n', '        balancer outbound IP prefix resource IDs.')
            fprintf('%s\n', '    --load-balancer-outbound-ports            : Load balancer outbound allocated ports.')
            fprintf('%s\n', '        Desired static number of outbound ports per VM in the load balancer backend pool. By')
            fprintf('%s\n', '        default, set to 0 which uses the default allocation based on the number of VMs.')
            fprintf('%s\n', '    --max-count                               : Maximum nodes count used for autoscaler, when "--')
            fprintf('%s\n', '                                                enable-cluster-autoscaler" specified. Please specify')
            fprintf('%s\n', '                                                the value in the range of [1, 100].')
            fprintf('%s\n', '    --min-count                               : Minimum nodes count used for autoscaler, when "--')
            fprintf('%s\n', '                                                enable-cluster-autoscaler" specified. Please specify')
            fprintf('%s\n', '                                                the value in the range of [1, 100].')
            fprintf('%s\n', '    --no-wait                                 : Do not wait for the long-running operation to')
            fprintf('%s\n', '                                                finish.')
            fprintf('%s\n', '    --update-cluster-autoscaler -u            : Update min-count or max-count for cluster')
            fprintf('%s\n', '                                                autoscaler.')
            fprintf('%s\n', '    --uptime-sla                              : Enable a paid managed cluster service with a')
            fprintf('%s\n', '                                                financially backed SLA.')
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
            fprintf('%s\n', '    Update a kubernetes cluster with standard SKU load balancer to use two AKS created IPs for the')
            fprintf('%s\n', '    load balancer outbound connection usage.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --load-balancer-managed-outbound-ip-')
            fprintf('%s\n', '        count 2')
            fprintf('%s\n', '    Update a kubernetes cluster with standard SKU load balancer to use the provided public IPs for')
            fprintf('%s\n', '    the load balancer outbound connection usage.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --load-balancer-outbound-ips <ip-')
            fprintf('%s\n', '        resource-id-1,ip-resource-id-2>')
            fprintf('%s\n', '    Create a kubernetes cluster with a standard SKU load balancer, with two outbound AKS managed IPs')
            fprintf('%s\n', '    an idle flow timeout of 5 minutes and 8000 allocated ports per machine')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --load-balancer-managed-outbound-ip-')
            fprintf('%s\n', '        count 2 --load-balancer-idle-timeout 5 --load-balancer-outbound-ports 8000')
            fprintf('%s\n', '    Update a kubernetes cluster with standard SKU load balancer to use the provided public IP')
            fprintf('%s\n', '    prefixes for the load balancer outbound connection usage.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --load-balancer-outbound-ip-prefixes')
            fprintf('%s\n', '        <ip-prefix-resource-id-1,ip-prefix-resource-id-2>')
            fprintf('%s\n', '    Attach AKS cluster to ACR by name "acrName"')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --attach-acr acrName')
            fprintf('%s\n', '    Update a kubernetes cluster with authorized apiserver ip ranges.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --api-server-authorized-ip-ranges')
            fprintf('%s\n', '        193.168.1.0/24,194.168.1.0/24')
            fprintf('%s\n', '    Disable authorized apiserver ip ranges feature for a kubernetes cluster.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --api-server-authorized-ip-ranges ""')
            fprintf('%s\n', '    Restrict apiserver traffic in a kubernetes cluster to agentpool nodes.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --api-server-authorized-ip-ranges')
            fprintf('%s\n', '        0.0.0.0/32')
            fprintf('%s\n', '    Update a AKS-managed AAD cluster with tenant ID or admin group object IDs.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --aad-admin-group-object-ids')
            fprintf('%s\n', '        <id-1,id-2> --aad-tenant-id <id>')
            fprintf('%s\n', '    Migrate a AKS AAD-Integrated cluster or a non-AAD cluster to a AKS-managed AAD cluster.')
            fprintf('%s\n', '        az aks update -g MyResourceGroup -n MyManagedCluster --enable-aad --aad-admin-group-object-')
            fprintf('%s\n', '        ids <id-1,id-2> --aad-tenant-id <id>')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
