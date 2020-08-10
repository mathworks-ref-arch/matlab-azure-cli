classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az functionapp plan create : Create an App Service Plan for an Azure Function.
            this.BaseCmd = 'az functionapp plan create ';
        end
        function this = name(this, varargin)
            % The name of the app service plan.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % The SKU of the app service plan.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = is_linux(this, varargin)
            % Host function app on Linux worker.  Allowed values: false, true.
            this.Options = [this.Options, '--is-linux', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_burst(this, varargin)
            % The maximum number of elastic workers for the plan.
            this.Options = [this.Options, '--max-burst', varargin{:}];
        end

        function this = min_instances(this, varargin)
            % The number of workers for the app service plan.
            this.Options = [this.Options, '--min-instances', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az functionapp plan create : Create an App Service Plan for an Azure Function.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                [Required] : The name of the app service plan.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku                    [Required] : The SKU of the app service plan.')
            fprintf('%s\n', '    --is-linux                          : Host function app on Linux worker.  Allowed values: false,')
            fprintf('%s\n', '                                          true.')
            fprintf('%s\n', '    --location -l                       : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                          can configure the default location using `az configure')
            fprintf('%s\n', '                                          --defaults location=<location>`.')
            fprintf('%s\n', '    --max-burst                         : The maximum number of elastic workers for the plan.')
            fprintf('%s\n', '    --min-instances --number-of-workers : The number of workers for the app service plan.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an elastic premium app service plan with burst out capability up to 10 instances.')
            fprintf('%s\n', '        az functionapp plan create -g MyResourceGroup -n MyPlan --min-instances 1 --max-burst 10')
            fprintf('%s\n', '        --sku EP1')
            fprintf('%s\n', '    Create a basic app service plan.')
            fprintf('%s\n', '        az functionapp plan create -g MyResourceGroup -n MyPlan --sku B1')
            fprintf('%s\n', '    Create an App Service Plan for an Azure Function. (autogenerated)')
            fprintf('%s\n', '        az functionapp plan create --location westus2 --name MyPlan --number-of-workers 1')
            fprintf('%s\n', '        --resource-group MyResourceGroup --sku B1')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp plan create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
