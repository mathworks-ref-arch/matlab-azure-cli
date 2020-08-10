classdef start < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start()
            % az servicebus migration start : Create and Start Service Bus Migration of Standard to Premium
            % namespace.
            % Service Bus Migration requires an empty Premium namespace to replicate entities from
            % Standard namespace.
            this.BaseCmd = 'az servicebus migration start ';
        end
        function this = post_migration_name(this, varargin)
            % Post migration name is the name that can be used to connect to standard namespace after migration is complete.
            this.Options = [this.Options, '--post-migration-name', varargin{:}];
        end

        function this = target_namespace(this, varargin)
            % Name (if within the same resource group) or ARM Id of empty Premium Service Bus namespace name that will be target of the migration.
            this.Options = [this.Options, '--target-namespace', varargin{:}];
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
            % Name of Standard Namespace used as source of the migration.
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
            fprintf('%s\n', '    az servicebus migration start : Create and Start Service Bus Migration of Standard to Premium')
            fprintf('%s\n', '    namespace.')
            fprintf('%s\n', '        Service Bus Migration requires an empty Premium namespace to replicate entities from')
            fprintf('%s\n', '        Standard namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --post-migration-name [Required] : Post migration name is the name that can be used to connect')
            fprintf('%s\n', '                                       to standard namespace after migration is complete.')
            fprintf('%s\n', '    --target-namespace    [Required] : Name (if within the same resource group) or ARM Id of empty')
            fprintf('%s\n', '                                       Premium Service Bus namespace name that will be target of the')
            fprintf('%s\n', '                                       migration.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                        : Name of Standard Namespace used as source of the migration.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create and Start Service Bus Migration of Standard to Premium namespace')
            fprintf('%s\n', '        az servicebus migration start --resource-group myresourcegroup --name standardnamespace')
            fprintf('%s\n', '        --target-namespace ARMIDpremiumnamespace --post-migration-name mypostmigrationname')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus migration start"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start 
