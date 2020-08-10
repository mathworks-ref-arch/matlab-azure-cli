classdef exec < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = exec()
            % az container exec : Execute a command from within a running container of a container group.
            % The most common use case is to open an interactive bash shell. See examples below. This
            % command is currently not supported for Windows machines.
            this.BaseCmd = 'az container exec ';
        end
        function this = exec_command(this, varargin)
            % The command to run from within the container.
            this.Options = [this.Options, '--exec-command', varargin{:}];
        end

        function this = container_name(this, varargin)
            % The container name where to execute the command. Can be ommitted for container groups with only one container.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = terminal_col_size(this, varargin)
            % The col size for the command output.  Default: 80.
            this.Options = [this.Options, '--terminal-col-size', varargin{:}];
        end

        function this = terminal_row_size(this, varargin)
            % The row size for the command output.  Default: 20.
            this.Options = [this.Options, '--terminal-row-size', varargin{:}];
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
            % The name of the container group.
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
            fprintf('%s\n', '    az container exec : Execute a command from within a running container of a container group.')
            fprintf('%s\n', '        The most common use case is to open an interactive bash shell. See examples below. This')
            fprintf('%s\n', '        command is currently not supported for Windows machines.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --exec-command [Required] : The command to run from within the container.')
            fprintf('%s\n', '    --container-name          : The container name where to execute the command. Can be ommitted for')
            fprintf('%s\n', '                                container groups with only one container.')
            fprintf('%s\n', '    --terminal-col-size       : The col size for the command output.  Default: 80.')
            fprintf('%s\n', '    --terminal-row-size       : The row size for the command output.  Default: 20.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                 : The name of the container group.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Stream a shell from within an nginx container.')
            fprintf('%s\n', '        az container exec -g MyResourceGroup --name mynginx --container-name nginx --exec-command')
            fprintf('%s\n', '        "/bin/bash"')
            fprintf('%s\n', 'For more specific examples, use: az find "az container exec"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class exec 
