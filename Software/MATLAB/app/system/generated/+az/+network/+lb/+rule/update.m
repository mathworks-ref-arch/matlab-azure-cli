classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network lb rule update : Update a load balancing rule.
            this.BaseCmd = 'az network lb rule update ';
        end
        function this = backend_pool_name(this, varargin)
            % The name of the backend address pool.
            this.Options = [this.Options, '--backend-pool-name', varargin{:}];
        end

        function this = backend_port(this, varargin)
            % Port number.
            this.Options = [this.Options, '--backend-port', varargin{:}];
        end

        function this = disable_outbound_snat(this, varargin)
            % Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-outbound-snat', varargin{:}];
        end

        function this = enable_tcp_reset(this, varargin)
            % Receive bidirectional TCP reset on TCP flow idle timeout or unexpected connection termination. Only used when protocol is set to TCP. Allowed values: false, true.
            this.Options = [this.Options, '--enable-tcp-reset', varargin{:}];
        end

        function this = floating_ip(this, varargin)
            % Enable floating IP.  Allowed values: false, true.
            this.Options = [this.Options, '--floating-ip', varargin{:}];
        end

        function this = frontend_ip_name(this, varargin)
            % The name of the frontend IP configuration.
            this.Options = [this.Options, '--frontend-ip-name', varargin{:}];
        end

        function this = frontend_port(this, varargin)
            % Port number.
            this.Options = [this.Options, '--frontend-port', varargin{:}];
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

        function this = protocol(this, varargin)
            % Network transport protocol.  Allowed values: All, Tcp, Udp.
            this.Options = [this.Options, '--protocol', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the load balancing rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network lb rule update : Update a load balancing rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --backend-pool-name     : The name of the backend address pool.')
            fprintf('%s\n', '    --backend-port          : Port number.')
            fprintf('%s\n', '    --disable-outbound-snat : Configures SNAT for the VMs in the backend pool to use the publicIP')
            fprintf('%s\n', '                              address specified in the frontend of the load balancing rule.  Allowed')
            fprintf('%s\n', '                              values: false, true.')
            fprintf('%s\n', '    --enable-tcp-reset      : Receive bidirectional TCP reset on TCP flow idle timeout or unexpected')
            fprintf('%s\n', '                              connection termination. Only used when protocol is set to TCP.')
            fprintf('%s\n', '                              Allowed values: false, true.')
            fprintf('%s\n', '    --floating-ip           : Enable floating IP.  Allowed values: false, true.')
            fprintf('%s\n', '    --frontend-ip-name      : The name of the frontend IP configuration.')
            fprintf('%s\n', '    --frontend-port         : Port number.')
            fprintf('%s\n', '    --idle-timeout          : Idle timeout in minutes.')
            fprintf('%s\n', '    --load-distribution     : Affinity rule settings.  Allowed values: Default, SourceIP,')
            fprintf('%s\n', '                              SourceIPProtocol.  Default: default.')
            fprintf('%s\n', '    --probe-name            : Name of an existing probe to associate with this rule.')
            fprintf('%s\n', '    --protocol              : Network transport protocol.  Allowed values: All, Tcp, Udp.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                   : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                              pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                              JSON string>.')
            fprintf('%s\n', '    --force-string          : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                              attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                              property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                   : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                              Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --lb-name               : The load balancer name.')
            fprintf('%s\n', '    --name -n               : The name of the load balancing rule.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a load balancing rule to change the protocol to UDP.')
            fprintf('%s\n', '        az network lb rule update -g MyResourceGroup --lb-name MyLb -n MyLbRule --protocol Udp')
            fprintf('%s\n', '    Update a load balancing rule to support HA ports.')
            fprintf('%s\n', '        az network lb rule update -g MyResourceGroup --lb-name MyLb -n MyLbRule \ --protocol All')
            fprintf('%s\n', '        --frontend-port 0 --backend-port 0')
            fprintf('%s\n', '    Update a load balancing rule. (autogenerated)')
            fprintf('%s\n', '        az network lb rule update --disable-outbound-snat true --lb-name MyLb --name MyLbRule')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb rule update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
