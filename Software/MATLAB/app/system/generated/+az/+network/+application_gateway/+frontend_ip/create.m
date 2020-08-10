classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway frontend-ip create : Create a frontend IP address.
            this.BaseCmd = 'az network application-gateway frontend-ip create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the frontend IP configuration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address to use.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % The name or ID of the public IP address.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name or ID of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The name of the virtual network corresponding to the subnet.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway frontend-ip create : Create a frontend IP address.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the frontend IP configuration.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --private-ip-address           : Static private IP address to use.')
            fprintf('%s\n', '    --public-ip-address            : The name or ID of the public IP address.')
            fprintf('%s\n', '    --subnet                       : The name or ID of the subnet.')
            fprintf('%s\n', '    --vnet-name                    : The name of the virtual network corresponding to the subnet.')
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
            fprintf('%s\n', '    Create a frontend IP address.')
            fprintf('%s\n', '        az network application-gateway frontend-ip create -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyFrontendIp --public-ip-address MyPublicIpAddress')
            fprintf('%s\n', '    Create a frontend IP address. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway frontend-ip create --gateway-name MyAppGateway --name')
            fprintf('%s\n', '        MyFrontendIp --private-ip-address 10.10.10.50 --resource-group MyResourceGroup --subnet')
            fprintf('%s\n', '        MySubnet --vnet-name MyVnet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway frontend-ip create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
