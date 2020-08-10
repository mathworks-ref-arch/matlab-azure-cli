classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network watcher connection-monitor test-group add : Add a test group along with new-
            % added/existing endpoint and test configuration to a connection monitor.
            % Command group 'network watcher connection-monitor test-group' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az network watcher connection-monitor test-group add ';
        end
        function this = connection_monitor(this, varargin)
            % Connection monitor name.
            this.Options = [this.Options, '--connection-monitor', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the connection monitor test group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = disable(this, varargin)
            % Value indicating whether test group is disabled. false is default.  Allowed values: false, true. V2 Endpoint Arguments
            this.Options = [this.Options, '--disable', varargin{:}];
        end

        function this = endpoint_dest_name(this, varargin)
            % The name of the source of connection monitor endpoint. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--endpoint-dest-name', varargin{:}];
        end

        function this = endpoint_source_name(this, varargin)
            % The name of the destination of connection monitor endpoint. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--endpoint-source-name', varargin{:}];
        end

        function this = endpoint_dest_address(this, varargin)
            % Address of the source of connection monitor endpoint (IP or domain name).
            this.Options = [this.Options, '--endpoint-dest-address', varargin{:}];
        end

        function this = endpoint_dest_resource_id(this, varargin)
            % Resource ID of the source of connection monitor endpoint.
            this.Options = [this.Options, '--endpoint-dest-resource-id', varargin{:}];
        end

        function this = endpoint_source_address(this, varargin)
            % Address of the destination of connection monitor endpoint (IP or domain name).
            this.Options = [this.Options, '--endpoint-source-address', varargin{:}];
        end

        function this = endpoint_source_resource_id(this, varargin)
            % Resource ID of the destination of connection monitor endpoint. If endpoint is intended to used as source, this option is required. V2 Test Configuration Arguments
            this.Options = [this.Options, '--endpoint-source-resource-id', varargin{:}];
        end

        function this = test_config_name(this, varargin)
            % The name of the connection monitor test configuration. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--test-config-name', varargin{:}];
        end

        function this = frequency(this, varargin)
            % The frequency of test evaluation, in seconds.  Default: 60.
            this.Options = [this.Options, '--frequency', varargin{:}];
        end

        function this = http_method(this, varargin)
            % The HTTP method to use.  Allowed values: Get, Post.
            this.Options = [this.Options, '--http-method', varargin{:}];
        end

        function this = http_path(this, varargin)
            % The path component of the URI. For instance, "/dir1/dir2".
            this.Options = [this.Options, '--http-path', varargin{:}];
        end

        function this = http_port(this, varargin)
            % The port to connect to.
            this.Options = [this.Options, '--http-port', varargin{:}];
        end

        function this = http_valid_status_codes(this, varargin)
            % Space-separated list of HTTP status codes to consider successful. For instance, "2xx 301-304 418".
            this.Options = [this.Options, '--http-valid-status-codes', varargin{:}];
        end

        function this = https_prefer(this, varargin)
            % Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.  Allowed values: false, true.
            this.Options = [this.Options, '--https-prefer', varargin{:}];
        end

        function this = icmp_disable_trace_route(this, varargin)
            % Value indicating whether path evaluation with trace route should be disabled. false is default.  Allowed values: false, true.
            this.Options = [this.Options, '--icmp-disable-trace-route', varargin{:}];
        end

        function this = preferred_ip_version(this, varargin)
            % The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.  Allowed values: IPv4, IPv6.
            this.Options = [this.Options, '--preferred-ip-version', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The protocol to use in test evaluation.  Allowed values: Http, Icmp, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = tcp_disable_trace_route(this, varargin)
            % Value indicating whether path evaluation with trace route should be disabled. false is default.  Allowed values: false, true.
            this.Options = [this.Options, '--tcp-disable-trace-route', varargin{:}];
        end

        function this = tcp_port(this, varargin)
            % The port to connect to.
            this.Options = [this.Options, '--tcp-port', varargin{:}];
        end

        function this = threshold_failed_percent(this, varargin)
            % The maximum percentage of failed checks permitted for a test to evaluate as successful.
            this.Options = [this.Options, '--threshold-failed-percent', varargin{:}];
        end

        function this = threshold_round_trip_time(this, varargin)
            % The maximum round-trip time in milliseconds permitted for a test to evaluate as successful.
            this.Options = [this.Options, '--threshold-round-trip-time', varargin{:}];
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
            fprintf('%s\n', '    az network watcher connection-monitor test-group add : Add a test group along with new-')
            fprintf('%s\n', '    added/existing endpoint and test configuration to a connection monitor.')
            fprintf('%s\n', '        Command group ''network watcher connection-monitor test-group'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-monitor   [Required] : Connection monitor name.')
            fprintf('%s\n', '    --location -l          [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                        configure the default location using `az configure')
            fprintf('%s\n', '                                        --defaults location=<location>`.')
            fprintf('%s\n', '    --name -n              [Required] : The name of the connection monitor test group.')
            fprintf('%s\n', '    --disable                         : Value indicating whether test group is disabled. false is')
            fprintf('%s\n', '                                        default.  Allowed values: false, true.')
            fprintf('%s\n', 'V2 Endpoint Arguments')
            fprintf('%s\n', '    --endpoint-dest-name   [Required] : The name of the source of connection monitor endpoint. If')
            fprintf('%s\n', '                                        you are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --endpoint-source-name [Required] : The name of the destination of connection monitor endpoint.')
            fprintf('%s\n', '                                        If you are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --endpoint-dest-address           : Address of the source of connection monitor endpoint (IP or')
            fprintf('%s\n', '                                        domain name).')
            fprintf('%s\n', '    --endpoint-dest-resource-id       : Resource ID of the source of connection monitor endpoint.')
            fprintf('%s\n', '    --endpoint-source-address         : Address of the destination of connection monitor endpoint')
            fprintf('%s\n', '                                        (IP or domain name).')
            fprintf('%s\n', '    --endpoint-source-resource-id     : Resource ID of the destination of connection monitor')
            fprintf('%s\n', '                                        endpoint. If endpoint is intended to used as source, this')
            fprintf('%s\n', '                                        option is required.')
            fprintf('%s\n', 'V2 Test Configuration Arguments')
            fprintf('%s\n', '    --test-config-name     [Required] : The name of the connection monitor test configuration. If')
            fprintf('%s\n', '                                        you are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --frequency                       : The frequency of test evaluation, in seconds.  Default: 60.')
            fprintf('%s\n', '    --http-method                     : The HTTP method to use.  Allowed values: Get, Post.')
            fprintf('%s\n', '    --http-path                       : The path component of the URI. For instance, "/dir1/dir2".')
            fprintf('%s\n', '    --http-port                       : The port to connect to.')
            fprintf('%s\n', '    --http-valid-status-codes         : Space-separated list of HTTP status codes to consider')
            fprintf('%s\n', '                                        successful. For instance, "2xx 301-304 418".')
            fprintf('%s\n', '    --https-prefer                    : Value indicating whether HTTPS is preferred over HTTP in')
            fprintf('%s\n', '                                        cases where the choice is not explicit.  Allowed values:')
            fprintf('%s\n', '                                        false, true.')
            fprintf('%s\n', '    --icmp-disable-trace-route        : Value indicating whether path evaluation with trace route')
            fprintf('%s\n', '                                        should be disabled. false is default.  Allowed values:')
            fprintf('%s\n', '                                        false, true.')
            fprintf('%s\n', '    --preferred-ip-version            : The preferred IP version to use in test evaluation. The')
            fprintf('%s\n', '                                        connection monitor may choose to use a different version')
            fprintf('%s\n', '                                        depending on other parameters.  Allowed values: IPv4, IPv6.')
            fprintf('%s\n', '    --protocol                        : The protocol to use in test evaluation.  Allowed values:')
            fprintf('%s\n', '                                        Http, Icmp, Tcp.')
            fprintf('%s\n', '    --tcp-disable-trace-route         : Value indicating whether path evaluation with trace route')
            fprintf('%s\n', '                                        should be disabled. false is default.  Allowed values:')
            fprintf('%s\n', '                                        false, true.')
            fprintf('%s\n', '    --tcp-port                        : The port to connect to.')
            fprintf('%s\n', '    --threshold-failed-percent        : The maximum percentage of failed checks permitted for a test')
            fprintf('%s\n', '                                        to evaluate as successful.')
            fprintf('%s\n', '    --threshold-round-trip-time       : The maximum round-trip time in milliseconds permitted for a')
            fprintf('%s\n', '                                        test to evaluate as successful.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a test group along with existing endpoint and test configuration via their names')
            fprintf('%s\n', '        az network watcher connection-monitor test-group add --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyHTTPTestGroup --endpoint-source-name')
            fprintf('%s\n', '        MySourceEndpoint --endpoint-dest-name MyDestinationEndpoint --test-config-name')
            fprintf('%s\n', '        MyTestConfiguration')
            fprintf('%s\n', '    Add a test group long with new-added source endpoint and existing test configuration via its')
            fprintf('%s\n', '    name')
            fprintf('%s\n', '        az network watcher connection-monitor test-group add --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyAccessibilityTestGroup --endpoint-source-name')
            fprintf('%s\n', '        MySourceEndpoint --endpoint-source-resource-id MyLogAnalysisWorkspaceID --endpoint-dest-name')
            fprintf('%s\n', '        MyExistingDestinationEndpoint --test-config-name MyExistingTestConfiguration')
            fprintf('%s\n', '    Add a test group along with new-added endpoints and test configuration')
            fprintf('%s\n', '        az network watcher connection-monitor test-group add --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyAccessibilityTestGroup --endpoint-source-name')
            fprintf('%s\n', '        MySourceEndpoint --endpoint-source-resource-id MyVMResourceID --endpoint-dest-name bing')
            fprintf('%s\n', '        --endpoint-dest-address bing.com --test-config-name MyNewTestConfiguration --protocol Tcp')
            fprintf('%s\n', '        --tcp-port 4096')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor test-group')
            fprintf('%s\n', 'add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
