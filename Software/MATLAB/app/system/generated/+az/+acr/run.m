classdef run < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = run()
            % az acr run : Queues a quick run providing streamed logs for an Azure Container Registry.
            this.BaseCmd = 'az acr run ';
        end
        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = agent_pool(this, varargin)
            % The name of the agent pool. Argument '--agent-pool' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--agent-pool', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % Auth mode of the source registry.  Allowed values: Default, None.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = cmd(this, varargin)
            % Commands to execute.
            this.Options = [this.Options, '--cmd', varargin{:}];
        end

        function this = file(this, varargin)
            % The task template/definition file path relative to the source context. It can be '-' to pipe a file from the standard input.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = no_format(this, varargin)
            % Indicates whether the logs should be displayed in raw format.
            this.Options = [this.Options, '--no-format', varargin{:}];
        end

        function this = no_logs(this, varargin)
            % Do not show logs after successfully queuing the build.
            this.Options = [this.Options, '--no-logs', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the run to complete and return immediately after queuing the run.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = platform(this, varargin)
            % The platform where build/task is run, Eg, 'windows' and 'linux'. When it's used in build commands, it also can be specified in 'os/arch/variant' format for the resulting image. Eg, linux/arm/v7. The 'arch' and 'variant' parts are optional.
            this.Options = [this.Options, '--platform', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = set(this, varargin)
            % Value in 'name[=value]' format. Multiples supported by passing --set multiple times.
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = set_secret(this, varargin)
            % Secret value in '--set name[=value]' format. Multiples supported by passing --set multiple times.
            this.Options = [this.Options, '--set-secret', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The timeout in seconds.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = values(this, varargin)
            % The task values file path relative to the source context.
            this.Options = [this.Options, '--values', varargin{:}];
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
            fprintf('%s\n', '    az acr run : Queues a quick run providing streamed logs for an Azure Container Registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --agent-pool   [Preview] : The name of the agent pool.')
            fprintf('%s\n', '        Argument ''--agent-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --auth-mode              : Auth mode of the source registry.  Allowed values: Default, None.')
            fprintf('%s\n', '    --cmd                    : Commands to execute.')
            fprintf('%s\n', '    --file -f                : The task template/definition file path relative to the source')
            fprintf('%s\n', '                               context. It can be ''-'' to pipe a file from the standard input.')
            fprintf('%s\n', '    --no-format              : Indicates whether the logs should be displayed in raw format.')
            fprintf('%s\n', '    --no-logs                : Do not show logs after successfully queuing the build.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the run to complete and return immediately after')
            fprintf('%s\n', '                               queuing the run.')
            fprintf('%s\n', '    --platform               : The platform where build/task is run, Eg, ''windows'' and ''linux''. When')
            fprintf('%s\n', '                               it''s used in build commands, it also can be specified in')
            fprintf('%s\n', '                               ''os/arch/variant'' format for the resulting image. Eg, linux/arm/v7.')
            fprintf('%s\n', '                               The ''arch'' and ''variant'' parts are optional.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --set                    : Value in ''name[=value]'' format. Multiples supported by passing --set')
            fprintf('%s\n', '                               multiple times.')
            fprintf('%s\n', '    --set-secret             : Secret value in ''--set name[=value]'' format. Multiples supported by')
            fprintf('%s\n', '                               passing --set multiple times.')
            fprintf('%s\n', '    --timeout                : The timeout in seconds.')
            fprintf('%s\n', '    --values                 : The task values file path relative to the source context.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <SOURCE_LOCATION>        : The local source code directory path (e.g., ''./src'') or the URL to a')
            fprintf('%s\n', '                               git repository (e.g., ''https://github.com/Azure-Samples/acr-build-')
            fprintf('%s\n', '                               helloworld-node.git'') or a remote tarball (e.g.,')
            fprintf('%s\n', '                               ''http://server/context.tar.gz''). If ''/dev/null'' is specified, the')
            fprintf('%s\n', '                               value will be set to None and ignored.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Queue a run to execute a container command.')
            fprintf('%s\n', '        az acr run -r MyRegistry --cmd ''$Registry/myimage'' /dev/null')
            fprintf('%s\n', '    Queue a run with the task definition from the standard input. Either ''Ctrl + Z''(Windows) or')
            fprintf('%s\n', '    ''Ctrl + D''(Linux) terminates the input stream.')
            fprintf('%s\n', '        az acr run -r MyRegistry -f - /dev/null')
            fprintf('%s\n', '    Queue a run to execute the tasks passed through the pipe.')
            fprintf('%s\n', '        cat task.yaml | az acr run -r MyRegistry -f - /dev/null')
            fprintf('%s\n', '    Queue a local context, pushed to ACR with streaming logs.')
            fprintf('%s\n', '        az acr run -r MyRegistry -f bash-echo.yaml ./workspace')
            fprintf('%s\n', '    Queue a remote git context with streaming logs.')
            fprintf('%s\n', '        az acr run -r MyRegistry https://github.com/Azure-Samples/acr-tasks.git -f hello-world.yaml')
            fprintf('%s\n', '    Queue a remote git context with streaming logs and runs the task on Linux platform.')
            fprintf('%s\n', '        az acr run -r MyRegistry https://github.com/Azure-Samples/acr-tasks.git -f build-hello-')
            fprintf('%s\n', '        world.yaml --platform linux')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr run"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class run 
