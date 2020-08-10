classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb frontend-ip create : Create a frontend IP address.
            this.BaseCmd = 'az network lb frontend-ip create ';
        end
        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the frontend IP configuration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address to associate with the configuration.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = private_ip_address_version(this, varargin)
            % The private IP address version to use.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--private-ip-address-version', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of the existing public IP to associate with the configuration.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = public_ip_prefix(this, varargin)
            % Name or ID of a public IP prefix.
            this.Options = [this.Options, '--public-ip-prefix', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of an existing subnet. If name is specified, also specify --vnet-name.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) associated with the subnet (Omit if supplying a subnet id).
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = zone(this, varargin)
            % Availability zone into which to provision the resource. Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--zone', varargin{:}];
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
            fprintf('%s\n', '    az network lb frontend-ip create : Create a frontend IP address.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lb-name           [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the frontend IP configuration.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --private-ip-address           : Static private IP address to associate with the configuration.')
            fprintf('%s\n', '    --private-ip-address-version   : The private IP address version to use.  Allowed values: IPv4,')
            fprintf('%s\n', '                                     IPv6.  Default: IPv4.')
            fprintf('%s\n', '    --public-ip-address            : Name or ID of the existing public IP to associate with the')
            fprintf('%s\n', '                                     configuration.')
            fprintf('%s\n', '    --public-ip-prefix             : Name or ID of a public IP prefix.')
            fprintf('%s\n', '    --subnet                       : Name or ID of an existing subnet. If name is specified, also')
            fprintf('%s\n', '                                     specify --vnet-name.')
            fprintf('%s\n', '    --vnet-name                    : The virtual network (VNet) associated with the subnet (Omit if')
            fprintf('%s\n', '                                     supplying a subnet id).')
            fprintf('%s\n', '    --zone -z                      : Availability zone into which to provision the resource.')
            fprintf('%s\n', '                                     Allowed values: 1, 2, 3.')
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
            fprintf('%s\n', '    Create a frontend ip address for a public load balancer.')
            fprintf('%s\n', '        az network lb frontend-ip create -g MyResourceGroup -n MyFrontendIp --lb-name MyLb --public-')
            fprintf('%s\n', '        ip-address MyFrontendIp')
            fprintf('%s\n', '    Create a frontend ip address for an internal load balancer.')
            fprintf('%s\n', '        az network lb frontend-ip create -g MyResourceGroup -n MyFrontendIp --lb-name MyLb \')
            fprintf('%s\n', '            --private-ip-address 10.10.10.100 --subnet MySubnet --vnet-name MyVnet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb frontend-ip create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
