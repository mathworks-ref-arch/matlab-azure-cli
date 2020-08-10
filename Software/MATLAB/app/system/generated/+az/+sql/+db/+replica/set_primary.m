classdef set_primary < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_primary()
            % az sql db replica set-primary : Set the primary replica database by failing over from the
            % current primary replica database.
            this.BaseCmd = 'az sql db replica set-primary ';
        end
        function this = allow_data_loss(this, varargin)
            % If specified, the failover operation will allow data loss.
            this.Options = [this.Options, '--allow-data-loss', varargin{:}];
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
            % Name of the database to fail over.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group containing the secondary replica that will become the new primary.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the server containing the secondary replica that will become the new primary. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db replica set-primary : Set the primary replica database by failing over from the')
            fprintf('%s\n', '    current primary replica database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-data-loss   : If specified, the failover operation will allow data loss.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the database to fail over.')
            fprintf('%s\n', '    --resource-group -g : Name of the resource group containing the secondary replica that will')
            fprintf('%s\n', '                          become the new primary.')
            fprintf('%s\n', '    --server -s         : Name of the server containing the secondary replica that will become the')
            fprintf('%s\n', '                          new primary. You can configure the default using `az configure --defaults')
            fprintf('%s\n', '                          sql-server=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set the primary replica database by failing over from the current primary replica database.')
            fprintf('%s\n', '    (autogenerated)')
            fprintf('%s\n', '        az sql db replica set-primary --allow-data-loss --name MyDatabase --resource-group')
            fprintf('%s\n', '        MyResourceGroup --server myserver --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db replica set-primary"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_primary 
