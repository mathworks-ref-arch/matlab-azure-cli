classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql dw create : Create a data warehouse.
            this.BaseCmd = 'az sql dw create ';
        end
        function this = name(this, varargin)
            % Name of the data warehouse.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = collation(this, varargin)
            % The collation of the data warehouse.
            this.Options = [this.Options, '--collation', varargin{:}];
        end

        function this = max_size(this, varargin)
            % The max storage size. If no unit is specified, defaults to bytes (B).
            this.Options = [this.Options, '--max-size', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Performance Level Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = service_objective(this, varargin)
            % The service objective for the new database. For example: DW100, DW1000c.
            this.Options = [this.Options, '--service-objective', varargin{:}];
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
            fprintf('%s\n', '    az sql dw create : Create a data warehouse.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the data warehouse.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         [Required] : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --collation                    : The collation of the data warehouse.')
            fprintf('%s\n', '    --max-size                     : The max storage size. If no unit is specified, defaults to')
            fprintf('%s\n', '                                     bytes (B).')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Performance Level Arguments')
            fprintf('%s\n', '    --service-objective            : The service objective for the new database. For example: DW100,')
            fprintf('%s\n', '                                     DW1000c.')
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
            fprintf('%s\n', '    Create a data warehouse. (autogenerated)')
            fprintf('%s\n', '        az sql dw create --name MyDataWarehouse --resource-group MyResourceGroup --server myserver')
            fprintf('%s\n', '        --service-objective S0')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql dw create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
