classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az container create : Create a container group.
            this.BaseCmd = 'az container create ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = command_line(this, varargin)
            % The command line to run when the container is started, e.g. '/bin/bash -c myscript.sh'.
            this.Options = [this.Options, '--command-line', varargin{:}];
        end

        function this = cpu(this, varargin)
            % The required number of CPU cores of the containers, accurate to one decimal place.  Default: 1.
            this.Options = [this.Options, '--cpu', varargin{:}];
        end

        function this = dns_name_label(this, varargin)
            % The dns name label for container group with public IP.
            this.Options = [this.Options, '--dns-name-label', varargin{:}];
        end

        function this = environment_variables(this, varargin)
            % A list of environment variable for the container. Space- separated values in 'key=value' format.
            this.Options = [this.Options, '--environment-variables', varargin{:}];
        end

        function this = file(this, varargin)
            % The path to the input file.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = image(this, varargin)
            % The container image name.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % The IP address type of the container group.  Allowed values: Private, Public.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = memory(this, varargin)
            % The required memory of the containers in GB, accurate to one decimal place.  Default: 1.5.
            this.Options = [this.Options, '--memory', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the container group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = os_type(this, varargin)
            % The OS type of the containers.  Allowed values: Linux, Windows.  Default: Linux.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = ports(this, varargin)
            % The ports to open.  Default: [80].
            this.Options = [this.Options, '--ports', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The network protocol to use.  Allowed values: TCP, UDP.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = restart_policy(this, varargin)
            % Restart policy for all containers within the container group. Allowed values: Always, Never, OnFailure.  Default: Always.
            this.Options = [this.Options, '--restart-policy', varargin{:}];
        end

        function this = secrets(this, varargin)
            % Space-separated secrets in 'key=value' format.
            this.Options = [this.Options, '--secrets', varargin{:}];
        end

        function this = secrets_mount_path(this, varargin)
            % The path within the container where the secrets volume should be mounted. Must not contain colon ':'.
            this.Options = [this.Options, '--secrets-mount-path', varargin{:}];
        end

        function this = secure_environment_variables(this, varargin)
            % A list of secure environment variable for the container. Space-separated values in 'key=value' format. Azure File Volume Arguments
            this.Options = [this.Options, '--secure-environment-variables', varargin{:}];
        end

        function this = azure_file_volume_account_key(this, varargin)
            % The storage account access key used to access the Azure File share.
            this.Options = [this.Options, '--azure-file-volume-account-key', varargin{:}];
        end

        function this = azure_file_volume_account_name(this, varargin)
            % The name of the storage account that contains the Azure File share.
            this.Options = [this.Options, '--azure-file-volume-account-name', varargin{:}];
        end

        function this = azure_file_volume_mount_path(this, varargin)
            % The path within the container where the azure file volume should be mounted. Must not contain colon ':'.
            this.Options = [this.Options, '--azure-file-volume-mount-path', varargin{:}];
        end

        function this = azure_file_volume_share_name(this, varargin)
            % The name of the Azure File share to be mounted as a volume. Git Repo Volume Arguments
            this.Options = [this.Options, '--azure-file-volume-share-name', varargin{:}];
        end

        function this = gitrepo_dir(this, varargin)
            % The target directory path in the git repository. Must not contain '..'.  Default: ..
            this.Options = [this.Options, '--gitrepo-dir', varargin{:}];
        end

        function this = gitrepo_mount_path(this, varargin)
            % The path within the container where the git repo volume should be mounted. Must not contain colon ':'.
            this.Options = [this.Options, '--gitrepo-mount-path', varargin{:}];
        end

        function this = gitrepo_revision(this, varargin)
            % The commit hash for the specified revision.
            this.Options = [this.Options, '--gitrepo-revision', varargin{:}];
        end

        function this = gitrepo_url(this, varargin)
            % The URL of a git repository to be mounted as a volume. Image Registry Arguments
            this.Options = [this.Options, '--gitrepo-url', varargin{:}];
        end

        function this = registry_login_server(this, varargin)
            % The container image registry login server.
            this.Options = [this.Options, '--registry-login-server', varargin{:}];
        end

        function this = registry_password(this, varargin)
            % The password to log in container image registry server.
            this.Options = [this.Options, '--registry-password', varargin{:}];
        end

        function this = registry_username(this, varargin)
            % The username to log in container image registry server. Log Analytics Arguments
            this.Options = [this.Options, '--registry-username', varargin{:}];
        end

        function this = log_analytics_workspace(this, varargin)
            % The Log Analytics workspace name or id. Use the current subscription or use --subscription flag to set the desired subscription.
            this.Options = [this.Options, '--log-analytics-workspace', varargin{:}];
        end

        function this = log_analytics_workspace_key(this, varargin)
            % The Log Analytics workspace key. Managed Service Identity Arguments
            this.Options = [this.Options, '--log-analytics-workspace-key', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Space-separated list of assigned identities. Assigned identities are either user assigned identities (resource IDs) and / or the system assigned identity ('[system]'). See examples for more info.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id the system assigned identity will have. Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope that the system assigned identity can access. Network Arguments
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = network_profile(this, varargin)
            % The network profile name or id.
            this.Options = [this.Options, '--network-profile', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name of the subnet when creating a new VNET or referencing an existing one. Can also reference an existing subnet by ID.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = subnet_address_prefix(this, varargin)
            % The subnet IP address prefix to use when creating a new VNET in CIDR format.  Default: 10.0.0.0/24.
            this.Options = [this.Options, '--subnet-address-prefix', varargin{:}];
        end

        function this = vnet(this, varargin)
            % The name of the VNET when creating a new one or referencing an existing one. Can also reference an existing vnet by ID. This allows using vnets from other resource groups.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = vnet_address_prefix(this, varargin)
            % The IP address prefix to use when creating a new VNET in CIDR format.  Default: 10.0.0.0/16.
            this.Options = [this.Options, '--vnet-address-prefix', varargin{:}];
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
            fprintf('%s\n', '    az container create : Create a container group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g   [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --command-line                   : The command line to run when the container is started, e.g.')
            fprintf('%s\n', '                                       ''/bin/bash -c myscript.sh''.')
            fprintf('%s\n', '    --cpu                            : The required number of CPU cores of the containers, accurate')
            fprintf('%s\n', '                                       to one decimal place.  Default: 1.')
            fprintf('%s\n', '    --dns-name-label                 : The dns name label for container group with public IP.')
            fprintf('%s\n', '    --environment-variables -e       : A list of environment variable for the container. Space-')
            fprintf('%s\n', '                                       separated values in ''key=value'' format.')
            fprintf('%s\n', '    --file -f                        : The path to the input file.')
            fprintf('%s\n', '    --image                          : The container image name.')
            fprintf('%s\n', '    --ip-address                     : The IP address type of the container group.  Allowed values:')
            fprintf('%s\n', '                                       Private, Public.')
            fprintf('%s\n', '    --location -l                    : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                       configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                       location=<location>`.')
            fprintf('%s\n', '    --memory                         : The required memory of the containers in GB, accurate to one')
            fprintf('%s\n', '                                       decimal place.  Default: 1.5.')
            fprintf('%s\n', '    --name -n                        : The name of the container group.')
            fprintf('%s\n', '    --no-wait                        : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --os-type                        : The OS type of the containers.  Allowed values: Linux,')
            fprintf('%s\n', '                                       Windows.  Default: Linux.')
            fprintf('%s\n', '    --ports                          : The ports to open.  Default: [80].')
            fprintf('%s\n', '    --protocol                       : The network protocol to use.  Allowed values: TCP, UDP.')
            fprintf('%s\n', '    --restart-policy                 : Restart policy for all containers within the container group.')
            fprintf('%s\n', '                                       Allowed values: Always, Never, OnFailure.  Default: Always.')
            fprintf('%s\n', '    --secrets                        : Space-separated secrets in ''key=value'' format.')
            fprintf('%s\n', '    --secrets-mount-path             : The path within the container where the secrets volume should')
            fprintf('%s\n', '                                       be mounted. Must not contain colon '':''.')
            fprintf('%s\n', '    --secure-environment-variables   : A list of secure environment variable for the container.')
            fprintf('%s\n', '                                       Space-separated values in ''key=value'' format.')
            fprintf('%s\n', 'Azure File Volume Arguments')
            fprintf('%s\n', '    --azure-file-volume-account-key  : The storage account access key used to access the Azure File')
            fprintf('%s\n', '                                       share.')
            fprintf('%s\n', '    --azure-file-volume-account-name : The name of the storage account that contains the Azure File')
            fprintf('%s\n', '                                       share.')
            fprintf('%s\n', '    --azure-file-volume-mount-path   : The path within the container where the azure file volume')
            fprintf('%s\n', '                                       should be mounted. Must not contain colon '':''.')
            fprintf('%s\n', '    --azure-file-volume-share-name   : The name of the Azure File share to be mounted as a volume.')
            fprintf('%s\n', 'Git Repo Volume Arguments')
            fprintf('%s\n', '    --gitrepo-dir                    : The target directory path in the git repository. Must not')
            fprintf('%s\n', '                                       contain ''..''.  Default: ..')
            fprintf('%s\n', '    --gitrepo-mount-path             : The path within the container where the git repo volume')
            fprintf('%s\n', '                                       should be mounted. Must not contain colon '':''.')
            fprintf('%s\n', '    --gitrepo-revision               : The commit hash for the specified revision.')
            fprintf('%s\n', '    --gitrepo-url                    : The URL of a git repository to be mounted as a volume.')
            fprintf('%s\n', 'Image Registry Arguments')
            fprintf('%s\n', '    --registry-login-server          : The container image registry login server.')
            fprintf('%s\n', '    --registry-password              : The password to log in container image registry server.')
            fprintf('%s\n', '    --registry-username              : The username to log in container image registry server.')
            fprintf('%s\n', 'Log Analytics Arguments')
            fprintf('%s\n', '    --log-analytics-workspace        : The Log Analytics workspace name or id. Use the current')
            fprintf('%s\n', '                                       subscription or use --subscription flag to set the desired')
            fprintf('%s\n', '                                       subscription.')
            fprintf('%s\n', '    --log-analytics-workspace-key    : The Log Analytics workspace key.')
            fprintf('%s\n', 'Managed Service Identity Arguments')
            fprintf('%s\n', '    --assign-identity                : Space-separated list of assigned identities. Assigned')
            fprintf('%s\n', '                                       identities are either user assigned identities (resource IDs)')
            fprintf('%s\n', '                                       and / or the system assigned identity (''[system]''). See')
            fprintf('%s\n', '                                       examples for more info.')
            fprintf('%s\n', '    --role                           : Role name or id the system assigned identity will have.')
            fprintf('%s\n', '                                       Default: Contributor.')
            fprintf('%s\n', '    --scope                          : Scope that the system assigned identity can access.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --network-profile                : The network profile name or id.')
            fprintf('%s\n', '    --subnet                         : The name of the subnet when creating a new VNET or')
            fprintf('%s\n', '                                       referencing an existing one. Can also reference an existing')
            fprintf('%s\n', '                                       subnet by ID.')
            fprintf('%s\n', '    --subnet-address-prefix          : The subnet IP address prefix to use when creating a new VNET')
            fprintf('%s\n', '                                       in CIDR format.  Default: 10.0.0.0/24.')
            fprintf('%s\n', '    --vnet                           : The name of the VNET when creating a new one or referencing')
            fprintf('%s\n', '                                       an existing one. Can also reference an existing vnet by ID.')
            fprintf('%s\n', '                                       This allows using vnets from other resource groups.')
            fprintf('%s\n', '    --vnet-address-prefix            : The IP address prefix to use when creating a new VNET in CIDR')
            fprintf('%s\n', '                                       format.  Default: 10.0.0.0/16.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a container in a container group with 1 core and 1Gb of memory.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --cpu 1 --memory')
            fprintf('%s\n', '        1')
            fprintf('%s\n', '    Create a container in a container group that runs Windows, with 2 cores and 3.5Gb of memory.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name mywinapp --image winappimage:latest --os-type')
            fprintf('%s\n', '        Windows --cpu 2 --memory 3.5')
            fprintf('%s\n', '    Create a container in a container group with public IP address, ports and DNS name label.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --ports 80 443')
            fprintf('%s\n', '        --dns-name-label contoso')
            fprintf('%s\n', '    Create a container in a container group that invokes a script upon start.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --command-line')
            fprintf('%s\n', '        "/bin/sh -c ''/path to/myscript.sh''"')
            fprintf('%s\n', '    Create a container in a container group that runs a command and stop the container afterwards.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --command-line')
            fprintf('%s\n', '        "echo hello" --restart-policy Never')
            fprintf('%s\n', '    Create a container in a container group with environment variables.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --environment-')
            fprintf('%s\n', '        variables key1=value1 key2=value2')
            fprintf('%s\n', '    Create a container in a container group using container image from Azure Container Registry.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image')
            fprintf('%s\n', '        myAcrRegistry.azurecr.io/myimage:latest --registry-password password')
            fprintf('%s\n', '    Create a container in a container group that mounts an Azure File share as volume.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --command-line')
            fprintf('%s\n', '        "cat /mnt/azfile/myfile" --azure-file-volume-share-name myshare --azure-file-volume-account-')
            fprintf('%s\n', '        name mystorageaccount --azure-file-volume-account-key mystoragekey --azure-file-volume-')
            fprintf('%s\n', '        mount-path /mnt/azfile')
            fprintf('%s\n', '    Create a container in a container group that mounts a git repo as volume.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --command-line')
            fprintf('%s\n', '        "cat /mnt/gitrepo" --gitrepo-url https://github.com/user/myrepo.git --gitrepo-dir ./dir1')
            fprintf('%s\n', '        --gitrepo-mount-path /mnt/gitrepo')
            fprintf('%s\n', '    Create a container in a container group using a yaml file.')
            fprintf('%s\n', '        az container create -g MyResourceGroup -f containerGroup.yaml')
            fprintf('%s\n', '    Create a container group using Log Analytics from a workspace name.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --log-analytics-workspace myworkspace')
            fprintf('%s\n', '    Create a container group with a system assigned identity.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --assign-identity')
            fprintf('%s\n', '    Create a container group with a system assigned identity. The group will have a ''Contributor''')
            fprintf('%s\n', '    role with access to a storage account.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --assign-identity')
            fprintf('%s\n', '        --scope /subscriptions/99999999-1bf0-4dda-')
            fprintf('%s\n', '        aec3-cb9272f09590/MyResourceGroup/myRG/providers/Microsoft.Storage/storageAccounts/storage1')
            fprintf('%s\n', '    Create a container group with a user assigned identity.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --assign-identity')
            fprintf('%s\n', '        /subscriptions/mySubscrpitionId/resourcegroups/myRG/providers/Microsoft.ManagedIdentity/user')
            fprintf('%s\n', '        AssignedIdentities/myID')
            fprintf('%s\n', '    Create a container group with both system and user assigned identity.')
            fprintf('%s\n', '        az container create -g MyResourceGroup --name myapp --image myimage:latest --assign-identity')
            fprintf('%s\n', '        [system] /subscriptions/mySubscrpitionId/resourcegroups/myRG/providers/Microsoft.ManagedIden')
            fprintf('%s\n', '        tity/userAssignedIdentities/myID')
            fprintf('%s\n', 'For more specific examples, use: az find "az container create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
