classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb outbound-rule create : Create an outbound-rule.
            this.BaseCmd = 'az network lb outbound-rule create ';
        end
        function this = address_pool(this, varargin)
            % Name or ID of the backend address pool.
            this.Options = [this.Options, '--address-pool', varargin{:}];
        end

        function this = frontend_ip_configs(this, varargin)
            % Space-separated list of frontend IP configuration names or IDs.
            this.Options = [this.Options, '--frontend-ip-configs', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the outbound rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Network transport protocol.  Allowed values: All, Tcp, Udp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = enable_tcp_reset(this, varargin)
            % Receive bidirectional TCP reset on TCP flow idle timeout or unexpected connection termination. Only used when protocol is set to TCP.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-tcp-reset', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
        end

        function this = outbound_ports(this, varargin)
            % The number of outbound ports to be used for NAT.
            this.Options = [this.Options, '--outbound-ports', varargin{:}];
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
            fprintf('%s\n', '    az network lb outbound-rule create : Create an outbound-rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-pool        [Required] : Name or ID of the backend address pool.')
            fprintf('%s\n', '    --frontend-ip-configs [Required] : Space-separated list of frontend IP configuration names or')
            fprintf('%s\n', '                                       IDs.')
            fprintf('%s\n', '    --lb-name             [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n             [Required] : The name of the outbound rule.')
            fprintf('%s\n', '    --protocol            [Required] : Network transport protocol.  Allowed values: All, Tcp, Udp.')
            fprintf('%s\n', '    --resource-group -g   [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-tcp-reset               : Receive bidirectional TCP reset on TCP flow idle timeout or')
            fprintf('%s\n', '                                       unexpected connection termination. Only used when protocol is')
            fprintf('%s\n', '                                       set to TCP.  Allowed values: false, true.')
            fprintf('%s\n', '    --idle-timeout                   : Idle timeout in minutes.')
            fprintf('%s\n', '    --outbound-ports                 : The number of outbound ports to be used for NAT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an outbound-rule. (autogenerated)')
            fprintf('%s\n', '        az network lb outbound-rule create --address-pool MyAddressPool --frontend-ip-configs')
            fprintf('%s\n', '        myfrontendoutbound --idle-timeout 5 --lb-name MyLb --name MyOutboundRule --outbound-ports')
            fprintf('%s\n', '        10000 --protocol Udp --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb outbound-rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
