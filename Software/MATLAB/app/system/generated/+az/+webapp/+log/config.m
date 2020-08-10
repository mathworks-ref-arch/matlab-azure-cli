classdef config < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = config()
            % az webapp log config : Configure logging for a web app.
            this.BaseCmd = 'az webapp log config ';
        end
        function this = application_logging(this, varargin)
            % Configure application logging to file system.  Allowed values: false, true.
            this.Options = [this.Options, '--application-logging', varargin{:}];
        end

        function this = detailed_error_messages(this, varargin)
            % Configure detailed error messages.  Allowed values: false, true.
            this.Options = [this.Options, '--detailed-error-messages', varargin{:}];
        end

        function this = docker_container_logging(this, varargin)
            % Configure gathering STDOUT and STDERR output from container. Allowed values: filesystem, off.
            this.Options = [this.Options, '--docker-container-logging', varargin{:}];
        end

        function this = failed_request_tracing(this, varargin)
            % Configure failed request tracing.  Allowed values: false, true.
            this.Options = [this.Options, '--failed-request-tracing', varargin{:}];
        end

        function this = level(this, varargin)
            % Logging level.  Allowed values: error, information, verbose, warning.
            this.Options = [this.Options, '--level', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = web_server_logging(this, varargin)
            % Configure Web server logging.  Allowed values: filesystem, off.
            this.Options = [this.Options, '--web-server-logging', varargin{:}];
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az webapp log config : Configure logging for a web app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-logging      : Configure application logging to file system.  Allowed values:')
            fprintf('%s\n', '                                 false, true.')
            fprintf('%s\n', '    --detailed-error-messages  : Configure detailed error messages.  Allowed values: false, true.')
            fprintf('%s\n', '    --docker-container-logging : Configure gathering STDOUT and STDERR output from container.')
            fprintf('%s\n', '                                 Allowed values: filesystem, off.')
            fprintf('%s\n', '    --failed-request-tracing   : Configure failed request tracing.  Allowed values: false, true.')
            fprintf('%s\n', '    --level                    : Logging level.  Allowed values: error, information, verbose,')
            fprintf('%s\n', '                                 warning.')
            fprintf('%s\n', '    --slot -s                  : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                 specified.')
            fprintf('%s\n', '    --web-server-logging       : Configure Web server logging.  Allowed values: filesystem, off.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                 configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Configure logging for a web app. (autogenerated)')
            fprintf('%s\n', '        az webapp log config --name MyWebapp --resource-group MyResourceGroup --web-server-logging')
            fprintf('%s\n', '        off')
            fprintf('%s\n', '    Configure logging for a web app. (autogenerated)')
            fprintf('%s\n', '        az webapp log config --docker-container-logging off --name MyWebapp --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp log config"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class config 
