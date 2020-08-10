classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql midb create : Create a managed database.
            this.BaseCmd = 'az sql midb create ';
        end
        function this = managed_instance(this, varargin)
            % Name of the Azure SQL managed instance.
            this.Options = [this.Options, '--managed-instance', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Azure SQL Managed Database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = collation(this, varargin)
            % The collation of the Azure SQL Managed Database collation to use, e.g.: SQL_Latin1_General_CP1_CI_AS or Latin1_General_100_CS_AS_SC.
            this.Options = [this.Options, '--collation', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az sql midb create : Create a managed database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --managed-instance --mi [Required] : Name of the Azure SQL managed instance.')
            fprintf('%s\n', '    --name -n               [Required] : The name of the Azure SQL Managed Database.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --collation                        : The collation of the Azure SQL Managed Database collation')
            fprintf('%s\n', '                                         to use, e.g.: SQL_Latin1_General_CP1_CI_AS or')
            fprintf('%s\n', '                                         Latin1_General_100_CS_AS_SC.')
            fprintf('%s\n', '    --no-wait                          : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a managed database with specified collation')
            fprintf('%s\n', '        az sql midb create -g mygroup --mi myinstance -n mymanageddb --collation')
            fprintf('%s\n', '        Latin1_General_100_CS_AS_SC')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql midb create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
