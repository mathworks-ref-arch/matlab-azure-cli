classdef run < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = run()
            % az acr task run : Manually trigger a task that might otherwise be waiting for git commits or
            % base image update triggers.
            this.BaseCmd = 'az acr task run ';
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

        function this = context(this, varargin)
            % The full URL to the source code repository (Requires '.git' suffix for a github repo). If '/dev/null' is specified, the value will be set to None and ignored.
            this.Options = [this.Options, '--context', varargin{:}];
        end

        function this = file(this, varargin)
            % Relative path of the the task/docker file to the source code root folder. Task files must be suffixed with '.yaml' or piped from the standard input using '-'.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = no_logs(this, varargin)
            % Do not show logs after successfully queuing the build.
            this.Options = [this.Options, '--no-logs', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the run to complete and return immediately after queuing the run.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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

        function this = target(this, varargin)
            % The name of the target build stage.
            this.Options = [this.Options, '--target', varargin{:}];
        end

        function this = update_trigger_token(this, varargin)
            % The payload that will be passed back alongwith the base image trigger notification. Argument '--update-trigger-token' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--update-trigger-token', varargin{:}];
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
            fprintf('%s\n', '    az acr task run : Manually trigger a task that might otherwise be waiting for git commits or')
            fprintf('%s\n', '    base image update triggers.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n             [Required] : The name of the task.')
            fprintf('%s\n', '    --registry -r         [Required] : The name of the container registry. You can configure the')
            fprintf('%s\n', '                                       default registry name using `az configure --defaults')
            fprintf('%s\n', '                                       acr=<registry name>`.')
            fprintf('%s\n', '    --agent-pool           [Preview] : The name of the agent pool.')
            fprintf('%s\n', '        Argument ''--agent-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --arg                            : Build argument in ''--arg name[=value]'' format. Multiples')
            fprintf('%s\n', '                                       supported by passing ''--arg` multiple times.')
            fprintf('%s\n', '    --context -c                     : The full URL to the source code repository (Requires ''.git''')
            fprintf('%s\n', '                                       suffix for a github repo). If ''/dev/null'' is specified, the')
            fprintf('%s\n', '                                       value will be set to None and ignored.')
            fprintf('%s\n', '    --file -f                        : Relative path of the the task/docker file to the source code')
            fprintf('%s\n', '                                       root folder. Task files must be suffixed with ''.yaml'' or')
            fprintf('%s\n', '                                       piped from the standard input using ''-''.')
            fprintf('%s\n', '    --no-logs                        : Do not show logs after successfully queuing the build.')
            fprintf('%s\n', '    --no-wait                        : Do not wait for the run to complete and return immediately')
            fprintf('%s\n', '                                       after queuing the run.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --secret-arg                     : Secret build argument in ''--secret-arg name[=value]'' format.')
            fprintf('%s\n', '                                       Multiples supported by passing --secret-arg multiple times.')
            fprintf('%s\n', '    --set                            : Task value in ''--set name[=value]'' format. Multiples')
            fprintf('%s\n', '                                       supported by passing --set multiple times.')
            fprintf('%s\n', '    --set-secret                     : Secret task value in ''--set-secret name[=value]'' format.')
            fprintf('%s\n', '                                       Multiples supported by passing --set-secret multiple times.')
            fprintf('%s\n', '    --target                         : The name of the target build stage.')
            fprintf('%s\n', '    --update-trigger-token [Preview] : The payload that will be passed back alongwith the')
            fprintf('%s\n', '                                       base image trigger notification.')
            fprintf('%s\n', '        Argument ''--update-trigger-token'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Trigger a task run.')
            fprintf('%s\n', '        az acr task run -n MyTask -r MyRegistry')
            fprintf('%s\n', '    Trigger a task run by overriding the context and file passed during Task create with a remote')
            fprintf('%s\n', '    repository.')
            fprintf('%s\n', '        az acr task run -n MyTask -r MyRegistry -c https://github.com/Azure-Samples/acr-build-')
            fprintf('%s\n', '        helloworld-node.git -f Dockerfile')
            fprintf('%s\n', '    Trigger a task run by overriding the context and file passed during Task create with a local')
            fprintf('%s\n', '    context.')
            fprintf('%s\n', '        az acr task run -n MyTask -r MyRegistry -c . -f Dockerfile')
            fprintf('%s\n', '    Trigger a task run by adding or overriding build arguments set during Task create.')
            fprintf('%s\n', '        az acr task run -n MyTask -r MyRegistry --arg DOCKER_CLI_BASE_IMAGE=docker:18.03.0-ce-git')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr task run"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class run 
