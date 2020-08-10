classdef test_ip_flow < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = test_ip_flow()
            % az network watcher test-ip-flow : Test IP flow to/from a VM given the currently configured
            % network security group rules.
            % Requires that Network Watcher is enabled for the region in which the VM is located. For more
            % information visit https://docs.microsoft.com/azure/network-watcher/network-watcher-check-ip-
            % flow-verify-cli.
            this.BaseCmd = 'az network watcher test-ip-flow ';
        end
        function this = direction(this, varargin)
            % Direction of the packet relative to the VM.  Allowed values: Inbound, Outbound.
            this.Options = [this.Options, '--direction', varargin{:}];
        end

        function this = local(this, varargin)
            % The private IPv4 address for the VMs NIC and the port of the packet in X.X.X.X:PORT format. `*` can be used for port when direction is outbound.
            this.Options = [this.Options, '--local', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Protocol to test.  Allowed values: Http, Https, Icmp, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = remote(this, varargin)
            % The IPv4 address and port for the remote side of the packet X.X.X.X:PORT format. `*` can be used for port when the direction is inbound.
            this.Options = [this.Options, '--remote', varargin{:}];
        end

        function this = vm(this, varargin)
            % Name or ID of the VM to target. If the name of the VM is provided, the --resource-group is required.
            this.Options = [this.Options, '--vm', varargin{:}];
        end

        function this = nic(this, varargin)
            % Name or ID of the NIC resource to test. If the VM has multiple NICs and IP forwarding is enabled on any of them, this parameter is required.
            this.Options = [this.Options, '--nic', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group the target VM is in.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az network watcher test-ip-flow : Test IP flow to/from a VM given the currently configured')
            fprintf('%s\n', '    network security group rules.')
            fprintf('%s\n', '        Requires that Network Watcher is enabled for the region in which the VM is located. For more')
            fprintf('%s\n', '        information visit https://docs.microsoft.com/azure/network-watcher/network-watcher-check-ip-')
            fprintf('%s\n', '        flow-verify-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --direction [Required] : Direction of the packet relative to the VM.  Allowed values: Inbound,')
            fprintf('%s\n', '                             Outbound.')
            fprintf('%s\n', '    --local     [Required] : The private IPv4 address for the VMs NIC and the port of the packet in')
            fprintf('%s\n', '                             X.X.X.X:PORT format. `*` can be used for port when direction is')
            fprintf('%s\n', '                             outbound.')
            fprintf('%s\n', '    --protocol  [Required] : Protocol to test.  Allowed values: Http, Https, Icmp, Tcp.')
            fprintf('%s\n', '    --remote    [Required] : The IPv4 address and port for the remote side of the packet')
            fprintf('%s\n', '                             X.X.X.X:PORT format. `*` can be used for port when the direction is')
            fprintf('%s\n', '                             inbound.')
            fprintf('%s\n', '    --vm        [Required] : Name or ID of the VM to target. If the name of the VM is provided, the')
            fprintf('%s\n', '                             --resource-group is required.')
            fprintf('%s\n', '    --nic                  : Name or ID of the NIC resource to test. If the VM has multiple NICs and')
            fprintf('%s\n', '                             IP forwarding is enabled on any of them, this parameter is required.')
            fprintf('%s\n', '    --resource-group -g    : Name of the resource group the target VM is in.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Run test-ip-flow verify to test logical connectivity from a VM to the specified destination IPv4')
            fprintf('%s\n', '    address and port.')
            fprintf('%s\n', '        az network watcher test-ip-flow -g MyResourceGroup --direction Outbound \')
            fprintf('%s\n', '            --protocol TCP --local 10.0.0.4:* --remote 10.1.0.4:80 --vm MyVm')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher test-ip-flow"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class test_ip_flow 
