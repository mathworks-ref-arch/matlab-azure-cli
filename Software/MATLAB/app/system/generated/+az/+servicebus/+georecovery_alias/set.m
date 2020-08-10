classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az servicebus georecovery-alias set : Sets Service Bus Geo-Disaster Recovery Configuration Alias
            % for the give Namespace.
            this.BaseCmd = 'az servicebus georecovery-alias set ';
        end
        function this = partner_namespace(this, varargin)
            % Name (if within the same resource group) or ARM Id of Primary/Secondary Service Bus  namespace name, which is part of GEO DR pairing.
            this.Options = [this.Options, '--partner-namespace', varargin{:}];
        end

        function this = alternate_name(this, varargin)
            % Alternate Name (Post failover) for Primary Namespace, when Namespace name and Alias name are same.
            this.Options = [this.Options, '--alternate-name', varargin{:}];
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

        function this = alias(this, varargin)
            % Name of the Geo-Disaster Recovery Configuration Alias.
            this.Options = [this.Options, '--alias', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = namespace_name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--namespace-name', varargin{:}];
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
            fprintf('%s\n', '    az servicebus georecovery-alias set : Sets Service Bus Geo-Disaster Recovery Configuration Alias')
            fprintf('%s\n', '    for the give Namespace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --partner-namespace [Required] : Name (if within the same resource group) or ARM Id of')
            fprintf('%s\n', '                                     Primary/Secondary Service Bus  namespace name, which is part of')
            fprintf('%s\n', '                                     GEO DR pairing.')
            fprintf('%s\n', '    --alternate-name               : Alternate Name (Post failover) for Primary Namespace, when')
            fprintf('%s\n', '                                     Namespace name and Alias name are same.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --alias -a                     : Name of the Geo-Disaster Recovery Configuration Alias.')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --namespace-name               : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g            : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Sets Geo Disaster Recovery configuration - Alias for the give Namespace')
            fprintf('%s\n', '        az servicebus georecovery-alias set --resource-group myresourcegroup --namespace-name')
            fprintf('%s\n', '        primarynamespace --alias myaliasname --partner-namespace armresourceid')
            fprintf('%s\n', '    Sets Service Bus Geo-Disaster Recovery Configuration Alias for the give Namespace')
            fprintf('%s\n', '    (autogenerated)')
            fprintf('%s\n', '        az servicebus georecovery-alias set --alias myaliasname --namespace-name primarynamespace')
            fprintf('%s\n', '        --partner-namespace armresourceid --resource-group myresourcegroup --subscription')
            fprintf('%s\n', '        MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az servicebus georecovery-alias set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
