classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az network watcher connection-monitor endpoint remove : Remove an endpoint from a connection
            % monitor.
            % Command group 'network watcher connection-monitor endpoint' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az network watcher connection-monitor endpoint remove ';
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
            % The name of the connection monitor endpoint. V2 Test Group Arguments
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = test_groups(this, varargin)
            % Space-separated list of names of test group which only need to be affected if specified.
            this.Options = [this.Options, '--test-groups', varargin{:}];
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
            fprintf('%s\n', '    az network watcher connection-monitor endpoint remove : Remove an endpoint from a connection')
            fprintf('%s\n', '    monitor.')
            fprintf('%s\n', '        Command group ''network watcher connection-monitor endpoint'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-monitor [Required] : Connection monitor name.')
            fprintf('%s\n', '    --location -l        [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --name -n            [Required] : The name of the connection monitor endpoint.')
            fprintf('%s\n', 'V2 Test Group Arguments')
            fprintf('%s\n', '    --test-groups                   : Space-separated list of names of test group which only need to')
            fprintf('%s\n', '                                      be affected if specified.')
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
            fprintf('%s\n', '    Remove endpoint from all test groups of a connection monitor')
            fprintf('%s\n', '        az network watcher connection-monitor endpoint remove --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyEndpoint')
            fprintf('%s\n', '    Remove endpoint from two test groups of a connection monitor')
            fprintf('%s\n', '        az network watcher connection-monitor endpoint remove --connection-monitor')
            fprintf('%s\n', '        MyConnectionMonitor --location westus --name MyEndpoint --test-groups DefaultTestGroup')
            fprintf('%s\n', '        HealthCheckTestGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher connection-monitor endpoint')
            fprintf('%s\n', 'remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
