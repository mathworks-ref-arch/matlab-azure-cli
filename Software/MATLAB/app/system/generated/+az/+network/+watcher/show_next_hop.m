classdef show_next_hop < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_next_hop()
            % az network watcher show-next-hop : Get information on the 'next hop' of a VM.
            % Requires that Network Watcher is enabled for the region in which the VM is located. For more
            % information about show-next-hop visit https://docs.microsoft.com/azure/network-
            % watcher/network-watcher-check-next-hop-cli.
            this.BaseCmd = 'az network watcher show-next-hop ';
        end
        function this = dest_ip(this, varargin)
            % Destination IPv4 address.
            this.Options = [this.Options, '--dest-ip', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group the target VM is in.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_ip(this, varargin)
            % Source IPv4 address.
            this.Options = [this.Options, '--source-ip', varargin{:}];
        end

        function this = vm(this, varargin)
            % Name or ID of the VM to target. If the name of the VM is provided, the --resource-group is required.
            this.Options = [this.Options, '--vm', varargin{:}];
        end

        function this = nic(this, varargin)
            % Name or ID of the NIC resource to test. If the VM has multiple NICs and IP forwarding is enabled on any of them, this parameter is required.
            this.Options = [this.Options, '--nic', varargin{:}];
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
            fprintf('%s\n', '    az network watcher show-next-hop : Get information on the ''next hop'' of a VM.')
            fprintf('%s\n', '        Requires that Network Watcher is enabled for the region in which the VM is located. For more')
            fprintf('%s\n', '        information about show-next-hop visit https://docs.microsoft.com/azure/network-')
            fprintf('%s\n', '        watcher/network-watcher-check-next-hop-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dest-ip           [Required] : Destination IPv4 address.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group the target VM is in.')
            fprintf('%s\n', '    --source-ip         [Required] : Source IPv4 address.')
            fprintf('%s\n', '    --vm                [Required] : Name or ID of the VM to target. If the name of the VM is')
            fprintf('%s\n', '                                     provided, the --resource-group is required.')
            fprintf('%s\n', '    --nic                          : Name or ID of the NIC resource to test. If the VM has multiple')
            fprintf('%s\n', '                                     NICs and IP forwarding is enabled on any of them, this')
            fprintf('%s\n', '                                     parameter is required.')
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
            fprintf('%s\n', '    Get the next hop from a VMs assigned IP address to a destination at 10.1.0.4.')
            fprintf('%s\n', '        az network watcher show-next-hop -g MyResourceGroup --vm MyVm --source-ip 10.0.0.4 --dest-ip')
            fprintf('%s\n', '        10.1.0.4')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher show-next-hop"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_next_hop 
