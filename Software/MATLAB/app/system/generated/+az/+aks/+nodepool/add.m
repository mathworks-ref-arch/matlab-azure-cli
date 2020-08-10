classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az aks nodepool add : Add a node pool to the managed Kubernetes cluster.
            this.BaseCmd = 'az aks nodepool add ';
        end
        function this = cluster_name(this, varargin)
            % The cluster name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The node pool name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = enable_cluster_autoscaler(this, varargin)
            % Enable cluster autoscaler.
            this.Options = [this.Options, '--enable-cluster-autoscaler', varargin{:}];
        end

        function this = enable_node_public_ip(this, varargin)
            % Enable VMSS node public IP. Argument '--enable-node-public-ip' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-node-public-ip', varargin{:}];
        end

        function this = kubernetes_version(this, varargin)
            % Version of Kubernetes to use for creating the cluster, such as "1.16.9".  Values from: `az aks get-versions`.
            this.Options = [this.Options, '--kubernetes-version', varargin{:}];
        end

        function this = labels(this, varargin)
            % The node labels for the node pool. You can't change the node labels through CLI after the node pool is created. See https://aka.ms/node-labels for syntax of labels.
            this.Options = [this.Options, '--labels', varargin{:}];
        end

        function this = max_count(this, varargin)
            % Maximum nodes count used for autoscaler, when "--enable- cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = max_pods(this, varargin)
            % The maximum number of pods deployable to a node. If not specified, defaults to 110, or 30 for advanced networking configurations.
            this.Options = [this.Options, '--max-pods', varargin{:}];
        end

        function this = min_count(this, varargin)
            % Minimum nodes count used for autoscaler, when "--enable- cluster-autoscaler" specified. Please specify the value in the range of [1, 100].
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = mode(this, varargin)
            % The mode for a node pool which defines a node pool's primary function. If set as "System", AKS prefers system pods scheduling to node pools with mode `System`. Learn more at https://aka.ms/aks/nodepool/mode.  Allowed values: System, User.  Default: User.
            this.Options = [this.Options, '--mode', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = node_count(this, varargin)
            % Number of nodes in the Kubernetes agent pool. After creating a cluster, you can change the size of its node pool with `az aks scale`.  Default: 3.
            this.Options = [this.Options, '--node-count', varargin{:}];
        end

        function this = node_osdisk_size(this, varargin)
            % Size in GB of the OS disk for each node in the agent pool. Minimum 30 GB.
            this.Options = [this.Options, '--node-osdisk-size', varargin{:}];
        end

        function this = node_taints(this, varargin)
            % The node taints for the node pool. You can't change the node taints through CLI after the node pool is created.
            this.Options = [this.Options, '--node-taints', varargin{:}];
        end

        function this = node_vm_size(this, varargin)
            % Size of Virtual Machines to create as Kubernetes nodes.
            this.Options = [this.Options, '--node-vm-size', varargin{:}];
        end

        function this = os_type(this, varargin)
            % The OS Type. Linux or Windows.  Default: Linux.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet_subnet_id(this, varargin)
            % The ID of a subnet in an existing VNet into which to deploy the cluster.
            this.Options = [this.Options, '--vnet-subnet-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az aks nodepool add"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az aks nodepool add : Add a node pool to the managed Kubernetes cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name         [Required] : The cluster name.')
            fprintf('%s\n', '    --name -n              [Required] : The node pool name.')
            fprintf('%s\n', '    --resource-group -g    [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-cluster-autoscaler -e    : Enable cluster autoscaler.')
            fprintf('%s\n', '    --enable-node-public-ip [Preview] : Enable VMSS node public IP.')
            fprintf('%s\n', '        Argument ''--enable-node-public-ip'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --kubernetes-version -k           : Version of Kubernetes to use for creating the cluster, such')
            fprintf('%s\n', '                                        as "1.16.9".  Values from: `az aks get-versions`.')
            fprintf('%s\n', '    --labels                          : The node labels for the node pool. You can''t change the node')
            fprintf('%s\n', '                                        labels through CLI after the node pool is created. See')
            fprintf('%s\n', '                                        https://aka.ms/node-labels for syntax of labels.')
            fprintf('%s\n', '    --max-count                       : Maximum nodes count used for autoscaler, when "--enable-')
            fprintf('%s\n', '                                        cluster-autoscaler" specified. Please specify the value in')
            fprintf('%s\n', '                                        the range of [1, 100].')
            fprintf('%s\n', '    --max-pods -m                     : The maximum number of pods deployable to a node.')
            fprintf('%s\n', '        If not specified, defaults to 110, or 30 for advanced networking configurations.')
            fprintf('%s\n', '    --min-count                       : Minimum nodes count used for autoscaler, when "--enable-')
            fprintf('%s\n', '                                        cluster-autoscaler" specified. Please specify the value in')
            fprintf('%s\n', '                                        the range of [1, 100].')
            fprintf('%s\n', '    --mode                            : The mode for a node pool which defines a node pool''s primary')
            fprintf('%s\n', '                                        function. If set as "System", AKS prefers system pods')
            fprintf('%s\n', '                                        scheduling to node pools with mode `System`. Learn more at')
            fprintf('%s\n', '                                        https://aka.ms/aks/nodepool/mode.  Allowed values: System,')
            fprintf('%s\n', '                                        User.  Default: User.')
            fprintf('%s\n', '    --no-wait                         : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --node-count -c                   : Number of nodes in the Kubernetes agent pool. After creating')
            fprintf('%s\n', '                                        a cluster, you can change the size of its node pool with `az')
            fprintf('%s\n', '                                        aks scale`.  Default: 3.')
            fprintf('%s\n', '    --node-osdisk-size                : Size in GB of the OS disk for each node in the agent pool.')
            fprintf('%s\n', '                                        Minimum 30 GB.')
            fprintf('%s\n', '    --node-taints                     : The node taints for the node pool. You can''t change the node')
            fprintf('%s\n', '                                        taints through CLI after the node pool is created.')
            fprintf('%s\n', '    --node-vm-size -s                 : Size of Virtual Machines to create as Kubernetes nodes.')
            fprintf('%s\n', '    --os-type                         : The OS Type. Linux or Windows.  Default: Linux.')
            fprintf('%s\n', '    --tags                            : Space-separated tags: key[=value] [key[=value] ...]. Use ''''')
            fprintf('%s\n', '                                        to clear existing tags.')
            fprintf('%s\n', '    --vnet-subnet-id                  : The ID of a subnet in an existing VNet into which to deploy')
            fprintf('%s\n', '                                        the cluster.')
            fprintf('%s\n', '    --zones -z                        : Availability zones where agent nodes will be placed.')
            fprintf('%s\n', '                                        Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks nodepool add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
