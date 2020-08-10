classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az aro create : Create a cluster.
            this.BaseCmd = 'az aro create ';
        end
        function this = master_subnet(this, varargin)
            % Name or ID of master vnet subnet.  If name is supplied, `--vnet` must be supplied.
            this.Options = [this.Options, '--master-subnet', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = worker_subnet(this, varargin)
            % Name or ID of worker vnet subnet.  If name is supplied, `--vnet` must be supplied.
            this.Options = [this.Options, '--worker-subnet', varargin{:}];
        end

        function this = apiserver_visibility(this, varargin)
            % API server visibility.  Allowed values: Private, Public.
            this.Options = [this.Options, '--apiserver-visibility', varargin{:}];
        end

        function this = client_id(this, varargin)
            % Client ID of cluster service principal.
            this.Options = [this.Options, '--client-id', varargin{:}];
        end

        function this = client_secret(this, varargin)
            % Client secret of cluster service principal.
            this.Options = [this.Options, '--client-secret', varargin{:}];
        end

        function this = cluster_resource_group(this, varargin)
            % Resource group of cluster.
            this.Options = [this.Options, '--cluster-resource-group', varargin{:}];
        end

        function this = domain(this, varargin)
            % Domain of cluster.
            this.Options = [this.Options, '--domain', varargin{:}];
        end

        function this = ingress_visibility(this, varargin)
            % Ingress visibility.  Allowed values: Private, Public.
            this.Options = [this.Options, '--ingress-visibility', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = master_vm_size(this, varargin)
            % Size of master VMs.
            this.Options = [this.Options, '--master-vm-size', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = pod_cidr(this, varargin)
            % CIDR of pod network.
            this.Options = [this.Options, '--pod-cidr', varargin{:}];
        end

        function this = pull_secret(this, varargin)
            % Pull secret of cluster.
            this.Options = [this.Options, '--pull-secret', varargin{:}];
        end

        function this = service_cidr(this, varargin)
            % CIDR of service network.
            this.Options = [this.Options, '--service-cidr', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet(this, varargin)
            % Name or ID of vnet.  If name is supplied, `--vnet-resource- group` must be supplied.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = vnet_resource_group(this, varargin)
            % Name of vnet resource group.
            this.Options = [this.Options, '--vnet-resource-group', varargin{:}];
        end

        function this = worker_count(this, varargin)
            % Count of worker VMs.
            this.Options = [this.Options, '--worker-count', varargin{:}];
        end

        function this = worker_vm_disk_size_gb(this, varargin)
            % Disk size in GB of worker VMs.
            this.Options = [this.Options, '--worker-vm-disk-size-gb', varargin{:}];
        end

        function this = worker_vm_size(this, varargin)
            % Size of worker VMs.
            this.Options = [this.Options, '--worker-vm-size', varargin{:}];
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
            fprintf('%s\n', '    az aro create : Create a cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --master-subnet     [Required] : Name or ID of master vnet subnet.  If name is supplied,')
            fprintf('%s\n', '                                     `--vnet` must be supplied.')
            fprintf('%s\n', '    --name -n           [Required] : Name of cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --worker-subnet     [Required] : Name or ID of worker vnet subnet.  If name is supplied,')
            fprintf('%s\n', '                                     `--vnet` must be supplied.')
            fprintf('%s\n', '    --apiserver-visibility         : API server visibility.  Allowed values: Private, Public.')
            fprintf('%s\n', '    --client-id                    : Client ID of cluster service principal.')
            fprintf('%s\n', '    --client-secret                : Client secret of cluster service principal.')
            fprintf('%s\n', '    --cluster-resource-group       : Resource group of cluster.')
            fprintf('%s\n', '    --domain                       : Domain of cluster.')
            fprintf('%s\n', '    --ingress-visibility           : Ingress visibility.  Allowed values: Private, Public.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --master-vm-size               : Size of master VMs.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --pod-cidr                     : CIDR of pod network.')
            fprintf('%s\n', '    --pull-secret                  : Pull secret of cluster.')
            fprintf('%s\n', '    --service-cidr                 : CIDR of service network.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --vnet                         : Name or ID of vnet.  If name is supplied, `--vnet-resource-')
            fprintf('%s\n', '                                     group` must be supplied.')
            fprintf('%s\n', '    --vnet-resource-group          : Name of vnet resource group.')
            fprintf('%s\n', '    --worker-count                 : Count of worker VMs.')
            fprintf('%s\n', '    --worker-vm-disk-size-gb       : Disk size in GB of worker VMs.')
            fprintf('%s\n', '    --worker-vm-size               : Size of worker VMs.')
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
            fprintf('%s\n', '    Create an OpenShift cluster')
            fprintf('%s\n', '        az aro create --resource-group MyResourceGroup --name MyCluster  --vnet MyVnet --master-')
            fprintf('%s\n', '        subnet MyMasterSubnet --worker-subnet MyWorkerSubnet')
            fprintf('%s\n', '    Create an OpenShift cluster with 5 compute nodes and Red Hat Pull Secret')
            fprintf('%s\n', '        az aro create --resource-group MyResourceGroup --name MyCluster --vnet MyVnet --master-')
            fprintf('%s\n', '        subnet MyMasterSubnet --worker-subnet MyWorkerSubnet --worker-count 5 --pull-secret')
            fprintf('%s\n', '        @pullsecret.txt')
            fprintf('%s\n', '    Create a Private OpenShift cluster')
            fprintf('%s\n', '        az aro create --resource-group MyResourceGroup --name MyCluster --vnet MyVnet --master-')
            fprintf('%s\n', '        subnet MyMasterSubnet --worker-subnet MyWorkerSubnet --apiserver-visibility Private')
            fprintf('%s\n', '        --ingress-visibility Private')
            fprintf('%s\n', 'For more specific examples, use: az find "az aro create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
