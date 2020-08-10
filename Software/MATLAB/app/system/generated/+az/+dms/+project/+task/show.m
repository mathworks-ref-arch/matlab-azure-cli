classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az dms project task show : Show the details of a migration Task. Use the "--expand" to get more
            % details.
            this.BaseCmd = 'az dms project task show ';
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

        function this = expand(this, varargin)
            % Expand the response to provide more details. Use with "command" to see more details of the Task. Use with "output" to see the results of the Task's migration.
            this.Options = [this.Options, '--expand', varargin{:}];
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
            fprintf('%s\n', '    az dms project task show : Show the details of a migration Task. Use the "--expand" to get more')
            fprintf('%s\n', '    details.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Task.')
            fprintf('%s\n', '    --project-name      [Required] : The name of the Project.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name      [Required] : The name of the Service.')
            fprintf('%s\n', '    --expand                       : Expand the response to provide more details. Use with "command"')
            fprintf('%s\n', '                                     to see more details of the Task. Use with "output" to see the')
            fprintf('%s\n', '                                     results of the Task''s migration.')
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
            fprintf('%s\n', '    Show the details of a migration Task. Use the "--expand" to get more details. (autogenerated)')
            fprintf('%s\n', '        az dms project task show --name MyTask --project-name MyProject --resource-group')
            fprintf('%s\n', '        MyResourceGroup --service-name MyService')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms project task show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
