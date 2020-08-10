classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway probe create : Create a probe.
            this.BaseCmd = 'az network application-gateway probe create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the probe.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = path(this, varargin)
            % The relative path of the probe. Valid paths start from "/".
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The HTTP settings protocol.  Allowed values: Http, Https.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = host(this, varargin)
            % The name of the host to send the probe.
            this.Options = [this.Options, '--host', varargin{:}];
        end

        function this = host_name_from_http_settings(this, varargin)
            % Use host header from HTTP settings.  Allowed values: false, true.
            this.Options = [this.Options, '--host-name-from-http-settings', varargin{:}];
        end

        function this = interval(this, varargin)
            % The time interval in seconds between consecutive probes. Default: 30.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = match_body(this, varargin)
            % Body that must be contained in the health response.
            this.Options = [this.Options, '--match-body', varargin{:}];
        end

        function this = match_status_codes(this, varargin)
            % Space-separated list of allowed ranges of healthy status codes for the health response.
            this.Options = [this.Options, '--match-status-codes', varargin{:}];
        end

        function this = min_servers(this, varargin)
            % Minimum number of servers that are always marked healthy.
            this.Options = [this.Options, '--min-servers', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = port(this, varargin)
            % Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from http settings will be used. This property is valid for Standard_v2 and WAF_v2 only.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = threshold(this, varargin)
            % The number of failed probes after which the back end server is marked down.  Default: 8.
            this.Options = [this.Options, '--threshold', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The probe timeout in seconds.  Default: 120.
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
            fprintf('%s\n', '    az network application-gateway probe create : Create a probe.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the probe.')
            fprintf('%s\n', '    --path              [Required] : The relative path of the probe. Valid paths start from "/".')
            fprintf('%s\n', '    --protocol          [Required] : The HTTP settings protocol.  Allowed values: Http, Https.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --host                         : The name of the host to send the probe.')
            fprintf('%s\n', '    --host-name-from-http-settings : Use host header from HTTP settings.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --interval                     : The time interval in seconds between consecutive probes.')
            fprintf('%s\n', '                                     Default: 30.')
            fprintf('%s\n', '    --match-body                   : Body that must be contained in the health response.')
            fprintf('%s\n', '    --match-status-codes           : Space-separated list of allowed ranges of healthy status codes')
            fprintf('%s\n', '                                     for the health response.')
            fprintf('%s\n', '    --min-servers                  : Minimum number of servers that are always marked healthy.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --port                         : Custom port which will be used for probing the backend servers.')
            fprintf('%s\n', '                                     The valid value ranges from 1 to 65535. In case not set, port')
            fprintf('%s\n', '                                     from http settings will be used. This property is valid for')
            fprintf('%s\n', '                                     Standard_v2 and WAF_v2 only.')
            fprintf('%s\n', '    --threshold                    : The number of failed probes after which the back end server is')
            fprintf('%s\n', '                                     marked down.  Default: 8.')
            fprintf('%s\n', '    --timeout                      : The probe timeout in seconds.  Default: 120.')
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
            fprintf('%s\n', '    Create an application gateway probe.')
            fprintf('%s\n', '        az network application-gateway probe create -g MyResourceGroup --gateway-name MyAppGateway \')
            fprintf('%s\n', '            -n MyProbe --protocol https --host 127.0.0.1 --path /path/to/probe')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway probe create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
