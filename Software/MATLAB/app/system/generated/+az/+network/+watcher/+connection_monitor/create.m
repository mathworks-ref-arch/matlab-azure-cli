classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network watcher connection-monitor create : Create a connection monitor.
            % This extension allow to create V1 and V2 version of connection monitor.
            % V1 connection monitor supports single source and destination endpoint which comes with V1
            % argument groups as usual.
            % V2 connection monitor supports multiple endpoints and several test protocol which comes with
            % V2 argument groups.
            this.BaseCmd = 'az network watcher connection-monitor create ';
        end
        function this = name(this, varargin)
            % Connection monitor name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. V1 Endpoint Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = dest_address(this, varargin)
            % The IP address or URI at which to receive traffic.
            this.Options = [this.Options, '--dest-address', varargin{:}];
        end

        function this = dest_port(this, varargin)
            % Port number on which to receive traffic.
            this.Options = [this.Options, '--dest-port', varargin{:}];
        end

        function this = dest_resource(this, varargin)
            % Currently only Virtual Machines are supported.
            this.Options = [this.Options, '--dest-resource', varargin{:}];
        end

        function this = do_not_start(this, varargin)
            % Create the connection monitor but do not start it immediately.
            this.Options = [this.Options, '--do-not-start', varargin{:}];
        end

        function this = monitoring_interval(this, varargin)
            % Monitoring interval in seconds.  Default: 60.
            this.Options = [this.Options, '--monitoring-interval', varargin{:}];
        end

        function this = source_port(this, varargin)
            % Port number from which to originate traffic.
            this.Options = [this.Options, '--source-port', varargin{:}];
        end

        function this = source_resource(this, varargin)
            % Currently only Virtual Machines are supported. V2 Arguments
            this.Options = [this.Options, '--source-resource', varargin{:}];
        end

        function this = notes(this, varargin)
            % Optional notes to be associated with the connection monitor. V2 Endpoint Arguments
            this.Options = [this.Options, '--notes', varargin{:}];
        end

        function this = endpoint_dest_address(this, varargin)
            % Address of the source of connection monitor endpoint (IP or domain name).
            this.Options = [this.Options, '--endpoint-dest-address', varargin{:}];
        end

        function this = endpoint_dest_name(this, varargin)
            % The name of the source of connection monitor endpoint. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--endpoint-dest-name', varargin{:}];
        end

        function this = endpoint_dest_resource_id(this, varargin)
            % Resource ID of the source of connection monitor endpoint.
            this.Options = [this.Options, '--endpoint-dest-resource-id', varargin{:}];
        end

        function this = endpoint_source_address(this, varargin)
            % Address of the destination of connection monitor endpoint (IP or domain name).
            this.Options = [this.Options, '--endpoint-source-address', varargin{:}];
        end

        function this = endpoint_source_name(this, varargin)
            % The name of the destination of connection monitor endpoint. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--endpoint-source-name', varargin{:}];
        end

        function this = endpoint_source_resource_id(this, varargin)
            % Resource ID of the destination of connection monitor endpoint. If endpoint is intended to used as source, this option is required. V2 Output Arguments
            this.Options = [this.Options, '--endpoint-source-resource-id', varargin{:}];
        end

        function this = output_type(this, varargin)
            % Connection monitor output destination type. Currently, only "Workspace" is supported.  Allowed values: Workspace.
            this.Options = [this.Options, '--output-type', varargin{:}];
        end

        function this = workspace_ids(this, varargin)
            % Space-separated list of ids of log analytics workspace. V2 Test Configuration Arguments
            this.Options = [this.Options, '--workspace-ids', varargin{:}];
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

        function this = test_config_name(this, varargin)
            % The name of the connection monitor test configuration. If you are creating a V2 Connection Monitor, it's required.
            this.Options = [this.Options, '--test-config-name', varargin{:}];
        end

        function this = threshold_failed_percent(this, varargin)
            % The maximum percentage of failed checks permitted for a test to evaluate as successful.
            this.Options = [this.Options, '--threshold-failed-percent', varargin{:}];
        end

        function this = threshold_round_trip_time(this, varargin)
            % The maximum round-trip time in milliseconds permitted for a test to evaluate as successful. V2 Test Group Arguments
            this.Options = [this.Options, '--threshold-round-trip-time', varargin{:}];
        end

        function this = test_group_disable(this, varargin)
            % Value indicating whether test group is disabled. false is default.  Allowed values: false, true.
            this.Options = [this.Options, '--test-group-disable', varargin{:}];
        end

        function this = test_group_name(this, varargin)
            % The name of the connection monitor test group.  Default: DefaultTestGroup.
            this.Options = [this.Options, '--test-group-name', varargin{:}];
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
            fprintf('%s\n', '    az network watcher connection-monitor create : Create a connection monitor.')
            fprintf('%s\n', '        This extension allow to create V1 and V2 version of connection monitor.')
            fprintf('%s\n', '        V1 connection monitor supports single source and destination endpoint which comes with V1')
            fprintf('%s\n', '        argument groups as usual.')
            fprintf('%s\n', '        V2 connection monitor supports multiple endpoints and several test protocol which comes with')
            fprintf('%s\n', '        V2 argument groups.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          [Required] : Connection monitor name.')
            fprintf('%s\n', '    --location -l                 : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                    configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                    location=<location>`.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                        : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                    clear existing tags.')
            fprintf('%s\n', 'V1 Endpoint Arguments')
            fprintf('%s\n', '    --dest-address                : The IP address or URI at which to receive traffic.')
            fprintf('%s\n', '    --dest-port                   : Port number on which to receive traffic.')
            fprintf('%s\n', '    --dest-resource               : Currently only Virtual Machines are supported.')
            fprintf('%s\n', '    --do-not-start                : Create the connection monitor but do not start it immediately.')
            fprintf('%s\n', '    --monitoring-interval         : Monitoring interval in seconds.  Default: 60.')
            fprintf('%s\n', '    --source-port                 : Port number from which to originate traffic.')
            fprintf('%s\n', '    --source-resource             : Currently only Virtual Machines are supported.')
            fprintf('%s\n', 'V2 Arguments')
            fprintf('%s\n', '    --notes                       : Optional notes to be associated with the connection monitor.')
            fprintf('%s\n', 'V2 Endpoint Arguments')
            fprintf('%s\n', '    --endpoint-dest-address       : Address of the source of connection monitor endpoint (IP or')
            fprintf('%s\n', '                                    domain name).')
            fprintf('%s\n', '    --endpoint-dest-name          : The name of the source of connection monitor endpoint. If you')
            fprintf('%s\n', '                                    are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --endpoint-dest-resource-id   : Resource ID of the source of connection monitor endpoint.')
            fprintf('%s\n', '    --endpoint-source-address     : Address of the destination of connection monitor endpoint (IP or')
            fprintf('%s\n', '                                    domain name).')
            fprintf('%s\n', '    --endpoint-source-name        : The name of the destination of connection monitor endpoint. If')
            fprintf('%s\n', '                                    you are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --endpoint-source-resource-id : Resource ID of the destination of connection monitor endpoint.')
            fprintf('%s\n', '                                    If endpoint is intended to used as source, this option is')
            fprintf('%s\n', '                                    required.')
            fprintf('%s\n', 'V2 Output Arguments')
            fprintf('%s\n', '    --output-type                 : Connection monitor output destination type. Currently, only')
            fprintf('%s\n', '                                    "Workspace" is supported.  Allowed values: Workspace.')
            fprintf('%s\n', '    --workspace-ids               : Space-separated list of ids of log analytics workspace.')
            fprintf('%s\n', 'V2 Test Configuration Arguments')
            fprintf('%s\n', '    --frequency                   : The frequency of test evaluation, in seconds.  Default: 60.')
            fprintf('%s\n', '    --http-method                 : The HTTP method to use.  Allowed values: Get, Post.')
            fprintf('%s\n', '    --http-path                   : The path component of the URI. For instance, "/dir1/dir2".')
            fprintf('%s\n', '    --http-port                   : The port to connect to.')
            fprintf('%s\n', '    --http-valid-status-codes     : Space-separated list of HTTP status codes to consider')
            fprintf('%s\n', '                                    successful. For instance, "2xx 301-304 418".')
            fprintf('%s\n', '    --https-prefer                : Value indicating whether HTTPS is preferred over HTTP in cases')
            fprintf('%s\n', '                                    where the choice is not explicit.  Allowed values: false, true.')
            fprintf('%s\n', '    --icmp-disable-trace-route    : Value indicating whether path evaluation with trace route should')
            fprintf('%s\n', '                                    be disabled. false is default.  Allowed values: false, true.')
            fprintf('%s\n', '    --preferred-ip-version        : The preferred IP version to use in test evaluation. The')
            fprintf('%s\n', '                                    connection monitor may choose to use a different version')
            fprintf('%s\n', '                                    depending on other parameters.  Allowed values: IPv4, IPv6.')
            fprintf('%s\n', '    --protocol                    : The protocol to use in test evaluation.  Allowed values: Http,')
            fprintf('%s\n', '                                    Icmp, Tcp.')
            fprintf('%s\n', '    --tcp-disable-trace-route     : Value indicating whether path evaluation with trace route should')
            fprintf('%s\n', '                                    be disabled. false is default.  Allowed values: false, true.')
            fprintf('%s\n', '    --tcp-port                    : The port to connect to.')
            fprintf('%s\n', '    --test-config-name            : The name of the connection monitor test configuration. If you')
            fprintf('%s\n', '                                    are creating a V2 Connection Monitor, it''s required.')
            fprintf('%s\n', '    --threshold-failed-percent    : The maximum percentage of failed checks permitted for a test to')
            fprintf('%s\n', '                                    evaluate as successful.')
            fprintf('%s\n', '    --threshold-round-trip-time   : The maximum round-trip time in milliseconds permitted for a test')
            fprintf('%s\n', '                                    to evaluate as successful.')
            fprintf('%s\n', 'V2 Test Group Arguments')
            fprintf('%s\n', '    --test-group-disable          : Value indicating whether test group is disabled. false is')
            fprintf('%s\n', '                                    default.  Allowed values: false, true.')
            fprintf('%s\n', '    --test-group-name             : The name of the connection monitor test group.  Default:')
            fprintf('%s\n', '                                    DefaultTestGroup.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a connection monitor for a virtual machine.')
            fprintf('%s\n', '        az network watcher connection-monitor create -g MyResourceGroup -n MyConnectionMonitorName \')
            fprintf('%s\n', '            --source-resource MyVM')
            fprintf('%s\n', '    Create a V2 connection monitor')
            fprintf('%s\n', '        az network watcher connection-monitor create --name MyV2ConnectionMonitor --endpoint-source-')
            fprintf('%s\n', '        name "vm01" --endpoint-source-resource-id MyVM01ResourceID --endpoint-dest-name bing')
            fprintf('%s\n', '        --endpoint-dest-address bing.com --test-config-name TCPTestConfig --protocol Tcp --tcp-port')
            fprintf('%s\n', '        2048')
            fprintf('%s\n', '    Create a connection monitor. (autogenerated)')
            fprintf('%s\n', '        az network watcher connection-monitor create --endpoint-dest-address bing.com --endpoint-')
            fprintf('%s\n', '        dest-name bing --endpoint-source-name "vm01" --endpoint-source-resource-id MyVM01ResourceID')
            fprintf('%s\n', '        --location westus2 --name MyConnectionMonitorName --protocol Tcp --tcp-port 2048 --test-')
            fprintf('%s\n', '        config-name TCPTestConfig')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
