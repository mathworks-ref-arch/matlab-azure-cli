classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network nsg rule create : Create a network security group rule.
            this.BaseCmd = 'az network nsg rule create ';
        end
        function this = name(this, varargin)
            % Name of the network security group rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = nsg_name(this, varargin)
            % Name of the network security group.
            this.Options = [this.Options, '--nsg-name', varargin{:}];
        end

        function this = priority(this, varargin)
            % Rule priority, between 100 (highest priority) and 4096 (lowest priority). Must be unique for each rule in the collection.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = access(this, varargin)
            % Allowed values: Allow, Deny.  Default: Allow.
            this.Options = [this.Options, '--access', varargin{:}];
        end

        function this = description(this, varargin)
            % Rule description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = direction(this, varargin)
            % Allowed values: Inbound, Outbound.  Default: Inbound.
            this.Options = [this.Options, '--direction', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Network protocol this rule applies to.  Allowed values: *, Ah, Esp, Icmp, Tcp, Udp.  Default: *. Destination Arguments
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = destination_address_prefixes(this, varargin)
            % Space-separated list of CIDR prefixes or IP ranges. Alternatively, specify ONE of 'VirtualNetwork', 'AzureLoadBalancer', 'Internet' or '*' to match all IPs. Besides, it also supports all available Service Tags like 'ApiManagement', 'SqlManagement', 'AzureMonitor', etc. Default: *.
            this.Options = [this.Options, '--destination-address-prefixes', varargin{:}];
        end

        function this = destination_asgs(this, varargin)
            % Space-separated list of application security group names or IDs. Limited by backend server, temporarily this argument only supports one application security group name or ID.
            this.Options = [this.Options, '--destination-asgs', varargin{:}];
        end

        function this = destination_port_ranges(this, varargin)
            % Space-separated list of ports or port ranges between 0-65535. Use '*' to match all ports.  Default: 80. Source Arguments
            this.Options = [this.Options, '--destination-port-ranges', varargin{:}];
        end

        function this = source_address_prefixes(this, varargin)
            % Space-separated list of CIDR prefixes or IP ranges. Alternatively, specify ONE of 'VirtualNetwork', 'AzureLoadBalancer', 'Internet' or '*' to match all IPs. Besides, it also supports all available Service Tags like 'ApiManagement', 'SqlManagement', 'AzureMonitor', etc. Default: *.
            this.Options = [this.Options, '--source-address-prefixes', varargin{:}];
        end

        function this = source_asgs(this, varargin)
            % Space-separated list of application security group names or IDs. Limited by backend server, temporarily this argument only supports one application security group name or ID.
            this.Options = [this.Options, '--source-asgs', varargin{:}];
        end

        function this = source_port_ranges(this, varargin)
            % Space-separated list of ports or port ranges between 0-65535. Use '*' to match all ports.  Default: *.
            this.Options = [this.Options, '--source-port-ranges', varargin{:}];
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
            fprintf('%s\n', '    az network nsg rule create : Create a network security group rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the network security group rule.')
            fprintf('%s\n', '    --nsg-name          [Required] : Name of the network security group.')
            fprintf('%s\n', '    --priority          [Required] : Rule priority, between 100 (highest priority) and 4096 (lowest')
            fprintf('%s\n', '                                     priority). Must be unique for each rule in the collection.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --access                       : Allowed values: Allow, Deny.  Default: Allow.')
            fprintf('%s\n', '    --description                  : Rule description.')
            fprintf('%s\n', '    --direction                    : Allowed values: Inbound, Outbound.  Default: Inbound.')
            fprintf('%s\n', '    --protocol                     : Network protocol this rule applies to.  Allowed values: *, Ah,')
            fprintf('%s\n', '                                     Esp, Icmp, Tcp, Udp.  Default: *.')
            fprintf('%s\n', 'Destination Arguments')
            fprintf('%s\n', '    --destination-address-prefixes : Space-separated list of CIDR prefixes or IP ranges.')
            fprintf('%s\n', '                                     Alternatively, specify ONE of ''VirtualNetwork'',')
            fprintf('%s\n', '                                     ''AzureLoadBalancer'', ''Internet'' or ''*'' to match all IPs.')
            fprintf('%s\n', '                                     Besides, it also supports all available Service Tags like')
            fprintf('%s\n', '                                     ''ApiManagement'', ''SqlManagement'', ''AzureMonitor'', etc.')
            fprintf('%s\n', '                                     Default: *.')
            fprintf('%s\n', '    --destination-asgs             : Space-separated list of application security group names or')
            fprintf('%s\n', '                                     IDs. Limited by backend server, temporarily this argument only')
            fprintf('%s\n', '                                     supports one application security group name or ID.')
            fprintf('%s\n', '    --destination-port-ranges      : Space-separated list of ports or port ranges between 0-65535.')
            fprintf('%s\n', '                                     Use ''*'' to match all ports.  Default: 80.')
            fprintf('%s\n', 'Source Arguments')
            fprintf('%s\n', '    --source-address-prefixes      : Space-separated list of CIDR prefixes or IP ranges.')
            fprintf('%s\n', '                                     Alternatively, specify ONE of ''VirtualNetwork'',')
            fprintf('%s\n', '                                     ''AzureLoadBalancer'', ''Internet'' or ''*'' to match all IPs.')
            fprintf('%s\n', '                                     Besides, it also supports all available Service Tags like')
            fprintf('%s\n', '                                     ''ApiManagement'', ''SqlManagement'', ''AzureMonitor'', etc.')
            fprintf('%s\n', '                                     Default: *.')
            fprintf('%s\n', '    --source-asgs                  : Space-separated list of application security group names or')
            fprintf('%s\n', '                                     IDs. Limited by backend server, temporarily this argument only')
            fprintf('%s\n', '                                     supports one application security group name or ID.')
            fprintf('%s\n', '    --source-port-ranges           : Space-separated list of ports or port ranges between 0-65535.')
            fprintf('%s\n', '                                     Use ''*'' to match all ports.  Default: *.')
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
            fprintf('%s\n', '    Create a basic "Allow" NSG rule with the highest priority.')
            fprintf('%s\n', '        az network nsg rule create -g MyResourceGroup --nsg-name MyNsg -n MyNsgRule --priority 100')
            fprintf('%s\n', '    Create a "Deny" rule over TCP for a specific IP address range with the lowest priority.')
            fprintf('%s\n', '        az network nsg rule create -g MyResourceGroup --nsg-name MyNsg -n MyNsgRule --priority 4096')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --source-address-prefixes 208.130.28/24 --source-port-ranges 80 \')
            fprintf('%s\n', '            --destination-address-prefixes ''*'' --destination-port-ranges 80 8080 --access Deny \')
            fprintf('%s\n', '            --protocol Tcp --description "Deny from specific IP address ranges on 80 and 8080."')
            fprintf('%s\n', '    Create a security rule using service tags. For more details visit https://aka.ms/servicetags')
            fprintf('%s\n', '        az network nsg rule create -g MyResourceGroup --nsg-name MyNsg -n MyNsgRuleWithTags \')
            fprintf('%s\n', '            --priority 400 --source-address-prefixes VirtualNetwork --destination-address-prefixes')
            fprintf('%s\n', '        Storage \')
            fprintf('%s\n', '            --destination-port-ranges ''*'' --direction Outbound --access Allow --protocol Tcp')
            fprintf('%s\n', '        --description "Allow VirtualNetwork to Storage."')
            fprintf('%s\n', '    Create a security rule using application security groups.')
            fprintf('%s\n', '    https://aka.ms/applicationsecuritygroups')
            fprintf('%s\n', '        az network nsg rule create -g MyResourceGroup --nsg-name MyNsg -n MyNsgRuleWithAsg \')
            fprintf('%s\n', '            --priority 500 --source-address-prefixes Internet --destination-port-ranges 80 8080 \')
            fprintf('%s\n', '            --destination-asgs Web --access Allow --protocol Tcp --description "Allow Internet to')
            fprintf('%s\n', '        Web ASG on ports 80,8080."')
            fprintf('%s\n', 'For more specific examples, use: az find "az network nsg rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
