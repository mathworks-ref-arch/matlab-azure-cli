classdef list_runs < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_runs()
            % az acr task list-runs : List all of the executed runs for an Azure Container Registry, with the
            % ability to filter by a specific Task.
            this.BaseCmd = 'az acr task list-runs ';
        end
        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = image(this, varargin)
            % The name of the image. May include a tag in the format 'name:tag' or digest in the format 'name@digest'.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = run_status(this, varargin)
            % The current status of run.  Allowed values: Canceled, Error, Failed, Queued, Running, Started, Succeeded, Timeout.
            this.Options = [this.Options, '--run-status', varargin{:}];
        end

        function this = top(this, varargin)
            % Limit the number of latest runs in the results.  Default: 15.
            this.Options = [this.Options, '--top', varargin{:}];
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
            fprintf('%s\n', '    az acr task list-runs : List all of the executed runs for an Azure Container Registry, with the')
            fprintf('%s\n', '    ability to filter by a specific Task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --image -t               : The name of the image. May include a tag in the format ''name:tag'' or')
            fprintf('%s\n', '                               digest in the format ''name@digest''.')
            fprintf('%s\n', '    --name -n                : The name of the task.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --run-status             : The current status of run.  Allowed values: Canceled, Error, Failed,')
            fprintf('%s\n', '                               Queued, Running, Started, Succeeded, Timeout.')
            fprintf('%s\n', '    --top                    : Limit the number of latest runs in the results.  Default: 15.')
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
            fprintf('%s\n', '    List all of the runs for a registry and show the results in a table.')
            fprintf('%s\n', '        az acr task list-runs -r MyRegistry -o table')
            fprintf('%s\n', '    List runs for a task and show the results in a table.')
            fprintf('%s\n', '        az acr task list-runs -r MyRegistry -n MyTask -o table')
            fprintf('%s\n', '    List the last 10 successful runs for a registry and show the results in a table.')
            fprintf('%s\n', '        az acr task list-runs -r MyRegistry --run-status Succeeded --top 10 -o table')
            fprintf('%s\n', '    List all of the runs that built the image ''hello-world'' for a registry and show the results in a')
            fprintf('%s\n', '    table.')
            fprintf('%s\n', '        az acr task list-runs -r MyRegistry --image hello-world -o table')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr task list-runs"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_runs 
