classdef build < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = build()
            % az acr pack build : Queues a quick build task that builds an app and pushes it into an Azure
            % Container Registry.
            % Command group 'acr pack' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az acr pack build ';
        end
        function this = builder(this, varargin)
            % The name and tag of a Buildpack builder image.
            this.Options = [this.Options, '--builder', varargin{:}];
        end

        function this = image(this, varargin)
            % The name and tag of the image using the format: '-t repo/image:tag'.
            this.Options = [this.Options, '--image', varargin{:}];
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

        function this = pack_image_tag(this, varargin)
            % The tag of the 'pack' runner image ('mcr.microsoft.com/oryx/pack').  Default: stable. Argument '--pack-image-tag' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--pack-image-tag', varargin{:}];
        end

        function this = platform(this, varargin)
            % The platform where build/task is run, Eg, 'windows' and 'linux'. When it's used in build commands, it also can be specified in 'os/arch/variant' format for the resulting image. Eg, linux/arm/v7. The 'arch' and 'variant' parts are optional.
            this.Options = [this.Options, '--platform', varargin{:}];
        end

        function this = pull(this, varargin)
            % Pull the latest builder and run images before use.
            this.Options = [this.Options, '--pull', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az acr pack build : Queues a quick build task that builds an app and pushes it into an Azure')
            fprintf('%s\n', '    Container Registry.')
            fprintf('%s\n', '        Command group ''acr pack'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --builder -b    [Required] : The name and tag of a Buildpack builder image.')
            fprintf('%s\n', '    --image -t      [Required] : The name and tag of the image using the format: ''-t')
            fprintf('%s\n', '                                 repo/image:tag''.')
            fprintf('%s\n', '    --registry -r   [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                                 registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --agent-pool     [Preview] : The name of the agent pool.')
            fprintf('%s\n', '        Argument ''--agent-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --auth-mode                : Auth mode of the source registry.  Allowed values: Default, None.')
            fprintf('%s\n', '    --no-format                : Indicates whether the logs should be displayed in raw format.')
            fprintf('%s\n', '    --no-logs                  : Do not show logs after successfully queuing the build.')
            fprintf('%s\n', '    --no-wait                  : Do not wait for the run to complete and return immediately after')
            fprintf('%s\n', '                                 queuing the run.')
            fprintf('%s\n', '    --pack-image-tag [Preview] : The tag of the ''pack'' runner image')
            fprintf('%s\n', '                                 (''mcr.microsoft.com/oryx/pack'').  Default: stable.')
            fprintf('%s\n', '        Argument ''--pack-image-tag'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --platform                 : The platform where build/task is run, Eg, ''windows'' and ''linux''.')
            fprintf('%s\n', '                                 When it''s used in build commands, it also can be specified in')
            fprintf('%s\n', '                                 ''os/arch/variant'' format for the resulting image. Eg, linux/arm/v7.')
            fprintf('%s\n', '                                 The ''arch'' and ''variant'' parts are optional.')
            fprintf('%s\n', '    --pull                     : Pull the latest builder and run images before use.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --timeout                  : The timeout in seconds.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <SOURCE_LOCATION>          : The local source code directory path (e.g., ''./src'') or the URL to')
            fprintf('%s\n', '                                 a git repository (e.g., ''https://github.com/Azure-Samples/acr-')
            fprintf('%s\n', '                                 build-helloworld-node.git'') or a remote tarball (e.g.,')
            fprintf('%s\n', '                                 ''http://server/context.tar.gz'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Queue a build for the current directory with the CloudFoundry builder.')
            fprintf('%s\n', '        az acr pack build -r MyRegistry -t {{.Run.Registry}}/node-app:{{.Run.ID}} --builder')
            fprintf('%s\n', '        cloudfoundry/cnb:bionic .')
            fprintf('%s\n', '    Queue a build for the given GitHub repository with the Heroku builder.')
            fprintf('%s\n', '        az acr pack build -r MyRegistry -t {{.Run.Registry}}/node-app:{{.Run.ID}} --pull --builder')
            fprintf('%s\n', '        heroku/buildpacks:18 https://github.com/Azure-Samples/nodejs-docs-hello-world.git')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr pack build"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class build 
