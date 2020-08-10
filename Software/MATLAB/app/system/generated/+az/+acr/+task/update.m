classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az acr task update : Update a task for an Azure Container Registry.
            this.BaseCmd = 'az acr task update ';
        end
        function this = name(this, varargin)
            % The name of the task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = agent_pool(this, varargin)
            % The name of the agent pool. Argument '--agent-pool' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--agent-pool', varargin{:}];
        end

        function this = arg(this, varargin)
            % Build argument in '--arg name[=value]' format. Multiples supported by passing '--arg` multiple times.
            this.Options = [this.Options, '--arg', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % Auth mode of the source registry.  Allowed values: Default, None.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = context(this, varargin)
            % The full URL to the source code repository (Requires '.git' suffix for a github repo). If '/dev/null' is specified, the value will be set to None and ignored.
            this.Options = [this.Options, '--context', varargin{:}];
        end

        function this = cpu(this, varargin)
            % The CPU configuration in terms of number of cores required for the run.
            this.Options = [this.Options, '--cpu', varargin{:}];
        end

        function this = file(this, varargin)
            % Relative path of the the task/docker file to the source code root folder. Task files must be suffixed with '.yaml' or piped from the standard input using '-'.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = image(this, varargin)
            % The name and tag of the image using the format: '-t repo/image:tag'. Multiple tags are supported by passing -t multiple times.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = no_cache(this, varargin)
            % Indicates whether the image cache is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--no-cache', varargin{:}];
        end

        function this = no_push(this, varargin)
            % Indicates whether the image built should be pushed to the registry.  Allowed values: false, true.
            this.Options = [this.Options, '--no-push', varargin{:}];
        end

        function this = platform(this, varargin)
            % The platform where build/task is run, Eg, 'windows' and 'linux'. When it's used in build commands, it also can be specified in 'os/arch/variant' format for the resulting image. Eg, linux/arm/v7. The 'arch' and 'variant' parts are optional.
            this.Options = [this.Options, '--platform', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = secret_arg(this, varargin)
            % Secret build argument in '--secret-arg name[=value]' format. Multiples supported by passing --secret-arg multiple times.
            this.Options = [this.Options, '--secret-arg', varargin{:}];
        end

        function this = set(this, varargin)
            % Task value in '--set name[=value]' format. Multiples supported by passing --set multiple times.
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = set_secret(this, varargin)
            % Secret task value in '--set-secret name[=value]' format. Multiples supported by passing --set-secret multiple times.
            this.Options = [this.Options, '--set-secret', varargin{:}];
        end

        function this = status(this, varargin)
            % The current status of task.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = target(this, varargin)
            % The name of the target build stage.
            this.Options = [this.Options, '--target', varargin{:}];
        end

        function this = timeout(this, varargin)
            % The timeout in seconds.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = values(this, varargin)
            % The task values/parameters file path relative to the source context. Trigger Arguments
            this.Options = [this.Options, '--values', varargin{:}];
        end

        function this = base_image_trigger_enabled(this, varargin)
            % Indicates whether the base image trigger is enabled. Allowed values: false, true.
            this.Options = [this.Options, '--base-image-trigger-enabled', varargin{:}];
        end

        function this = base_image_trigger_type(this, varargin)
            % The type of the auto trigger for base image dependency updates.  Allowed values: All, Runtime.
            this.Options = [this.Options, '--base-image-trigger-type', varargin{:}];
        end

        function this = commit_trigger_enabled(this, varargin)
            % Indicates whether the source control commit trigger is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--commit-trigger-enabled', varargin{:}];
        end

        function this = git_access_token(this, varargin)
            % The access token used to access the source control provider.
            this.Options = [this.Options, '--git-access-token', varargin{:}];
        end

        function this = pull_request_trigger_enabled(this, varargin)
            % Indicates whether the source control pull request trigger is enabled. The trigger is disabled by default.  Allowed values: false, true.
            this.Options = [this.Options, '--pull-request-trigger-enabled', varargin{:}];
        end

        function this = update_trigger_endpoint(this, varargin)
            % The full URL of the endpoint to receive base image update trigger notifications. Argument '--update-trigger-endpoint' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--update-trigger-endpoint', varargin{:}];
        end

        function this = update_trigger_payload_type(this, varargin)
            % Indicates whether to include metadata about the base image trigger in the payload alongwith the update trigger token, when a notification is sent. Allowed values: Default, Token. Argument '--update-trigger-payload-type' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--update-trigger-payload-type', varargin{:}];
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
            fprintf('%s\n', '    az acr task update : Update a task for an Azure Container Registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                    [Required] : The name of the task.')
            fprintf('%s\n', '    --registry -r                [Required] : The name of the container registry. You can configure')
            fprintf('%s\n', '                                              the default registry name using `az configure')
            fprintf('%s\n', '                                              --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --agent-pool                  [Preview] : The name of the agent pool.')
            fprintf('%s\n', '        Argument ''--agent-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --arg                                   : Build argument in ''--arg name[=value]'' format.')
            fprintf('%s\n', '                                              Multiples supported by passing ''--arg` multiple times.')
            fprintf('%s\n', '    --auth-mode                             : Auth mode of the source registry.  Allowed values:')
            fprintf('%s\n', '                                              Default, None.')
            fprintf('%s\n', '    --context -c                            : The full URL to the source code repository (Requires')
            fprintf('%s\n', '                                              ''.git'' suffix for a github repo). If ''/dev/null'' is')
            fprintf('%s\n', '                                              specified, the value will be set to None and ignored.')
            fprintf('%s\n', '    --cpu                                   : The CPU configuration in terms of number of cores')
            fprintf('%s\n', '                                              required for the run.')
            fprintf('%s\n', '    --file -f                               : Relative path of the the task/docker file to the')
            fprintf('%s\n', '                                              source code root folder. Task files must be suffixed')
            fprintf('%s\n', '                                              with ''.yaml'' or piped from the standard input using')
            fprintf('%s\n', '                                              ''-''.')
            fprintf('%s\n', '    --image -t                              : The name and tag of the image using the format: ''-t')
            fprintf('%s\n', '                                              repo/image:tag''. Multiple tags are supported by')
            fprintf('%s\n', '                                              passing -t multiple times.')
            fprintf('%s\n', '    --no-cache                              : Indicates whether the image cache is enabled.  Allowed')
            fprintf('%s\n', '                                              values: false, true.')
            fprintf('%s\n', '    --no-push                               : Indicates whether the image built should be pushed to')
            fprintf('%s\n', '                                              the registry.  Allowed values: false, true.')
            fprintf('%s\n', '    --platform                              : The platform where build/task is run, Eg, ''windows''')
            fprintf('%s\n', '                                              and ''linux''. When it''s used in build commands, it also')
            fprintf('%s\n', '                                              can be specified in ''os/arch/variant'' format for the')
            fprintf('%s\n', '                                              resulting image. Eg, linux/arm/v7. The ''arch'' and')
            fprintf('%s\n', '                                              ''variant'' parts are optional.')
            fprintf('%s\n', '    --resource-group -g                     : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --secret-arg                            : Secret build argument in ''--secret-arg name[=value]''')
            fprintf('%s\n', '                                              format. Multiples supported by passing --secret-arg')
            fprintf('%s\n', '                                              multiple times.')
            fprintf('%s\n', '    --set                                   : Task value in ''--set name[=value]'' format. Multiples')
            fprintf('%s\n', '                                              supported by passing --set multiple times.')
            fprintf('%s\n', '    --set-secret                            : Secret task value in ''--set-secret name[=value]''')
            fprintf('%s\n', '                                              format. Multiples supported by passing --set-secret')
            fprintf('%s\n', '                                              multiple times.')
            fprintf('%s\n', '    --status                                : The current status of task.  Allowed values: Disabled,')
            fprintf('%s\n', '                                              Enabled.')
            fprintf('%s\n', '    --target                                : The name of the target build stage.')
            fprintf('%s\n', '    --timeout                               : The timeout in seconds.')
            fprintf('%s\n', '    --values                                : The task values/parameters file path relative to the')
            fprintf('%s\n', '                                              source context.')
            fprintf('%s\n', 'Trigger Arguments')
            fprintf('%s\n', '    --base-image-trigger-enabled            : Indicates whether the base image trigger is enabled.')
            fprintf('%s\n', '                                              Allowed values: false, true.')
            fprintf('%s\n', '    --base-image-trigger-type               : The type of the auto trigger for base image dependency')
            fprintf('%s\n', '                                              updates.  Allowed values: All, Runtime.')
            fprintf('%s\n', '    --commit-trigger-enabled                : Indicates whether the source control commit trigger is')
            fprintf('%s\n', '                                              enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --git-access-token                      : The access token used to access the source control')
            fprintf('%s\n', '                                              provider.')
            fprintf('%s\n', '    --pull-request-trigger-enabled          : Indicates whether the source control pull request')
            fprintf('%s\n', '                                              trigger is enabled. The trigger is disabled by')
            fprintf('%s\n', '                                              default.  Allowed values: false, true.')
            fprintf('%s\n', '    --update-trigger-endpoint     [Preview] : The full URL of the endpoint to receive base')
            fprintf('%s\n', '                                              image update trigger notifications.')
            fprintf('%s\n', '        Argument ''--update-trigger-endpoint'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --update-trigger-payload-type [Preview] : Indicates whether to include metadata about')
            fprintf('%s\n', '                                              the base image trigger in the payload alongwith the')
            fprintf('%s\n', '                                              update trigger token, when a notification is sent.')
            fprintf('%s\n', '                                              Allowed values: Default, Token.')
            fprintf('%s\n', '        Argument ''--update-trigger-payload-type'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update base image updates to trigger on all dependent images of a multi-stage dockerfile, and')
            fprintf('%s\n', '    status of a task in an Azure Container Registry.')
            fprintf('%s\n', '        az acr task update -n MyTask -r MyRegistry --base-image-trigger-type All --status Disabled')
            fprintf('%s\n', '    Update platform for the Build step of your Task to Windows (prev Linux).')
            fprintf('%s\n', '        az acr task update -n MyTask -r MyRegistry --platform Windows')
            fprintf('%s\n', '    Update task''s triggers and context for an Azure Container Registry.')
            fprintf('%s\n', '        az acr task update -n hello-world -r MyRegistry -f Dockerfile \')
            fprintf('%s\n', '            --commit-trigger-enabled false --pull-request-trigger-enabled true \')
            fprintf('%s\n', '            -c https://msazure.visualstudio.com/DefaultCollection/Project/_git/Repo#Branch:Folder')
            fprintf('%s\n', '    Update a task for an Azure Container Registry. (autogenerated)')
            fprintf('%s\n', '        az acr task update --image MyImage --name MyTask --registry MyRegistry \')
            fprintf('%s\n', '            --context https://github.com/Azure-Samples/acr-build-helloworld-node.git')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr task update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
