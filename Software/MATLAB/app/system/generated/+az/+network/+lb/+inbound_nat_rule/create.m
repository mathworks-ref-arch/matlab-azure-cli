classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb inbound-nat-rule create : Create an inbound NAT rule.
            this.BaseCmd = 'az network lb inbound-nat-rule create ';
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
            % The name of the inbound NAT rule.
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
            fprintf('%s\n', '    az network lb inbound-nat-rule create : Create an inbound NAT rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backend-port      [Required] : Port number.')
            fprintf('%s\n', '    --frontend-port     [Required] : Port number.')
            fprintf('%s\n', '    --lb-name           [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the inbound NAT rule.')
            fprintf('%s\n', '    --protocol          [Required] : Network transport protocol.  Allowed values: All, Tcp, Udp.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-tcp-reset             : Receive bidirectional TCP reset on TCP flow idle timeout or')
            fprintf('%s\n', '                                     unexpected connection termination. Only used when protocol is')
            fprintf('%s\n', '                                     set to TCP.  Allowed values: false, true.')
            fprintf('%s\n', '    --floating-ip                  : Enable floating IP.  Allowed values: false, true.')
            fprintf('%s\n', '    --frontend-ip-name             : The name of the frontend IP configuration. If only one exists,')
            fprintf('%s\n', '                                     omit to use as default.')
            fprintf('%s\n', '    --idle-timeout                 : Idle timeout in minutes.')
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
            fprintf('%s\n', '    Create a basic inbound NAT rule for port 80.')
            fprintf('%s\n', '        az network lb inbound-nat-rule create -g MyResourceGroup --lb-name MyLb -n MyNatRule \')
            fprintf('%s\n', '            --protocol Tcp --frontend-port 80 --backend-port 80')
            fprintf('%s\n', '    Create a basic inbound NAT rule for a specific frontend IP and enable floating IP for NAT Rule.')
            fprintf('%s\n', '        az network lb inbound-nat-rule create -g MyResourceGroup --lb-name MyLb -n MyNatRule')
            fprintf('%s\n', '        --protocol Tcp \')
            fprintf('%s\n', '            --frontend-port 5432 --backend-port 3389 --frontend-ip-name MyFrontendIp --floating-ip')
            fprintf('%s\n', '        true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb inbound-nat-rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
