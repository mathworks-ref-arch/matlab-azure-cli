classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az storage account network-rule add : Add a network rule.
            % Rules can be created for an IPv4 address, address range (CIDR format), or a virtual network
            % subnet.
            this.BaseCmd = 'az storage account network-rule add ';
        end
        function this = account_name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = action(this, varargin)
            % The action of virtual network rule.  Default: Allow.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % IPv4 address or CIDR range.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of subnet. If name is supplied, `--vnet-name` must be supplied.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of a virtual network.
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
            fprintf('%s\n', '    az storage account network-rule add : Add a network rule.')
            fprintf('%s\n', '        Rules can be created for an IPv4 address, address range (CIDR format), or a virtual network')
            fprintf('%s\n', '        subnet.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -n [Required] : The storage account name.')
            fprintf('%s\n', '    --action                     : The action of virtual network rule.  Default: Allow.')
            fprintf('%s\n', '    --ip-address                 : IPv4 address or CIDR range.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet                     : Name or ID of subnet. If name is supplied, `--vnet-name` must be')
            fprintf('%s\n', '                                   supplied.')
            fprintf('%s\n', '    --vnet-name                  : Name of a virtual network.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a rule to allow a specific address-range.')
            fprintf('%s\n', '        az storage account network-rule add -g myRg --account-name mystorageaccount --ip-address')
            fprintf('%s\n', '        23.45.1.0/24')
            fprintf('%s\n', '    Create a rule to allow access for a subnet.')
            fprintf('%s\n', '        az storage account network-rule add -g myRg --account-name mystorageaccount --vnet-name')
            fprintf('%s\n', '        myvnet --subnet mysubnet')
            fprintf('%s\n', '    Create a rule to allow access for a subnet in another resource group.')
            fprintf('%s\n', '        az storage account network-rule add -g myRg --account-name mystorageaccount  --subnet')
            fprintf('%s\n', '        $subnetId')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account network-rule add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
