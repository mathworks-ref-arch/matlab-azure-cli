classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az appservice plan create : Create an app service plan.
            this.BaseCmd = 'az appservice plan create ';
        end
        function this = name(this, varargin)
            % Name of the new app service plan.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = app_service_environment(this, varargin)
            % Name or ID of the app service environment.
            this.Options = [this.Options, '--app-service-environment', varargin{:}];
        end

        function this = hyper_v(this, varargin)
            % Host web app on Windows container. Argument '--hyper-v' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--hyper-v', varargin{:}];
        end

        function this = is_linux(this, varargin)
            % Host web app on Linux worker.
            this.Options = [this.Options, '--is-linux', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = number_of_workers(this, varargin)
            % Number of workers to be allocated.  Default: 1.
            this.Options = [this.Options, '--number-of-workers', varargin{:}];
        end

        function this = per_site_scaling(this, varargin)
            % Enable per-app scaling at the App Service plan level to allow for scaling an app independently from the App Service plan that hosts it.
            this.Options = [this.Options, '--per-site-scaling', varargin{:}];
        end

        function this = sku(this, varargin)
            % The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), PC2 (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large). Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2, P2V2, P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.  Default: B1.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            fprintf('%s\n', '    az appservice plan create : Create an app service plan.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the new app service plan.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --app-service-environment -e   : Name or ID of the app service environment.')
            fprintf('%s\n', '    --hyper-v            [Preview] : Host web app on Windows container.')
            fprintf('%s\n', '        Argument ''--hyper-v'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', '    --is-linux                     : Host web app on Linux worker.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --number-of-workers            : Number of workers to be allocated.  Default: 1.')
            fprintf('%s\n', '    --per-site-scaling             : Enable per-app scaling at the App Service plan level to allow')
            fprintf('%s\n', '                                     for scaling an app independently from the App Service plan that')
            fprintf('%s\n', '                                     hosts it.')
            fprintf('%s\n', '    --sku                          : The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small),')
            fprintf('%s\n', '                                     B2(Basic Medium), B3(Basic Large), S1(Standard Small),')
            fprintf('%s\n', '                                     P1V2(Premium V2 Small), PC2 (Premium Container Small), PC3')
            fprintf('%s\n', '                                     (Premium Container Medium), PC4 (Premium Container Large), I1')
            fprintf('%s\n', '                                     (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large).')
            fprintf('%s\n', '                                     Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2,')
            fprintf('%s\n', '                                     P2V2, P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.  Default: B1.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create a basic app service plan.')
            fprintf('%s\n', '        az appservice plan create -g MyResourceGroup -n MyPlan')
            fprintf('%s\n', '    Create a standard app service plan with with four Linux workers.')
            fprintf('%s\n', '        az appservice plan create -g MyResourceGroup -n MyPlan \')
            fprintf('%s\n', '            --is-linux --number-of-workers 4 --sku S1')
            fprintf('%s\n', '    Create an app service plan for app service environment.')
            fprintf('%s\n', '        az appservice plan create -g MyResourceGroup -n MyPlan \')
            fprintf('%s\n', '            --app-service-environment MyAppServiceEnvironment --sku I1')
            fprintf('%s\n', 'For more specific examples, use: az find "az appservice plan create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
