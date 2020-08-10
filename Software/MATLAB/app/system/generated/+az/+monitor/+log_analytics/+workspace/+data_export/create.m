classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor log-analytics workspace data-export create : Create a data export rule for a given
            % workspace.
            this.BaseCmd = 'az monitor log-analytics workspace data-export create ';
        end
        function this = destination(this, varargin)
            % The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If event hub namespace is provided, event hub would be created for each table automatically.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the data export rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = workspace_name(this, varargin)
            % Name of the Log Analytics Workspace.
            this.Options = [this.Options, '--workspace-name', varargin{:}];
        end

        function this = all(this, varargin)
            % All workspace's tables are exported when this is enabled. Allowed values: false, true.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = enable(this, varargin)
            % Enable this data export rule.  Allowed values: false, true.
            this.Options = [this.Options, '--enable', varargin{:}];
        end

        function this = tables(this, varargin)
            % An array of tables to export. if --export-all-tables is true, this argument should not be provided.
            this.Options = [this.Options, '--tables', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-analytics workspace data-export create : Create a data export rule for a given')
            fprintf('%s\n', '    workspace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination       [Required] : The destination resource ID. It should be a storage account, an')
            fprintf('%s\n', '                                     event hub namespace or an event hub. If event hub namespace is')
            fprintf('%s\n', '                                     provided, event hub would be created for each table')
            fprintf('%s\n', '                                     automatically.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the data export rule.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --workspace-name    [Required] : Name of the Log Analytics Workspace.')
            fprintf('%s\n', '    --all --export-all-tables      : All workspace''s tables are exported when this is enabled.')
            fprintf('%s\n', '                                     Allowed values: false, true.')
            fprintf('%s\n', '    --enable                       : Enable this data export rule.  Allowed values: false, true.')
            fprintf('%s\n', '    --tables -t                    : An array of tables to export. if --export-all-tables is true,')
            fprintf('%s\n', '                                     this argument should not be provided.')
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
            fprintf('%s\n', '    Create a data export rule for a given workspace.')
            fprintf('%s\n', '        az monitor log-analytics workspace data-export create -g MyRG --workspace-name MyWS -n')
            fprintf('%s\n', '        MyDataExport --destination {sa_id_1} --enable -t {table_name}')
            fprintf('%s\n', '    Create a data export rule for a given workspace with all tables.')
            fprintf('%s\n', '        az monitor log-analytics workspace data-export create -g MyRG --workspace-name MyWS -n')
            fprintf('%s\n', '        MyDataExport --destination {sa_id_1} --enable --all')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace data-export')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
