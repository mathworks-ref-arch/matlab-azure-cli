classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network watcher connection-monitor test-configuration add : Add a test configuration to a
            % connection monitor.
            % Command group 'network watcher connection-monitor test-configuration' is in preview. It
            % may be changed/removed in a future release.
            this.BaseCmd = 'az network watcher connection-monitor test-configuration add ';
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
            % The name of the connection monitor test configuration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The protocol to use in test evaluation.  Allowed values: Http, Icmp, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = test_groups(this, varargin)
            % Space-separated list of names of test group which only need to be affected if specified.
            this.Options = [this.Options, '--test-groups', varargin{:}];
        end

        function this = frequency(this, varargin)
            % The frequency of test evaluation, in seconds.  Default: 60.
            this.Options = [this.Options, '--frequency', varargin{:}];
        end

        function this = preferred_ip_version(this, varargin)
            % The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.  Allowed values: IPv4, IPv6.
            this.Options = [this.Options, '--preferred-ip-version', varargin{:}];
        end

        function this = threshold_failed_percent(this, varargin)
            % The maximum percentage of failed checks permitted for a test to evaluate as successful.
            this.Options = [this.Options, '--threshold-failed-percent', varargin{:}];
        end

        function this = threshold_round_trip_time(this, varargin)
            % The maximum round-trip time in milliseconds permitted for a test to evaluate as successful. HTTP Protocol Arguments
            this.Options = [this.Options, '--threshold-round-trip-time', varargin{:}];
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

        function this = http_prefer_https(this, varargin)
            % Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.  Allowed values: false, true.
            this.Options = [this.Options, '--http-prefer-https', varargin{:}];
        end

        function this = http_request_header(this, varargin)
            % The HTTP headers to transmit with the request. List of property=value pairs to define HTTP headers.
            this.Options = [this.Options, '--http-request-header', varargin{:}];
        end

        function this = http_valid_status_codes(this, varargin)
            % Space-separated list of HTTP status codes to consider successful. For instance, "2xx 301-304 418". ICMP Protocol Arguments
            this.Options = [this.Options, '--http-valid-status-codes', varargin{:}];
        end

        function this = icmp_disable_trace_route(this, varargin)
            % Value indicating whether path evaluation with trace route should be disabled. false is default.  Allowed values: false, true. TCP Protocol Arguments
            this.Options = [this.Options, '--icmp-disable-trace-route', varargin{:}];
        end

        function this = tcp_disable_trace_route(this, varargin)
            % Value indicating whether path evaluation with trace route should be disabled. false is default.  Allowed values: false, true.
            this.Options = [this.Options, '--tcp-disable-trace-route', varargin{:}];
        end

        function this = tcp_port(this, varargin)
            % The port to connect to.
            this.Options = [this.Options, '--tcp-port', varargin{:}];
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
            fprintf('%s\n', '    az network watcher connection-monitor test-configuration add : Add a test configuration to a')
            fprintf('%s\n', '    connection monitor.')
            fprintf('%s\n', '        Command group ''network watcher connection-monitor test-configuration'' is in preview. It')
            fprintf('%s\n', '        may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-monitor [Required] : Connection monitor name.')
            fprintf('%s\n', '    --location -l        [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --name -n            [Required] : The name of the connection monitor test configuration.')
            fprintf('%s\n', '    --protocol           [Required] : The protocol to use in test evaluation.  Allowed values: Http,')
            fprintf('%s\n', '                                      Icmp, Tcp.')
            fprintf('%s\n', '    --test-groups        [Required] : Space-separated list of names of test group which only need to')
            fprintf('%s\n', '                                      be affected if specified.')
            fprintf('%s\n', '    --frequency                     : The frequency of test evaluation, in seconds.  Default: 60.')
            fprintf('%s\n', '    --preferred-ip-version          : The preferred IP version to use in test evaluation. The')
            fprintf('%s\n', '                                      connection monitor may choose to use a different version')
            fprintf('%s\n', '                                      depending on other parameters.  Allowed values: IPv4, IPv6.')
            fprintf('%s\n', '    --threshold-failed-percent      : The maximum percentage of failed checks permitted for a test')
            fprintf('%s\n', '                                      to evaluate as successful.')
            fprintf('%s\n', '    --threshold-round-trip-time     : The maximum round-trip time in milliseconds permitted for a')
            fprintf('%s\n', '                                      test to evaluate as successful.')
            fprintf('%s\n', 'HTTP Protocol Arguments')
            fprintf('%s\n', '    --http-method                   : The HTTP method to use.  Allowed values: Get, Post.')
            fprintf('%s\n', '    --http-path                     : The path component of the URI. For instance, "/dir1/dir2".')
            fprintf('%s\n', '    --http-port                     : The port to connect to.')
            fprintf('%s\n', '    --http-prefer-https             : Value indicating whether HTTPS is preferred over HTTP in cases')
            fprintf('%s\n', '                                      where the choice is not explicit.  Allowed values: false,')
            fprintf('%s\n', '                                      true.')
            fprintf('%s\n', '    --http-request-header           : The HTTP headers to transmit with the request. List of')
            fprintf('%s\n', '                                      property=value pairs to define HTTP headers.')
            fprintf('%s\n', '    --http-valid-status-codes       : Space-separated list of HTTP status codes to consider')
            fprintf('%s\n', '                                      successful. For instance, "2xx 301-304 418".')
            fprintf('%s\n', 'ICMP Protocol Arguments')
            fprintf('%s\n', '    --icmp-disable-trace-route      : Value indicating whether path evaluation with trace route')
            fprintf('%s\n', '                                      should be disabled. false is default.  Allowed values: false,')
            fprintf('%s\n', '                                      true.')
            fprintf('%s\n', 'TCP Protocol Arguments')
            fprintf('%s\n', '    --tcp-disable-trace-route       : Value indicating whether path evaluation with trace route')
            fprintf('%s\n', '                                      should be disabled. false is default.  Allowed values: false,')
            fprintf('%s\n', '                                      true.')
            fprintf('%s\n', '    --tcp-port                      : The port to connect to.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a test configuration with HTTP supported')
            fprintf('%s\n', '        az network watcher connection-monitor test-configuration add --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyHTTPTestConfiguration --test-groups')
            fprintf('%s\n', '        DefaultTestGroup --protocol Http --http-request-header name=Host value=bing.com --http-')
            fprintf('%s\n', '        request-header name=UserAgent value=Edge')
            fprintf('%s\n', '    Add a test configuration with TCP supported')
            fprintf('%s\n', '        az network watcher connection-monitor test-configuration add --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyHTTPTestConfiguration --test-groups')
            fprintf('%s\n', '        TCPTestGroup DefaultTestGroup --protocol Tcp --tcp-port 4096')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor test-')
            fprintf('%s\n', 'configuration add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
