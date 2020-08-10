classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az webapp config set : Set a web app's configuration.
            this.BaseCmd = 'az webapp config set ';
        end
        function this = always_on(this, varargin)
            % Ensure web app gets loaded all the time, rather unloaded after been idle. Recommended when you have continuous web jobs running.  Allowed values: false, true.
            this.Options = [this.Options, '--always-on', varargin{:}];
        end

        function this = auto_heal_enabled(this, varargin)
            % Enable or disable auto heal.  Allowed values: false, true.
            this.Options = [this.Options, '--auto-heal-enabled', varargin{:}];
        end

        function this = ftps_state(this, varargin)
            % Set the Ftps state value for an app. Default value is 'AllAllowed'.  Allowed values: AllAllowed, Disabled, FtpsOnly.
            this.Options = [this.Options, '--ftps-state', varargin{:}];
        end

        function this = generic_configurations(this, varargin)
            % Provide site configuration list in a format of either `key=value` pair or `@<json_file>`.
            this.Options = [this.Options, '--generic-configurations', varargin{:}];
        end

        function this = http20_enabled(this, varargin)
            % Configures a web site to allow clients to connect over http2.0. Allowed values: false, true.
            this.Options = [this.Options, '--http20-enabled', varargin{:}];
        end

        function this = java_container(this, varargin)
            % The java container, e.g., Tomcat, Jetty.
            this.Options = [this.Options, '--java-container', varargin{:}];
        end

        function this = java_container_version(this, varargin)
            % The version of the java container, e.g., '8.0.23' for Tomcat.
            this.Options = [this.Options, '--java-container-version', varargin{:}];
        end

        function this = java_version(this, varargin)
            % The version used to run your web app if using Java, e.g., '1.7' for Java 7, '1.8' for Java 8.
            this.Options = [this.Options, '--java-version', varargin{:}];
        end

        function this = linux_fx_version(this, varargin)
            % The runtime stack used for your linux-based webapp, e.g., "RUBY|2.5.5", "NODE|10.14", "PHP|7.2", "DOTNETCORE|2.1". See https://aka.ms/linux-stacks for more info.
            this.Options = [this.Options, '--linux-fx-version', varargin{:}];
        end

        function this = min_tls_version(this, varargin)
            % The minimum version of TLS required for SSL requests, e.g., '1.0', '1.1', '1.2'.
            this.Options = [this.Options, '--min-tls-version', varargin{:}];
        end

        function this = net_framework_version(this, varargin)
            % The version used to run your web app if using .NET Framework, e.g., 'v4.0' for .NET 4.6 and 'v3.0' for .NET 3.5.
            this.Options = [this.Options, '--net-framework-version', varargin{:}];
        end

        function this = number_of_workers(this, varargin)
            % The number of workers to be allocated.
            this.Options = [this.Options, '--number-of-workers', varargin{:}];
        end

        function this = php_version(this, varargin)
            % The version used to run your web app if using PHP, e.g., 5.5, 5.6, 7.0.
            this.Options = [this.Options, '--php-version', varargin{:}];
        end

        function this = prewarmed_instance_count(this, varargin)
            % Number of pre-warmed instances a function app has.
            this.Options = [this.Options, '--prewarmed-instance-count', varargin{:}];
        end

        function this = python_version(this, varargin)
            % The version used to run your web app if using Python, e.g., 2.7, 3.4.
            this.Options = [this.Options, '--python-version', varargin{:}];
        end

        function this = remote_debugging_enabled(this, varargin)
            % Enable or disable remote debugging.  Allowed values: false, true.
            this.Options = [this.Options, '--remote-debugging-enabled', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = startup_file(this, varargin)
            % The startup file for linux hosted web apps, e.g. 'process.json' for Node.js web.
            this.Options = [this.Options, '--startup-file', varargin{:}];
        end

        function this = use_32bit_worker_process(this, varargin)
            % Use 32 bits worker process or not.  Allowed values: false, true.
            this.Options = [this.Options, '--use-32bit-worker-process', varargin{:}];
        end

        function this = web_sockets_enabled(this, varargin)
            % Enable or disable web sockets.  Allowed values: false, true.
            this.Options = [this.Options, '--web-sockets-enabled', varargin{:}];
        end

        function this = windows_fx_version(this, varargin)
            % A docker image name used for your windows container web app, e.g., microsoft/nanoserver:ltsc2016. Argument '--windows-fx-version' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--windows-fx-version', varargin{:}];
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
            fprintf('%s\n', '    az webapp config set : Set a web app''s configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --always-on                    : Ensure web app gets loaded all the time, rather unloaded after')
            fprintf('%s\n', '                                     been idle. Recommended when you have continuous web jobs')
            fprintf('%s\n', '                                     running.  Allowed values: false, true.')
            fprintf('%s\n', '    --auto-heal-enabled            : Enable or disable auto heal.  Allowed values: false, true.')
            fprintf('%s\n', '    --ftps-state                   : Set the Ftps state value for an app. Default value is')
            fprintf('%s\n', '                                     ''AllAllowed''.  Allowed values: AllAllowed, Disabled, FtpsOnly.')
            fprintf('%s\n', '    --generic-configurations       : Provide site configuration list in a format of either')
            fprintf('%s\n', '                                     `key=value` pair or `@<json_file>`.')
            fprintf('%s\n', '    --http20-enabled               : Configures a web site to allow clients to connect over http2.0.')
            fprintf('%s\n', '                                     Allowed values: false, true.')
            fprintf('%s\n', '    --java-container               : The java container, e.g., Tomcat, Jetty.')
            fprintf('%s\n', '    --java-container-version       : The version of the java container, e.g., ''8.0.23'' for Tomcat.')
            fprintf('%s\n', '    --java-version                 : The version used to run your web app if using Java, e.g., ''1.7''')
            fprintf('%s\n', '                                     for Java 7, ''1.8'' for Java 8.')
            fprintf('%s\n', '    --linux-fx-version             : The runtime stack used for your linux-based webapp, e.g.,')
            fprintf('%s\n', '                                     "RUBY|2.5.5", "NODE|10.14", "PHP|7.2", "DOTNETCORE|2.1". See')
            fprintf('%s\n', '                                     https://aka.ms/linux-stacks for more info.')
            fprintf('%s\n', '    --min-tls-version              : The minimum version of TLS required for SSL requests, e.g.,')
            fprintf('%s\n', '                                     ''1.0'', ''1.1'', ''1.2''.')
            fprintf('%s\n', '    --net-framework-version        : The version used to run your web app if using .NET Framework,')
            fprintf('%s\n', '                                     e.g., ''v4.0'' for .NET 4.6 and ''v3.0'' for .NET 3.5.')
            fprintf('%s\n', '    --number-of-workers            : The number of workers to be allocated.')
            fprintf('%s\n', '    --php-version                  : The version used to run your web app if using PHP, e.g., 5.5,')
            fprintf('%s\n', '                                     5.6, 7.0.')
            fprintf('%s\n', '    --prewarmed-instance-count     : Number of pre-warmed instances a function app has.')
            fprintf('%s\n', '    --python-version               : The version used to run your web app if using Python, e.g.,')
            fprintf('%s\n', '                                     2.7, 3.4.')
            fprintf('%s\n', '    --remote-debugging-enabled     : Enable or disable remote debugging.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --slot -s                      : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                     specified.')
            fprintf('%s\n', '    --startup-file                 : The startup file for linux hosted web apps, e.g. ''process.json''')
            fprintf('%s\n', '                                     for Node.js web.')
            fprintf('%s\n', '    --use-32bit-worker-process     : Use 32 bits worker process or not.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --web-sockets-enabled          : Enable or disable web sockets.  Allowed values: false, true.')
            fprintf('%s\n', '    --windows-fx-version [Preview] : A docker image name used for your windows container')
            fprintf('%s\n', '                                     web app, e.g., microsoft/nanoserver:ltsc2016.')
            fprintf('%s\n', '        Argument ''--windows-fx-version'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                      : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                     configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g            : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    turn on "alwaysOn"')
            fprintf('%s\n', '        az webapp config set -g MyResourceGroup -n MyUniqueApp --always-on true')
            fprintf('%s\n', '    turn on "alwaysOn" through a json with content "{"alwaysOn", true}"')
            fprintf('%s\n', '        az webapp config set -g MyResourceGroup -n MyUniqueApp --generic-configurations')
            fprintf('%s\n', '        "{"alwaysOn": true}"')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
