classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az openshift create : Create a new managed OpenShift cluster.
            this.BaseCmd = 'az openshift create ';
        end
        function this = name(this, varargin)
            % Name of the managed OpenShift cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = aad_client_app_id(this, varargin)
            % The ID of an Azure Active Directory client application. If not specified, a new Azure Active Directory client is created.
            this.Options = [this.Options, '--aad-client-app-id', varargin{:}];
        end

        function this = aad_client_app_secret(this, varargin)
            % The secret of an Azure Active Directory client application.
            this.Options = [this.Options, '--aad-client-app-secret', varargin{:}];
        end

        function this = aad_tenant_id(this, varargin)
            % The ID of an Azure Active Directory tenant.
            this.Options = [this.Options, '--aad-tenant-id', varargin{:}];
        end

        function this = compute_count(this, varargin)
            % Number of nodes in the OpenShift node pool.  Default: 4.
            this.Options = [this.Options, '--compute-count', varargin{:}];
        end

        function this = compute_vm_size(this, varargin)
            % Size of Virtual Machines to create as OpenShift nodes. Default: Standard_D4s_v3.
            this.Options = [this.Options, '--compute-vm-size', varargin{:}];
        end

        function this = customer_admin_group_id(this, varargin)
            % The Object ID of an Azure Active Directory Group that memberships will get synced into the OpenShift group "osa- customer-admins". If not specified, no cluster admin access will be granted.
            this.Options = [this.Options, '--customer-admin-group-id', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = subnet_prefix(this, varargin)
            % The CIDR used on the Subnet into which to deploy the cluster. Default: 10.0.0.0/24.
            this.Options = [this.Options, '--subnet-prefix', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet_peer(this, varargin)
            % The ID or the name of a subnet in an existing VNet into which to peer the cluster.
            this.Options = [this.Options, '--vnet-peer', varargin{:}];
        end

        function this = vnet_prefix(this, varargin)
            % The CIDR used on the VNet into which to deploy the cluster. Default: 10.0.0.0/8.
            this.Options = [this.Options, '--vnet-prefix', varargin{:}];
        end

        function this = workspace_id(this, varargin)
            % The resource id of an existing Log Analytics Workspace to use for storing monitoring data.
            this.Options = [this.Options, '--workspace-id', varargin{:}];
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
            fprintf('%s\n', '    az openshift create : Create a new managed OpenShift cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed OpenShift cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --aad-client-app-id            : The ID of an Azure Active Directory client application. If not')
            fprintf('%s\n', '                                     specified, a new Azure Active Directory client is created.')
            fprintf('%s\n', '    --aad-client-app-secret        : The secret of an Azure Active Directory client application.')
            fprintf('%s\n', '    --aad-tenant-id                : The ID of an Azure Active Directory tenant.')
            fprintf('%s\n', '    --compute-count -c             : Number of nodes in the OpenShift node pool.  Default: 4.')
            fprintf('%s\n', '    --compute-vm-size -s           : Size of Virtual Machines to create as OpenShift nodes.')
            fprintf('%s\n', '                                     Default: Standard_D4s_v3.')
            fprintf('%s\n', '    --customer-admin-group-id      : The Object ID of an Azure Active Directory Group that')
            fprintf('%s\n', '                                     memberships will get synced into the OpenShift group "osa-')
            fprintf('%s\n', '                                     customer-admins". If not specified, no cluster admin access')
            fprintf('%s\n', '                                     will be granted.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --subnet-prefix                : The CIDR used on the Subnet into which to deploy the cluster.')
            fprintf('%s\n', '                                     Default: 10.0.0.0/24.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --vnet-peer                    : The ID or the name of a subnet in an existing VNet into which')
            fprintf('%s\n', '                                     to peer the cluster.')
            fprintf('%s\n', '    --vnet-prefix                  : The CIDR used on the VNet into which to deploy the cluster.')
            fprintf('%s\n', '                                     Default: 10.0.0.0/8.')
            fprintf('%s\n', '    --workspace-id                 : The resource id of an existing Log Analytics Workspace to use')
            fprintf('%s\n', '                                     for storing monitoring data.')
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
            fprintf('%s\n', '    Create an OpenShift cluster and auto create an AAD Client')
            fprintf('%s\n', '        az openshift create -g MyResourceGroup -n MyManagedCluster')
            fprintf('%s\n', '    Create an OpenShift cluster and auto create an AAD Client and setup cluster admin group')
            fprintf('%s\n', '        az openshift create -g MyResourceGroup -n MyManagedCluster --customer-admin-group-id')
            fprintf('%s\n', '        {GROUP_ID}')
            fprintf('%s\n', '    Create an OpenShift cluster with 5 compute nodes and a custom AAD Client.')
            fprintf('%s\n', '        az openshift create -g MyResourceGroup -n MyManagedCluster --aad-client-app-id {APP_ID}')
            fprintf('%s\n', '        --aad-client-app-secret {APP_SECRET} --aad-tenant-id {TENANT_ID} --compute-count 5')
            fprintf('%s\n', '    Create an Openshift cluster using a custom vnet')
            fprintf('%s\n', '        az openshift create -g MyResourceGroup -n MyManagedCluster --vnet-peer')
            fprintf('%s\n', '        "/subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/openshift-')
            fprintf('%s\n', '        vnet/providers/Microsoft.Network/virtualNetworks/test"')
            fprintf('%s\n', '    Create an Openshift cluster with Log Analytics monitoring enabled')
            fprintf('%s\n', '        az openshift create -g MyResourceGroup -n MyManagedCluster --workspace-id "/subscriptions/00')
            fprintf('%s\n', '        000000-0000-0000-0000-000000000000/resourceGroups/MyResourceGroup/providers/Microsoft.Operat')
            fprintf('%s\n', '        ionalInsights/workspaces/{workspace-id}"')
            fprintf('%s\n', 'For more specific examples, use: az find "az openshift create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
