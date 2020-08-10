classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az hdinsight create : Create a new cluster.
            this.BaseCmd = 'az hdinsight create ';
        end
        function this = name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list- locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_validation_timeout(this, varargin)
            % Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted.
            this.Options = [this.Options, '--no-validation-timeout', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Cluster Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = type(this, varargin)
            % Type of HDInsight cluster, like: hadoop, interactivehive, hbase, kafka, storm, spark, rserver, mlservices. See also: https://docs.micros oft.com/azure/hdinsight/hdinsight-hadoop- provision-linux-clusters#cluster-types.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = cluster_configurations(this, varargin)
            % Extra configurations of various components. Configurations may be supplied from a file using the `@{path}` syntax or a JSON string. See also: h ttps://docs.microsoft.com/azure/hdinsight/hdinsigh t-hadoop-customize-cluster-bootstrap.
            this.Options = [this.Options, '--cluster-configurations', varargin{:}];
        end

        function this = cluster_tier(this, varargin)
            % The tier of the cluster.  Allowed values: Premium, Standard.
            this.Options = [this.Options, '--cluster-tier', varargin{:}];
        end

        function this = component_version(this, varargin)
            % The versions of various Hadoop components, in space-separated versions in 'component=version' format. Example: Spark=2.0 Hadoop=2.7.3 See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-component-versioning#hadoop-components- available-with-different-hdinsight-versions.
            this.Options = [this.Options, '--component-version', varargin{:}];
        end

        function this = esp(this, varargin)
            % Specify to create cluster with Enterprise Security Package. If omitted, creating cluster with Enterprise Security Package will not not allowed.
            this.Options = [this.Options, '--esp', varargin{:}];
        end

        function this = minimal_tls_version(this, varargin)
            % The minimal supported TLS version.  Allowed values: 1.0, 1.1, 1.2.
            this.Options = [this.Options, '--minimal-tls-version', varargin{:}];
        end

        function this = version(this, varargin)
            % The HDInsight cluster version. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-component-versioning#supported-hdinsight- versions.  Default: default. Customer Managed Key Arguments
            this.Options = [this.Options, '--version', varargin{:}];
        end

        function this = encryption_algorithm(this, varargin)
            % Algorithm identifier for encryption.  Allowed values: RSA-OAEP, RSA-OAEP-256, RSA1_5.  Default: RSA-OAEP.
            this.Options = [this.Options, '--encryption-algorithm', varargin{:}];
        end

        function this = encryption_key_name(this, varargin)
            % Key name that is used for enabling disk encryption.
            this.Options = [this.Options, '--encryption-key-name', varargin{:}];
        end

        function this = encryption_key_version(this, varargin)
            % Key version that is used for enabling disk encryption.
            this.Options = [this.Options, '--encryption-key-version', varargin{:}];
        end

        function this = encryption_vault_uri(this, varargin)
            % Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net. Domain Service Arguments
            this.Options = [this.Options, '--encryption-vault-uri', varargin{:}];
        end

        function this = cluster_admin_account(this, varargin)
            % The domain user account that will have admin privileges on the cluster. Required only when create cluster with Enterprise Security Package.
            this.Options = [this.Options, '--cluster-admin-account', varargin{:}];
        end

        function this = cluster_admin_password(this, varargin)
            % The domain admin password. Required only when create cluster with Enterprise Security Package.
            this.Options = [this.Options, '--cluster-admin-password', varargin{:}];
        end

        function this = cluster_users_group_dns(this, varargin)
            % A space-delimited list of Distinguished Names for cluster user groups. Required only when create cluster with Enterprise Security Package.
            this.Options = [this.Options, '--cluster-users-group-dns', varargin{:}];
        end

        function this = domain(this, varargin)
            % The name or resource ID of the user's Azure Active Directory Domain Service. Required only when create cluster with Enterprise Security Package.
            this.Options = [this.Options, '--domain', varargin{:}];
        end

        function this = ldaps_urls(this, varargin)
            % A space-delimited list of LDAPS protocol URLs to communicate with the Active Directory. Required only when create cluster with Enterprise Security Package. Encryption In Transit Arguments
            this.Options = [this.Options, '--ldaps-urls', varargin{:}];
        end

        function this = encryption_in_transit(this, varargin)
            % Indicates whether enable encryption in transit. Allowed values: false, true. HTTP Arguments
            this.Options = [this.Options, '--encryption-in-transit', varargin{:}];
        end

        function this = http_password(this, varargin)
            % HTTP password for the cluster. Will prompt if not given.
            this.Options = [this.Options, '--http-password', varargin{:}];
        end

        function this = http_user(this, varargin)
            % HTTP username for the cluster.  Default: admin. Kafka Rest Proxy Arguments
            this.Options = [this.Options, '--http-user', varargin{:}];
        end

        function this = kafka_client_group_id(this, varargin)
            % The client AAD security group id for Kafka Rest Proxy.
            this.Options = [this.Options, '--kafka-client-group-id', varargin{:}];
        end

        function this = kafka_client_group_name(this, varargin)
            % The client AAD security group name for Kafka Rest Proxy. Managed Service Identity Arguments
            this.Options = [this.Options, '--kafka-client-group-name', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % The name or ID of user assigned identity. Network Arguments
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name or ID of subnet. If name is supplied, `--vnet-name` must be supplied.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The name of a virtual network. Node Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = edgenode_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-hadoop-provision-linux-clusters#configure- cluster-size.
            this.Options = [this.Options, '--edgenode-size', varargin{:}];
        end

        function this = headnode_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-hadoop-provision-linux-clusters#configure- cluster-size.  Default: large.
            this.Options = [this.Options, '--headnode-size', varargin{:}];
        end

        function this = kafka_management_node_count(this, varargin)
            % The number of kafka management node in the cluster.  Default: 2.
            this.Options = [this.Options, '--kafka-management-node-count', varargin{:}];
        end

        function this = kafka_management_node_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-hadoop-provision-linux-clusters#configure- cluster-size.
            this.Options = [this.Options, '--kafka-management-node-size', varargin{:}];
        end

        function this = workernode_count(this, varargin)
            % The number of worker nodes in the cluster. Default: 3.
            this.Options = [this.Options, '--workernode-count', varargin{:}];
        end

        function this = workernode_data_disk_size(this, varargin)
            % The size of the data disk in GB, e.g. 1023.
            this.Options = [this.Options, '--workernode-data-disk-size', varargin{:}];
        end

        function this = workernode_data_disk_storage_account_type(this, varargin)
            % The type of storage account that will be used for the data disks: standard_lrs or premium_lrs. Allowed values: premium_lrs, standard_lrs.
            this.Options = [this.Options, '--workernode-data-disk-storage-account-type', varargin{:}];
        end

        function this = workernode_data_disks_per_node(this, varargin)
            % The number of data disks to use per worker node.
            this.Options = [this.Options, '--workernode-data-disks-per-node', varargin{:}];
        end

        function this = workernode_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-hadoop-provision-linux-clusters#configure- cluster-size.  Default: large.
            this.Options = [this.Options, '--workernode-size', varargin{:}];
        end

        function this = zookeepernode_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsig ht-hadoop-provision-linux-clusters#configure- cluster-size. Private Link Network Settings Arguments
            this.Options = [this.Options, '--zookeepernode-size', varargin{:}];
        end

        function this = outbound_public_network_access_type(this, varargin)
            % The outbound only public network access type. Allowed values: PublicLoadBalancer, UDR.
            this.Options = [this.Options, '--outbound-public-network-access-type', varargin{:}];
        end

        function this = public_network_access_type(this, varargin)
            % The public network access type.  Allowed values: InboundAndOutbound, OutboundOnly. SSH Arguments
            this.Options = [this.Options, '--public-network-access-type', varargin{:}];
        end

        function this = ssh_password(this, varargin)
            % SSH password for the cluster nodes. If none specified, uses the HTTP password.
            this.Options = [this.Options, '--ssh-password', varargin{:}];
        end

        function this = ssh_public_key(this, varargin)
            % SSH public key for the cluster nodes.
            this.Options = [this.Options, '--ssh-public-key', varargin{:}];
        end

        function this = ssh_user(this, varargin)
            % SSH username for the cluster nodes.  Default: sshuser. Storage Arguments
            this.Options = [this.Options, '--ssh-user', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The name or ID of the storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = storage_account_key(this, varargin)
            % The storage account key. A key can be retrieved automatically if the user has access to the storage account.
            this.Options = [this.Options, '--storage-account-key', varargin{:}];
        end

        function this = storage_account_managed_identity(this, varargin)
            % User-assigned managed identity with access to the storage account filesystem. Only required when storage account type is Azure Data Lake Storage Gen2.
            this.Options = [this.Options, '--storage-account-managed-identity', varargin{:}];
        end

        function this = storage_container(this, varargin)
            % The storage container the cluster will use. Uses the cluster name if none was specified. (WASB only).
            this.Options = [this.Options, '--storage-container', varargin{:}];
        end

        function this = storage_filesystem(this, varargin)
            % The storage filesystem the cluster will use. Uses the cluster name if none was specified. (DFS only).
            this.Options = [this.Options, '--storage-filesystem', varargin{:}];
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
            fprintf('%s\n', '    az hdinsight create : Create a new cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                        [Required] : The name of the cluster.')
            fprintf('%s\n', '    --resource-group -g              [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --location -l                               : Location. Values from: `az account list-')
            fprintf('%s\n', '                                                  locations`. You can configure the default location')
            fprintf('%s\n', '                                                  using `az configure --defaults')
            fprintf('%s\n', '                                                  location=<location>`.')
            fprintf('%s\n', '    --no-validation-timeout                     : Permit timeout error during argument validation')
            fprintf('%s\n', '                                                  phase. If omitted, validation timeout error will')
            fprintf('%s\n', '                                                  be permitted.')
            fprintf('%s\n', '    --no-wait                                   : Do not wait for the long-running operation to')
            fprintf('%s\n', '                                                  finish.')
            fprintf('%s\n', '    --tags                                      : Space-separated tags: key[=value] [key[=value]')
            fprintf('%s\n', '                                                  ...]. Use '''' to clear existing tags.')
            fprintf('%s\n', 'Cluster Arguments')
            fprintf('%s\n', '    --type -t                        [Required] : Type of HDInsight cluster, like: hadoop,')
            fprintf('%s\n', '                                                  interactivehive, hbase, kafka, storm, spark,')
            fprintf('%s\n', '                                                  rserver, mlservices. See also: https://docs.micros')
            fprintf('%s\n', '                                                  oft.com/azure/hdinsight/hdinsight-hadoop-')
            fprintf('%s\n', '                                                  provision-linux-clusters#cluster-types.')
            fprintf('%s\n', '    --cluster-configurations                    : Extra configurations of various components.')
            fprintf('%s\n', '                                                  Configurations may be supplied from a file using')
            fprintf('%s\n', '                                                  the `@{path}` syntax or a JSON string. See also: h')
            fprintf('%s\n', '                                                  ttps://docs.microsoft.com/azure/hdinsight/hdinsigh')
            fprintf('%s\n', '                                                  t-hadoop-customize-cluster-bootstrap.')
            fprintf('%s\n', '    --cluster-tier                              : The tier of the cluster.  Allowed values: Premium,')
            fprintf('%s\n', '                                                  Standard.')
            fprintf('%s\n', '    --component-version                         : The versions of various Hadoop components, in')
            fprintf('%s\n', '                                                  space-separated versions in ''component=version''')
            fprintf('%s\n', '                                                  format. Example: Spark=2.0 Hadoop=2.7.3 See also: ')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-component-versioning#hadoop-components-')
            fprintf('%s\n', '                                                  available-with-different-hdinsight-versions.')
            fprintf('%s\n', '    --esp                                       : Specify to create cluster with Enterprise Security')
            fprintf('%s\n', '                                                  Package. If omitted, creating cluster with')
            fprintf('%s\n', '                                                  Enterprise Security Package will not not allowed.')
            fprintf('%s\n', '    --minimal-tls-version                       : The minimal supported TLS version.  Allowed')
            fprintf('%s\n', '                                                  values: 1.0, 1.1, 1.2.')
            fprintf('%s\n', '    --version -v                                : The HDInsight cluster version. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-component-versioning#supported-hdinsight-')
            fprintf('%s\n', '                                                  versions.  Default: default.')
            fprintf('%s\n', 'Customer Managed Key Arguments')
            fprintf('%s\n', '    --encryption-algorithm                      : Algorithm identifier for encryption.  Allowed')
            fprintf('%s\n', '                                                  values: RSA-OAEP, RSA-OAEP-256, RSA1_5.  Default:')
            fprintf('%s\n', '                                                  RSA-OAEP.')
            fprintf('%s\n', '    --encryption-key-name                       : Key name that is used for enabling disk')
            fprintf('%s\n', '                                                  encryption.')
            fprintf('%s\n', '    --encryption-key-version                    : Key version that is used for enabling disk')
            fprintf('%s\n', '                                                  encryption.')
            fprintf('%s\n', '    --encryption-vault-uri                      : Base key vault URI where the customers key is')
            fprintf('%s\n', '                                                  located eg. https://myvault.vault.azure.net.')
            fprintf('%s\n', 'Domain Service Arguments')
            fprintf('%s\n', '    --cluster-admin-account                     : The domain user account that will have admin')
            fprintf('%s\n', '                                                  privileges on the cluster. Required only when')
            fprintf('%s\n', '                                                  create cluster with Enterprise Security Package.')
            fprintf('%s\n', '    --cluster-admin-password                    : The domain admin password. Required only when')
            fprintf('%s\n', '                                                  create cluster with Enterprise Security Package.')
            fprintf('%s\n', '    --cluster-users-group-dns                   : A space-delimited list of Distinguished Names for')
            fprintf('%s\n', '                                                  cluster user groups. Required only when create')
            fprintf('%s\n', '                                                  cluster with Enterprise Security Package.')
            fprintf('%s\n', '    --domain                                    : The name or resource ID of the user''s Azure Active')
            fprintf('%s\n', '                                                  Directory Domain Service. Required only when')
            fprintf('%s\n', '                                                  create cluster with Enterprise Security Package.')
            fprintf('%s\n', '    --ldaps-urls                                : A space-delimited list of LDAPS protocol URLs to')
            fprintf('%s\n', '                                                  communicate with the Active Directory. Required')
            fprintf('%s\n', '                                                  only when create cluster with Enterprise Security')
            fprintf('%s\n', '                                                  Package.')
            fprintf('%s\n', 'Encryption In Transit Arguments')
            fprintf('%s\n', '    --encryption-in-transit                     : Indicates whether enable encryption in transit.')
            fprintf('%s\n', '                                                  Allowed values: false, true.')
            fprintf('%s\n', 'HTTP Arguments')
            fprintf('%s\n', '    --http-password -p                          : HTTP password for the cluster. Will prompt if not')
            fprintf('%s\n', '                                                  given.')
            fprintf('%s\n', '    --http-user -u                              : HTTP username for the cluster.  Default: admin.')
            fprintf('%s\n', 'Kafka Rest Proxy Arguments')
            fprintf('%s\n', '    --kafka-client-group-id                     : The client AAD security group id for Kafka Rest')
            fprintf('%s\n', '                                                  Proxy.')
            fprintf('%s\n', '    --kafka-client-group-name                   : The client AAD security group name for Kafka Rest')
            fprintf('%s\n', '                                                  Proxy.')
            fprintf('%s\n', 'Managed Service Identity Arguments')
            fprintf('%s\n', '    --assign-identity                           : The name or ID of user assigned identity.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --subnet                                    : The name or ID of subnet. If name is supplied,')
            fprintf('%s\n', '                                                  `--vnet-name` must be supplied.')
            fprintf('%s\n', '    --vnet-name                                 : The name of a virtual network.')
            fprintf('%s\n', 'Node Arguments')
            fprintf('%s\n', '    --edgenode-size                             : The size of the node. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-hadoop-provision-linux-clusters#configure-')
            fprintf('%s\n', '                                                  cluster-size.')
            fprintf('%s\n', '    --headnode-size                             : The size of the node. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-hadoop-provision-linux-clusters#configure-')
            fprintf('%s\n', '                                                  cluster-size.  Default: large.')
            fprintf('%s\n', '    --kafka-management-node-count               : The number of kafka management node in the')
            fprintf('%s\n', '                                                  cluster.  Default: 2.')
            fprintf('%s\n', '    --kafka-management-node-size                : The size of the node. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-hadoop-provision-linux-clusters#configure-')
            fprintf('%s\n', '                                                  cluster-size.')
            fprintf('%s\n', '    --workernode-count -c                       : The number of worker nodes in the cluster.')
            fprintf('%s\n', '                                                  Default: 3.')
            fprintf('%s\n', '    --workernode-data-disk-size                 : The size of the data disk in GB, e.g. 1023.')
            fprintf('%s\n', '    --workernode-data-disk-storage-account-type : The type of storage account that will be used for')
            fprintf('%s\n', '                                                  the data disks: standard_lrs or premium_lrs.')
            fprintf('%s\n', '                                                  Allowed values: premium_lrs, standard_lrs.')
            fprintf('%s\n', '    --workernode-data-disks-per-node            : The number of data disks to use per worker node.')
            fprintf('%s\n', '    --workernode-size                           : The size of the node. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-hadoop-provision-linux-clusters#configure-')
            fprintf('%s\n', '                                                  cluster-size.  Default: large.')
            fprintf('%s\n', '    --zookeepernode-size                        : The size of the node. See also:')
            fprintf('%s\n', '                                                  https://docs.microsoft.com/azure/hdinsight/hdinsig')
            fprintf('%s\n', '                                                  ht-hadoop-provision-linux-clusters#configure-')
            fprintf('%s\n', '                                                  cluster-size.')
            fprintf('%s\n', 'Private Link Network Settings Arguments')
            fprintf('%s\n', '    --outbound-public-network-access-type       : The outbound only public network access type.')
            fprintf('%s\n', '                                                  Allowed values: PublicLoadBalancer, UDR.')
            fprintf('%s\n', '    --public-network-access-type                : The public network access type.  Allowed values:')
            fprintf('%s\n', '                                                  InboundAndOutbound, OutboundOnly.')
            fprintf('%s\n', 'SSH Arguments')
            fprintf('%s\n', '    --ssh-password -P                           : SSH password for the cluster nodes. If none')
            fprintf('%s\n', '                                                  specified, uses the HTTP password.')
            fprintf('%s\n', '    --ssh-public-key -K                         : SSH public key for the cluster nodes.')
            fprintf('%s\n', '    --ssh-user -U                               : SSH username for the cluster nodes.  Default:')
            fprintf('%s\n', '                                                  sshuser.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --storage-account                           : The name or ID of the storage account.')
            fprintf('%s\n', '    --storage-account-key                       : The storage account key. A key can be retrieved')
            fprintf('%s\n', '                                                  automatically if the user has access to the')
            fprintf('%s\n', '                                                  storage account.')
            fprintf('%s\n', '    --storage-account-managed-identity          : User-assigned managed identity with access to the')
            fprintf('%s\n', '                                                  storage account filesystem. Only required when')
            fprintf('%s\n', '                                                  storage account type is Azure Data Lake Storage')
            fprintf('%s\n', '                                                  Gen2.')
            fprintf('%s\n', '    --storage-container                         : The storage container the cluster will use. Uses')
            fprintf('%s\n', '                                                  the cluster name if none was specified. (WASB')
            fprintf('%s\n', '                                                  only).')
            fprintf('%s\n', '    --storage-filesystem                        : The storage filesystem the cluster will use. Uses')
            fprintf('%s\n', '                                                  the cluster name if none was specified. (DFS')
            fprintf('%s\n', '                                                  only).')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a cluster with an existing storage account.')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount')
            fprintf('%s\n', '    Create a cluster with minimal tls version.')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount --minimal-tls-version 1.2')
            fprintf('%s\n', '    Create a cluster which enables encryption in transit.')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount --encryption-in-transit true')
            fprintf('%s\n', '    Create a cluster with private link settings.')
            fprintf('%s\n', '        az hdinsight create --esp -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --subnet "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyRG/providers/')
            fprintf('%s\n', '        Microsoft.Network/virtualNetworks/MyVnet/subnets/subnet1" \')
            fprintf('%s\n', '        --public-network-access-type OutboundOnly --outbound-public-network-access-type')
            fprintf('%s\n', '        PublicLoadBalancer')
            fprintf('%s\n', '    Create a cluster with the Enterprise Security Package (ESP).')
            fprintf('%s\n', '        az hdinsight create --esp -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --subnet "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyRG/providers/')
            fprintf('%s\n', '        Microsoft.Network/virtualNetworks/MyVnet/subnets/subnet1" \')
            fprintf('%s\n', '        --domain "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MyRG/providers/')
            fprintf('%s\n', '        Microsoft.AAD/domainServices/MyDomain.onmicrosoft.com" \')
            fprintf('%s\n', '        --assign-identity "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/MyMsiR')
            fprintf('%s\n', '        G/providers/Microsoft.ManagedIdentity/userAssignedIdentities/MyMSI" \')
            fprintf('%s\n', '        --cluster-admin-account MyAdminAccount@MyDomain.onmicrosoft.com \')
            fprintf('%s\n', '        --cluster-users-group-dns MyGroup')
            fprintf('%s\n', '    Create a Kafka cluster with disk encryption. See')
            fprintf('%s\n', '    https://docs.microsoft.com/azure/hdinsight/kafka/apache-kafka-byok.')
            fprintf('%s\n', '        az hdinsight create -t kafka -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" --workernode-data-disks-per-node 2 \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --encryption-key-name kafkaClusterKey \')
            fprintf('%s\n', '        --encryption-key-version 00000000000000000000000000000000 \')
            fprintf('%s\n', '        --encryption-vault-uri https://MyKeyVault.vault.azure.net \')
            fprintf('%s\n', '        --assign-identity MyMSI')
            fprintf('%s\n', '    Create a kafka cluster with kafka rest proxy.')
            fprintf('%s\n', '        az hdinsight create -t kafka -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" --workernode-data-disks-per-node 2 \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --kafka-management-node-size "Standard_D4_v2" \')
            fprintf('%s\n', '        --kafka-client-group-id MySecurityGroupId \')
            fprintf('%s\n', '        --kafka-client-group-name MySecurityGroupName')
            fprintf('%s\n', '        --component-version kafka=2.1')
            fprintf('%s\n', '    Create a cluster with Azure Data Lake Storage Gen2')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --storage-account-managed-identity MyMSI')
            fprintf('%s\n', '    Create a cluster with configuration from JSON string.')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --cluster-configuration {''gateway'':{''restAuthCredential.username'':''admin''}}')
            fprintf('%s\n', '    Create a cluster with configuration from a local file.')
            fprintf('%s\n', '        az hdinsight create -t spark -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '        -p "HttpPassword1234!" \')
            fprintf('%s\n', '        --storage-account MyStorageAccount \')
            fprintf('%s\n', '        --cluster-configuration @config.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
