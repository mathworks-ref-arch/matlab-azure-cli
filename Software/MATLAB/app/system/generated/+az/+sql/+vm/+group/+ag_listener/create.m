classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql vm group ag-listener create : Creates an availability group listener.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm group ag-listener create ';
        end
        function this = ag_name(this, varargin)
            % Name of the availability group. Please refer to https://docs.microsoft.com/sql/database-engine/availability- groups/windows/use-the-availability-group-wizard-sql-server- management-studio?view=sql-server-2017 to create and availability group.
            this.Options = [this.Options, '--ag-name', varargin{:}];
        end

        function this = group_name(this, varargin)
            % Name of the SQL virtual machine group.
            this.Options = [this.Options, '--group-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the availability group listener.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. Load Balancer Configuration Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % Private IP address bound to the availability group listener.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = load_balancer(this, varargin)
            % Name or resource ID of the load balancer.
            this.Options = [this.Options, '--load-balancer', varargin{:}];
        end

        function this = probe_port(this, varargin)
            % Probe port.
            this.Options = [this.Options, '--probe-port', varargin{:}];
        end

        function this = sqlvms(this, varargin)
            % Space-separated list of SQL virtual machine instance name or resource IDs that are enrolled into the availability group.
            this.Options = [this.Options, '--sqlvms', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name or resource id of the subnet to include in the private IP.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = public_ip(this, varargin)
            % Name or resource ID of the public IP.
            this.Options = [this.Options, '--public-ip', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the virtual network. Provide only if name of the subnet has been provided. SQL Connectivity Update Settings Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = port(this, varargin)
            % Listener port.  Default: 1433.
            this.Options = [this.Options, '--port', varargin{:}];
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
            fprintf('%s\n', '    az sql vm group ag-listener create : Creates an availability group listener.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --ag-name -a        [Required] : Name of the availability group. Please refer to')
            fprintf('%s\n', '                                     https://docs.microsoft.com/sql/database-engine/availability-')
            fprintf('%s\n', '                                     groups/windows/use-the-availability-group-wizard-sql-server-')
            fprintf('%s\n', '                                     management-studio?view=sql-server-2017 to create and')
            fprintf('%s\n', '                                     availability group.')
            fprintf('%s\n', '    --group-name -r     [Required] : Name of the SQL virtual machine group.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the availability group listener.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Load Balancer Configuration Arguments')
            fprintf('%s\n', '    --ip-address -i     [Required] : Private IP address bound to the availability group listener.')
            fprintf('%s\n', '    --load-balancer -b  [Required] : Name or resource ID of the load balancer.')
            fprintf('%s\n', '    --probe-port -e     [Required] : Probe port.')
            fprintf('%s\n', '    --sqlvms -q         [Required] : Space-separated list of SQL virtual machine instance name or')
            fprintf('%s\n', '                                     resource IDs that are enrolled into the availability group.')
            fprintf('%s\n', '    --subnet -u         [Required] : The name or resource id of the subnet to include in the private')
            fprintf('%s\n', '                                     IP.')
            fprintf('%s\n', '    --public-ip -c                 : Name or resource ID of the public IP.')
            fprintf('%s\n', '    --vnet-name                    : Name of the virtual network. Provide only if name of the subnet')
            fprintf('%s\n', '                                     has been provided.')
            fprintf('%s\n', 'SQL Connectivity Update Settings Arguments')
            fprintf('%s\n', '    --port -p                      : Listener port.  Default: 1433.')
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
            fprintf('%s\n', '    Create an availability group listener. Note the SQL virtual machines are in the same resource')
            fprintf('%s\n', '    group as the SQL virtual machine group.')
            fprintf('%s\n', '        az sql vm group ag-listener create -n aglistenertest -g myresourcegroup --ag-name agname')
            fprintf('%s\n', '        --group-name sqlvmgroup --ip-address 10.0.0.11 --load-balancer ''/subscriptions/{yoursubscrip')
            fprintf('%s\n', '        tion}/resourceGroups/{yourrg}/providers/Microsoft.Network/loadBalancers/{lbname}'' --probe-')
            fprintf('%s\n', '        port 59999 --subnet ''/subscriptions/{yoursubscription}/resourceGroups/{yourrg}/providers/Mic')
            fprintf('%s\n', '        rosoft.Network/virtualNetworks/{vnname}/subnets/{subnetname}'' --sqlvms sqlvm1 sqlvm2')
            fprintf('%s\n', '    Create an availability group listener. Note all resources are in the same resource group.')
            fprintf('%s\n', '        az sql vm group ag-listener create -n aglistenertest -g myresourcegroup --ag-name agname')
            fprintf('%s\n', '        --group-name sqlvmgroup --ip-address 10.0.0.11 --load-balancer {lbname} --probe-port 59999')
            fprintf('%s\n', '        --subnet {subnetname} --vnet-name {vnname} --sqlvms sqlvm1 sqlvm2')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group ag-listener create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
