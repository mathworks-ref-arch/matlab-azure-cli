classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network public-ip update : Update a public IP address.
            this.BaseCmd = 'az network public-ip update ';
        end
        function this = allocation_method(this, varargin)
            % IP address allocation method.  Allowed values: Dynamic, Static.
            this.Options = [this.Options, '--allocation-method', varargin{:}];
        end

        function this = dns_name(this, varargin)
            % Globally unique DNS entry.
            this.Options = [this.Options, '--dns-name', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
        end

        function this = ip_tags(this, varargin)
            % Space-separated list of IP tags in 'TYPE=VAL' format.
            this.Options = [this.Options, '--ip-tags', varargin{:}];
        end

        function this = public_ip_prefix(this, varargin)
            % Name or ID of a public IP prefix.
            this.Options = [this.Options, '--public-ip-prefix', varargin{:}];
        end

        function this = reverse_fqdn(this, varargin)
            % Reverse FQDN (fully qualified domain name).
            this.Options = [this.Options, '--reverse-fqdn', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = version(this, varargin)
            % IP address type.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--version', varargin{:}];
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

        function this = name(this, varargin)
            % The name of the public IP address.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network public-ip update : Update a public IP address.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allocation-method : IP address allocation method.  Allowed values: Dynamic, Static.')
            fprintf('%s\n', '    --dns-name          : Globally unique DNS entry.')
            fprintf('%s\n', '    --idle-timeout      : Idle timeout in minutes.')
            fprintf('%s\n', '    --ip-tags           : Space-separated list of IP tags in ''TYPE=VAL'' format.')
            fprintf('%s\n', '    --public-ip-prefix  : Name or ID of a public IP prefix.')
            fprintf('%s\n', '    --reverse-fqdn      : Reverse FQDN (fully qualified domain name).')
            fprintf('%s\n', '    --tags              : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                          existing tags.')
            fprintf('%s\n', '    --version           : IP address type.  Allowed values: IPv4, IPv6.  Default: IPv4.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the public IP address.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a public IP resource with a DNS name label and static allocation.')
            fprintf('%s\n', '        az network public-ip update -g MyResourceGroup -n MyIp --dns-name MyLabel --allocation-')
            fprintf('%s\n', '        method Static')
            fprintf('%s\n', 'For more specific examples, use: az find "az network public-ip update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 