classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb rule create : Create a load balancing rule.
            this.BaseCmd = 'az network lb rule create ';
        end
        function this = backend_port(this, varargin)
            % Port number.
            this.Options = [this.Options, '--backend-port', varargin{:}];
        end

        function this = frontend_port(this, varargin)
            % Port number.
            this.Options = [this.Options, '--frontend-port', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the load balancing rule.
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

        function this = backend_pool_name(this, varargin)
            % The name of the backend address pool. If only one exists, omit to use as default.
            this.Options = [this.Options, '--backend-pool-name', varargin{:}];
        end

        function this = disable_outbound_snat(this, varargin)
            % Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-outbound-snat', varargin{:}];
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

        function this = load_distribution(this, varargin)
            % Affinity rule settings.  Allowed values: Default, SourceIP, SourceIPProtocol.  Default: default.
            this.Options = [this.Options, '--load-distribution', varargin{:}];
        end

        function this = probe_name(this, varargin)
            % Name of an existing probe to associate with this rule.
            this.Options = [this.Options, '--probe-name', varargin{:}];
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
            fprintf('%s\n', '    az network lb rule create : Create a load balancing rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backend-port      [Required] : Port number.')
            fprintf('%s\n', '    --frontend-port     [Required] : Port number.')
            fprintf('%s\n', '    --lb-name           [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the load balancing rule.')
            fprintf('%s\n', '    --protocol          [Required] : Network transport protocol.  Allowed values: All, Tcp, Udp.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --backend-pool-name            : The name of the backend address pool. If only one exists, omit')
            fprintf('%s\n', '                                     to use as default.')
            fprintf('%s\n', '    --disable-outbound-snat        : Configures SNAT for the VMs in the backend pool to use the')
            fprintf('%s\n', '                                     publicIP address specified in the frontend of the load')
            fprintf('%s\n', '                                     balancing rule.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-tcp-reset             : Receive bidirectional TCP reset on TCP flow idle timeout or')
            fprintf('%s\n', '                                     unexpected connection termination. Only used when protocol is')
            fprintf('%s\n', '                                     set to TCP.  Allowed values: false, true.')
            fprintf('%s\n', '    --floating-ip                  : Enable floating IP.  Allowed values: false, true.')
            fprintf('%s\n', '    --frontend-ip-name             : The name of the frontend IP configuration. If only one exists,')
            fprintf('%s\n', '                                     omit to use as default.')
            fprintf('%s\n', '    --idle-timeout                 : Idle timeout in minutes.')
            fprintf('%s\n', '    --load-distribution            : Affinity rule settings.  Allowed values: Default, SourceIP,')
            fprintf('%s\n', '                                     SourceIPProtocol.  Default: default.')
            fprintf('%s\n', '    --probe-name                   : Name of an existing probe to associate with this rule.')
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
            fprintf('%s\n', '    Create a load balancing rule that assigns a front-facing IP configuration and port to an address')
            fprintf('%s\n', '    pool and port.')
            fprintf('%s\n', '        az network lb rule create -g MyResourceGroup --lb-name MyLb -n MyLbRule --protocol Tcp \')
            fprintf('%s\n', '            --frontend-ip-name MyFrontEndIp --frontend-port 80 \')
            fprintf('%s\n', '            --backend-pool-name MyAddressPool --backend-port 80')
            fprintf('%s\n', '    Create a load balancing rule that assigns a front-facing IP configuration and port to an address')
            fprintf('%s\n', '    pool and port with the floating ip feature.')
            fprintf('%s\n', '        az network lb rule create -g MyResourceGroup --lb-name MyLb -n MyLbRule --protocol Tcp \')
            fprintf('%s\n', '            --frontend-ip-name MyFrontEndIp --backend-pool-name MyAddressPool  \')
            fprintf('%s\n', '            --floating-ip true --frontend-port 80 --backend-port 80')
            fprintf('%s\n', '    Create an HA ports load balancing rule that assigns a frontend IP and port to use all available')
            fprintf('%s\n', '    backend IPs in a pool on the same port.')
            fprintf('%s\n', '        az network lb rule create -g MyResourceGroup --lb-name MyLb -n MyHAPortsRule \')
            fprintf('%s\n', '            --protocol All --frontend-port 0 --backend-port 0 --frontend-ip-name MyFrontendIp \')
            fprintf('%s\n', '            --backend-pool-name MyAddressPool')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
