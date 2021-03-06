classdef swap < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = swap()
            % az functionapp deployment slot swap : Change deployment slots for a function app.
            this.BaseCmd = 'az functionapp deployment slot swap ';
        end
        function this = slot(this, varargin)
            % The name of the slot.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = action(this, varargin)
            % Swap types. use 'preview' to apply target slot's settings on the source slot first; use 'swap' to complete it; use 'reset' to reset the swap. Allowed values: preview, reset, swap.  Default: swap.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = target_slot(this, varargin)
            % Target slot to swap, default to 'production'.
            this.Options = [this.Options, '--target-slot', varargin{:}];
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
            % Name of the function app.
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
            fprintf('%s\n', '    az functionapp deployment slot swap : Change deployment slots for a function app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --slot -s [Required] : The name of the slot.')
            fprintf('%s\n', '    --action             : Swap types. use ''preview'' to apply target slot''s settings on the source')
            fprintf('%s\n', '                           slot first; use ''swap'' to complete it; use ''reset'' to reset the swap.')
            fprintf('%s\n', '                           Allowed values: preview, reset, swap.  Default: swap.')
            fprintf('%s\n', '    --target-slot        : Target slot to swap, default to ''production''.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n            : Name of the function app.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Swap a staging slot into production for the MyUniqueApp function app.')
            fprintf('%s\n', '        az functionapp deployment slot swap  -g MyResourceGroup -n MyUniqueApp --slot staging \')
            fprintf('%s\n', '            --target-slot production')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp deployment slot swap"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class swap 
