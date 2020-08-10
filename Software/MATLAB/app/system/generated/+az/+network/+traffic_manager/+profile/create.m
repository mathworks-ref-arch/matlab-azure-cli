classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network traffic-manager profile create : Create a traffic manager profile.
            this.BaseCmd = 'az network traffic-manager profile create ';
        end
        function this = name(this, varargin)
            % Traffic manager profile name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = routing_method(this, varargin)
            % Routing method.  Allowed values: Geographic, Multivalue, Performance, Priority, Subnet, Weighted.
            this.Options = [this.Options, '--routing-method', varargin{:}];
        end

        function this = unique_dns_name(this, varargin)
            % Relative DNS name for the traffic manager profile. Resulting FQDN will be `<unique-dns-name>.trafficmanager.net` and must be globally unique.
            this.Options = [this.Options, '--unique-dns-name', varargin{:}];
        end

        function this = status(this, varargin)
            % Status of the Traffic Manager profile.  Allowed values: Disabled, Enabled.  Default: Enabled.
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = ttl(this, varargin)
            % DNS config time-to-live in seconds.  Default: 30. Monitor Configuration Arguments
            this.Options = [this.Options, '--ttl', varargin{:}];
        end

        function this = custom_headers(this, varargin)
            % Space-separated list of NAME=VALUE pairs.
            this.Options = [this.Options, '--custom-headers', varargin{:}];
        end

        function this = interval(this, varargin)
            % The interval in seconds at which health checks are conducted.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = max_failures(this, varargin)
            % The number of consecutive failed health checks tolerated before an endpoint is considered degraded.
            this.Options = [this.Options, '--max-failures', varargin{:}];
        end

        function this = path(this, varargin)
            % Path to monitor. Use "" for none.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = port(this, varargin)
            % Port to monitor.  Default: 80.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Monitor protocol.  Allowed values: HTTP, HTTPS, TCP.  Default: HTTP.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = status_code_ranges(this, varargin)
            % Space-separated list of status codes in MIN-MAX or VAL format.
            this.Options = [this.Options, '--status-code-ranges', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The time in seconds allowed for endpoints to respond to a health check.
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            fprintf('%s\n', '    az network traffic-manager profile create : Create a traffic manager profile.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Traffic manager profile name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --routing-method    [Required] : Routing method.  Allowed values: Geographic, Multivalue,')
            fprintf('%s\n', '                                     Performance, Priority, Subnet, Weighted.')
            fprintf('%s\n', '    --unique-dns-name   [Required] : Relative DNS name for the traffic manager profile. Resulting')
            fprintf('%s\n', '                                     FQDN will be `<unique-dns-name>.trafficmanager.net` and must be')
            fprintf('%s\n', '                                     globally unique.')
            fprintf('%s\n', '    --status                       : Status of the Traffic Manager profile.  Allowed values:')
            fprintf('%s\n', '                                     Disabled, Enabled.  Default: Enabled.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --ttl                          : DNS config time-to-live in seconds.  Default: 30.')
            fprintf('%s\n', 'Monitor Configuration Arguments')
            fprintf('%s\n', '    --custom-headers               : Space-separated list of NAME=VALUE pairs.')
            fprintf('%s\n', '    --interval                     : The interval in seconds at which health checks are conducted.')
            fprintf('%s\n', '    --max-failures                 : The number of consecutive failed health checks tolerated before')
            fprintf('%s\n', '                                     an endpoint is considered degraded.')
            fprintf('%s\n', '    --path                         : Path to monitor. Use "" for none.')
            fprintf('%s\n', '    --port                         : Port to monitor.  Default: 80.')
            fprintf('%s\n', '    --protocol                     : Monitor protocol.  Allowed values: HTTP, HTTPS, TCP.  Default:')
            fprintf('%s\n', '                                     HTTP.')
            fprintf('%s\n', '    --status-code-ranges           : Space-separated list of status codes in MIN-MAX or VAL format.')
            fprintf('%s\n', '    --timeout                      : The time in seconds allowed for endpoints to respond to a')
            fprintf('%s\n', '                                     health check.')
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
            fprintf('%s\n', '    Create a traffic manager profile with performance routing.')
            fprintf('%s\n', '        az network traffic-manager profile create -g MyResourceGroup -n MyTmProfile --routing-method')
            fprintf('%s\n', '        Performance \')
            fprintf('%s\n', '            --unique-dns-name mywebapp --ttl 30 --protocol HTTP --port 80 --path "/"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager profile create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
