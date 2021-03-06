classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network nic ip-config address-pool add : Add an address pool to an IP configuration.
            this.BaseCmd = 'az network nic ip-config address-pool add ';
        end
        function this = address_pool(this, varargin)
            % The name or ID of an existing backend address pool.
            this.Options = [this.Options, '--address-pool', varargin{:}];
        end

        function this = ip_config_name(this, varargin)
            % The name of the IP configuration.
            this.Options = [this.Options, '--ip-config-name', varargin{:}];
        end

        function this = nic_name(this, varargin)
            % The network interface (NIC).
            this.Options = [this.Options, '--nic-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = gateway_name(this, varargin)
            % The name of an application gateway containing the address pool (Omit if suppying an address pool ID).
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The name of the load balancer containing the address pool (Omit if suppying an address pool ID).
            this.Options = [this.Options, '--lb-name', varargin{:}];
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
            fprintf('%s\n', '    az network nic ip-config address-pool add : Add an address pool to an IP configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-pool      [Required] : The name or ID of an existing backend address pool.')
            fprintf('%s\n', '    --ip-config-name -n [Required] : The name of the IP configuration.')
            fprintf('%s\n', '    --nic-name          [Required] : The network interface (NIC).')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --gateway-name                 : The name of an application gateway containing the address pool')
            fprintf('%s\n', '                                     (Omit if suppying an address pool ID).')
            fprintf('%s\n', '    --lb-name                      : The name of the load balancer containing the address pool (Omit')
            fprintf('%s\n', '                                     if suppying an address pool ID).')
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
            fprintf('%s\n', '    Add an address pool to an IP configuration.')
            fprintf('%s\n', '        az network nic ip-config address-pool add -g MyResourceGroup --nic-name MyNic \')
            fprintf('%s\n', '            -n MyIpConfig --address-pool MyAddressPool')
            fprintf('%s\n', '    Add an address pool to an IP configuration. (autogenerated)')
            fprintf('%s\n', '        az network nic ip-config address-pool add --address-pool MyAddressPool --ip-config-name')
            fprintf('%s\n', '        MyIpConfig --lb-name MyLb --nic-name MyNic --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network nic ip-config address-pool add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
