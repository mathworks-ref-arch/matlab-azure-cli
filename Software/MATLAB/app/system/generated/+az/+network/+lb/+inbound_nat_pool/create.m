classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb inbound-nat-pool create : Create an inbound NAT address pool.
            this.BaseCmd = 'az network lb inbound-nat-pool create ';
        end
        function this = backend_port(this, varargin)
            % Port number.
            this.Options = [this.Options, '--backend-port', varargin{:}];
        end

        function this = frontend_port_range_end(this, varargin)
            % Port number.
            this.Options = [this.Options, '--frontend-port-range-end', varargin{:}];
        end

        function this = frontend_port_range_start(this, varargin)
            % Port number.
            this.Options = [this.Options, '--frontend-port-range-start', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the inbound NAT pool.
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

        function this = floating_ip(this, varargin)
            % Enable floating IP.  Allowed values: false, true.
            this.Options = [this.Options, '--floating-ip', varargin{:}];
        end

        function this = frontend_ip_name(this, varargin)
            % The name of the frontend IP configuration. If only one exists, omit to use as default.
            this.Options = [this.Options, '--frontend-ip-name', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
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
            fprintf('%s\n', '    az network lb inbound-nat-pool create : Create an inbound NAT address pool.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backend-port              [Required] : Port number.')
            fprintf('%s\n', '    --frontend-port-range-end   [Required] : Port number.')
            fprintf('%s\n', '    --frontend-port-range-start [Required] : Port number.')
            fprintf('%s\n', '    --lb-name                   [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n                   [Required] : The name of the inbound NAT pool.')
            fprintf('%s\n', '    --protocol                  [Required] : Network transport protocol.  Allowed values: All, Tcp,')
            fprintf('%s\n', '                                             Udp.')
            fprintf('%s\n', '    --resource-group -g         [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                             group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-tcp-reset                     : Receive bidirectional TCP reset on TCP flow idle')
            fprintf('%s\n', '                                             timeout or unexpected connection termination. Only used')
            fprintf('%s\n', '                                             when protocol is set to TCP.  Allowed values: false,')
            fprintf('%s\n', '                                             true.')
            fprintf('%s\n', '    --floating-ip                          : Enable floating IP.  Allowed values: false, true.')
            fprintf('%s\n', '    --frontend-ip-name                     : The name of the frontend IP configuration. If only one')
            fprintf('%s\n', '                                             exists, omit to use as default.')
            fprintf('%s\n', '    --idle-timeout                         : Idle timeout in minutes.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                            : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                             table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                             more information and examples.')
            fprintf('%s\n', '    --subscription                         : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                             default subscription using `az account set -s')
            fprintf('%s\n', '                                             NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                              : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                             logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an inbound NAT address pool.')
            fprintf('%s\n', '        az network lb inbound-nat-pool create -g MyResourceGroup --lb-name MyLb \')
            fprintf('%s\n', '        -n MyNatPool --protocol Tcp --frontend-port-range-start 80 --frontend-port-range-end 89 \')
            fprintf('%s\n', '        --backend-port 80 --frontend-ip-name MyFrontendIp')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb inbound-nat-pool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
