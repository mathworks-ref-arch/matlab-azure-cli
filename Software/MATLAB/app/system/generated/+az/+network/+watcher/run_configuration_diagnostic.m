classdef run_configuration_diagnostic < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = run_configuration_diagnostic()
            % az network watcher run-configuration-diagnostic : Run a configuration diagnostic on a target
            % resource.
            % Requires that Network Watcher is enabled for the region in which the target is located.
            this.BaseCmd = 'az network watcher run-configuration-diagnostic ';
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

        function this = destination(this, varargin)
            % Traffic destination. Accepted values are '*', IP address/CIDR, or service tag.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = direction(this, varargin)
            % Direction of the traffic.  Allowed values: Inbound, Outbound.
            this.Options = [this.Options, '--direction', varargin{:}];
        end

        function this = port(this, varargin)
            % Traffic destination port. Accepted values are '*', port number (3389) or port range (80-100).
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Protocol to be verified on.  Allowed values: Http, Https, Icmp, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = queries(this, varargin)
            % JSON list of queries to use. Use `@{path}` to load from a file.
            this.Options = [this.Options, '--queries', varargin{:}];
        end

        function this = source(this, varargin)
            % Traffic source. Accepted values are '*', IP address/CIDR, or service tag.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = resource(this, varargin)
            % Name or ID of the target resource to diagnose. If an ID is given, other resource arguments should not be given.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path. (ex: virtualMachineScaleSets/vmss1).
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % The resource type.  Allowed values: applicationGateways, networkInterfaces, virtualMachines.
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network watcher run-configuration-diagnostic : Run a configuration diagnostic on a target')
            fprintf('%s\n', '    resource.')
            fprintf('%s\n', '        Requires that Network Watcher is enabled for the region in which the target is located.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Query Arguments')
            fprintf('%s\n', '    --destination         : Traffic destination. Accepted values are ''*'', IP address/CIDR, or')
            fprintf('%s\n', '                            service tag.')
            fprintf('%s\n', '    --direction           : Direction of the traffic.  Allowed values: Inbound, Outbound.')
            fprintf('%s\n', '    --port                : Traffic destination port. Accepted values are ''*'', port number (3389) or')
            fprintf('%s\n', '                            port range (80-100).')
            fprintf('%s\n', '    --protocol            : Protocol to be verified on.  Allowed values: Http, Https, Icmp, Tcp.')
            fprintf('%s\n', '    --queries             : JSON list of queries to use. Use `@{path}` to load from a file.')
            fprintf('%s\n', '    --source              : Traffic source. Accepted values are ''*'', IP address/CIDR, or service')
            fprintf('%s\n', '                            tag.')
            fprintf('%s\n', 'Target Arguments')
            fprintf('%s\n', '    --resource [Required] : Name or ID of the target resource to diagnose. If an ID is given, other')
            fprintf('%s\n', '                            resource arguments should not be given.')
            fprintf('%s\n', '    --parent              : The parent path. (ex: virtualMachineScaleSets/vmss1).')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type -t    : The resource type.  Allowed values: applicationGateways,')
            fprintf('%s\n', '                            networkInterfaces, virtualMachines.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Run configuration diagnostic on a VM with a single query.')
            fprintf('%s\n', '        az network watcher run-configuration-diagnostic --resource {VM_ID}')
            fprintf('%s\n', '           --direction Inbound --protocol TCP --source 12.11.12.14 --destination 10.1.1.4 --port')
            fprintf('%s\n', '        12100')
            fprintf('%s\n', '    Run configuration diagnostic on a VM with multiple queries.')
            fprintf('%s\n', '        az network watcher run-configuration-diagnostic --resource {VM_ID}')
            fprintf('%s\n', '            --queries ''[')
            fprintf('%s\n', '            {')
            fprintf('%s\n', '                "direction": "Inbound", "protocol": "TCP", "source": "12.11.12.14",')
            fprintf('%s\n', '                "destination": "10.1.1.4", "destinationPort": "12100"')
            fprintf('%s\n', '            },')
            fprintf('%s\n', '            {')
            fprintf('%s\n', '                "direction": "Inbound", "protocol": "TCP", "source": "12.11.12.0/32",')
            fprintf('%s\n', '                "destination": "10.1.1.4", "destinationPort": "12100"')
            fprintf('%s\n', '            },')
            fprintf('%s\n', '            {')
            fprintf('%s\n', '                "direction": "Outbound", "protocol": "TCP", "source": "12.11.12.14",')
            fprintf('%s\n', '                "destination": "10.1.1.4", "destinationPort": "12100"')
            fprintf('%s\n', '            }]''')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher run-configuration-diagnostic"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class run_configuration_diagnostic 
