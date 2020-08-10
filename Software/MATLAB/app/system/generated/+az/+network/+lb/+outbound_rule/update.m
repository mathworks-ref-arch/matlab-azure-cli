classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network lb outbound-rule update : Update an outbound-rule.
            this.BaseCmd = 'az network lb outbound-rule update ';
        end
        function this = address_pool(this, varargin)
            % Name or ID of the backend address pool.
            this.Options = [this.Options, '--address-pool', varargin{:}];
        end

        function this = enable_tcp_reset(this, varargin)
            % Receive bidirectional TCP reset on TCP flow idle timeout or unexpected connection termination. Only used when protocol is set to TCP.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-tcp-reset', varargin{:}];
        end

        function this = frontend_ip_configs(this, varargin)
            % Space-separated list of frontend IP configuration names or IDs.
            this.Options = [this.Options, '--frontend-ip-configs', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
        end

        function this = outbound_ports(this, varargin)
            % The number of outbound ports to be used for NAT.
            this.Options = [this.Options, '--outbound-ports', varargin{:}];
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
            % The name of the outbound rule.
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
            fprintf('%s\n', '    az network lb outbound-rule update : Update an outbound-rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-pool        : Name or ID of the backend address pool.')
            fprintf('%s\n', '    --enable-tcp-reset    : Receive bidirectional TCP reset on TCP flow idle timeout or unexpected')
            fprintf('%s\n', '                            connection termination. Only used when protocol is set to TCP.  Allowed')
            fprintf('%s\n', '                            values: false, true.')
            fprintf('%s\n', '    --frontend-ip-configs : Space-separated list of frontend IP configuration names or IDs.')
            fprintf('%s\n', '    --idle-timeout        : Idle timeout in minutes.')
            fprintf('%s\n', '    --outbound-ports      : The number of outbound ports to be used for NAT.')
            fprintf('%s\n', '    --protocol            : Network transport protocol.  Allowed values: All, Tcp, Udp.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                 : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                            pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                            string>.')
            fprintf('%s\n', '    --force-string        : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                            attempting to convert to JSON.')
            fprintf('%s\n', '    --remove              : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                            property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                 : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                            Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --lb-name             : The load balancer name.')
            fprintf('%s\n', '    --name -n             : The name of the outbound rule.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an outbound-rule. (autogenerated)')
            fprintf('%s\n', '        az network lb outbound-rule update --enable-tcp-reset true --lb-name MyLb --name')
            fprintf('%s\n', '        MyOutboundRule --outbound-ports 10000 --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb outbound-rule update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
