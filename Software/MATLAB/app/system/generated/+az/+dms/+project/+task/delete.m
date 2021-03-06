classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az dms project task delete : Delete a migration Task.
            this.BaseCmd = 'az dms project task delete ';
        end
        function this = name(this, varargin)
            % The name of the Task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = project_name(this, varargin)
            % The name of the Project.
            this.Options = [this.Options, '--project-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the Service.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = delete_running_tasks(this, varargin)
            % If the Task is currently running, cancel the Task before deleting the Project.
            this.Options = [this.Options, '--delete-running-tasks', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az dms project task delete : Delete a migration Task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Task.')
            fprintf('%s\n', '    --project-name      [Required] : The name of the Project.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name      [Required] : The name of the Service.')
            fprintf('%s\n', '    --delete-running-tasks         : If the Task is currently running, cancel the Task before')
            fprintf('%s\n', '                                     deleting the Project.')
            fprintf('%s\n', '    --yes -y                       : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete a migration Task. (autogenerated)')
            fprintf('%s\n', '        az dms project task delete --name MyTask --project-name MyProject --resource-group')
            fprintf('%s\n', '        MyResourceGroup --service-name MyService')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms project task delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
