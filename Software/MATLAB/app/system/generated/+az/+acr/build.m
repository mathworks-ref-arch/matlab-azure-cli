classdef build < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = build()
            % az acr build : Queues a quick build, providing streaming logs for an Azure Container Registry.
            this.BaseCmd = 'az acr build ';
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

        function this = build_arg(this, varargin)
            % Build argument in '--build-arg name[=value]' format. Multiples supported by passing --build-arg multiple times.
            this.Options = [this.Options, '--build-arg', varargin{:}];
        end

        function this = file(this, varargin)
            % The relative path of the the docker file to the source code root folder. Default to 'Dockerfile'.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = image(this, varargin)
            % The name and tag of the image using the format: '-t repo/image:tag'. Multiple tags are supported by passing -t multiple times.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = no_format(this, varargin)
            % Indicates whether the logs should be displayed in raw format.
            this.Options = [this.Options, '--no-format', varargin{:}];
        end

        function this = no_logs(this, varargin)
            % Do not show logs after successfully queuing the build.
            this.Options = [this.Options, '--no-logs', varargin{:}];
        end

        function this = no_push(this, varargin)
            % Indicates whether the image built should be pushed to the registry.
            this.Options = [this.Options, '--no-push', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the build to complete and return immediately after queuing the build.
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

        function this = secret_build_arg(this, varargin)
            % Secret build argument in '--secret-build-arg name[=value]' format. Multiples supported by passing '--secret-build-arg name[=value]' multiple times.
            this.Options = [this.Options, '--secret-build-arg', varargin{:}];
        end

        function this = target(this, varargin)
            % The name of the target build stage.
            this.Options = [this.Options, '--target', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The timeout in seconds.
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
            fprintf('%s\n', '    az acr build : Queues a quick build, providing streaming logs for an Azure Container Registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --agent-pool   [Preview] : The name of the agent pool.')
            fprintf('%s\n', '        Argument ''--agent-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --auth-mode              : Auth mode of the source registry.  Allowed values: Default, None.')
            fprintf('%s\n', '    --build-arg              : Build argument in ''--build-arg name[=value]'' format. Multiples')
            fprintf('%s\n', '                               supported by passing --build-arg multiple times.')
            fprintf('%s\n', '    --file -f                : The relative path of the the docker file to the source code root')
            fprintf('%s\n', '                               folder. Default to ''Dockerfile''.')
            fprintf('%s\n', '    --image -t               : The name and tag of the image using the format: ''-t repo/image:tag''.')
            fprintf('%s\n', '                               Multiple tags are supported by passing -t multiple times.')
            fprintf('%s\n', '    --no-format              : Indicates whether the logs should be displayed in raw format.')
            fprintf('%s\n', '    --no-logs                : Do not show logs after successfully queuing the build.')
            fprintf('%s\n', '    --no-push                : Indicates whether the image built should be pushed to the registry.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the build to complete and return immediately after')
            fprintf('%s\n', '                               queuing the build.')
            fprintf('%s\n', '    --platform               : The platform where build/task is run, Eg, ''windows'' and ''linux''. When')
            fprintf('%s\n', '                               it''s used in build commands, it also can be specified in')
            fprintf('%s\n', '                               ''os/arch/variant'' format for the resulting image. Eg, linux/arm/v7.')
            fprintf('%s\n', '                               The ''arch'' and ''variant'' parts are optional.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --secret-build-arg       : Secret build argument in ''--secret-build-arg name[=value]'' format.')
            fprintf('%s\n', '                               Multiples supported by passing ''--secret-build-arg name[=value]''')
            fprintf('%s\n', '                               multiple times.')
            fprintf('%s\n', '    --target                 : The name of the target build stage.')
            fprintf('%s\n', '    --timeout                : The timeout in seconds.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <SOURCE_LOCATION>        : The local source code directory path (e.g., ''./src'') or the URL to a')
            fprintf('%s\n', '                               git repository (e.g., ''https://github.com/Azure-Samples/acr-build-')
            fprintf('%s\n', '                               helloworld-node.git'') or a remote tarball (e.g.,')
            fprintf('%s\n', '                               ''http://server/context.tar.gz'').')
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
            fprintf('%s\n', '    Queue a local context as a Linux build, tag it, and push it to the registry.')
            fprintf('%s\n', '        az acr build -t sample/hello-world:{{.Run.ID}} -r MyRegistry .')
            fprintf('%s\n', '    Queue a local context as a Linux build, tag it, and push it to the registry without streaming')
            fprintf('%s\n', '    logs.')
            fprintf('%s\n', '        az acr build -t sample/hello-world:{{.Run.ID}} -r MyRegistry --no-logs .')
            fprintf('%s\n', '    Queue a local context as a Linux build without pushing it to the registry.')
            fprintf('%s\n', '        az acr build -t sample/hello-world:{{.Run.ID}} -r MyRegistry --no-push .')
            fprintf('%s\n', '    Queue a local context as a Linux build without pushing it to the registry.')
            fprintf('%s\n', '        az acr build -r MyRegistry .')
            fprintf('%s\n', '    Queue a remote GitHub context as a Windows build, tag it, and push it to the registry.')
            fprintf('%s\n', '        az acr build -r MyRegistry https://github.com/Azure/acr-builder.git -f Windows.Dockerfile')
            fprintf('%s\n', '        --platform windows')
            fprintf('%s\n', '    Queue a local context as a Linux build on arm/v7 architecture, tag it, and push it to the')
            fprintf('%s\n', '    registry.')
            fprintf('%s\n', '        az acr build -t sample/hello-world:{{.Run.ID}} -r MyRegistry . --platform linux/arm/v7')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr build"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class build 
