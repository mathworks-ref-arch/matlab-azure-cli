classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az dms project task list : List the Tasks within a Project. Some tasks may have a status of
            % Unknown, which indicates that an error occurred while querying the status of that task.
            this.BaseCmd = 'az dms project task list ';
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

        function this = task_type(this, varargin)
            % Filters the list by the type of task. For the list of possible types see "az dms check-status".
            this.Options = [this.Options, '--task-type', varargin{:}];
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
            fprintf('%s\n', '    az dms project task list : List the Tasks within a Project. Some tasks may have a status of')
            fprintf('%s\n', '    Unknown, which indicates that an error occurred while querying the status of that task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --project-name      [Required] : The name of the Project.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name      [Required] : The name of the Service.')
            fprintf('%s\n', '    --task-type                    : Filters the list by the type of task. For the list of possible')
            fprintf('%s\n', '                                     types see "az dms check-status".')
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
            fprintf('%s\n', '    List all Tasks within a Project.')
            fprintf('%s\n', '        az dms project task list --project-name myproject -g myresourcegroup --service-name mydms')
            fprintf('%s\n', '    List only the SQL to SQL migration tasks within a Project.')
            fprintf('%s\n', '        az dms project task list --project-name myproject -g myresourcegroup --service-name mydms')
            fprintf('%s\n', '        --task-type Migrate.SqlServer.SqlDb')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms project task list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
