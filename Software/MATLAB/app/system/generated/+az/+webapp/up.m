classdef up < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = up()
            % az webapp up : Create a webapp and deploy code from a local workspace to the app. The command is
            % required to run from the folder where the code is present. Current support includes Node,
            % Python, .NET Core and ASP.NET. Node, Python apps are created as Linux apps. .Net Core, ASP.NET,
            % and static HTML apps are created as Windows apps. Append the html flag to deploy as a static
            % HTML app.
            this.BaseCmd = 'az webapp up ';
        end
        function this = dryrun(this, varargin)
            % Show summary of the create and deploy operation instead of executing it.
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = html(this, varargin)
            % Ignore app detection and deploy as an html app.
            this.Options = [this.Options, '--html', varargin{:}];
        end

        function this = launch_browser(this, varargin)
            % Launch the created app using the default browser.
            this.Options = [this.Options, '--launch-browser', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = logs(this, varargin)
            % Configure default logging required to enable viewing log stream immediately after launching the webapp.
            this.Options = [this.Options, '--logs', varargin{:}];
        end

        function this = plan(this, varargin)
            % Name of the appserviceplan associated with the webapp.
            this.Options = [this.Options, '--plan', varargin{:}];
        end

        function this = sku(this, varargin)
            % The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), PC2 (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated Large).  Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2, P2V2, P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
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
            fprintf('%s\n', '    az webapp up : Create a webapp and deploy code from a local workspace to the app. The command is')
            fprintf('%s\n', '    required to run from the folder where the code is present. Current support includes Node,')
            fprintf('%s\n', '    Python, .NET Core and ASP.NET. Node, Python apps are created as Linux apps. .Net Core, ASP.NET,')
            fprintf('%s\n', '    and static HTML apps are created as Windows apps. Append the html flag to deploy as a static')
            fprintf('%s\n', '    HTML app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dryrun            : Show summary of the create and deploy operation instead of executing it.')
            fprintf('%s\n', '    --html              : Ignore app detection and deploy as an html app.')
            fprintf('%s\n', '    --launch-browser -b : Launch the created app using the default browser.')
            fprintf('%s\n', '    --location -l       : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                          default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --logs              : Configure default logging required to enable viewing log stream')
            fprintf('%s\n', '                          immediately after launching the webapp.')
            fprintf('%s\n', '    --plan -p           : Name of the appserviceplan associated with the webapp.')
            fprintf('%s\n', '    --sku               : The pricing tiers, e.g., F1(Free), D1(Shared), B1(Basic Small), B2(Basic')
            fprintf('%s\n', '                          Medium), B3(Basic Large), S1(Standard Small), P1V2(Premium V2 Small), PC2')
            fprintf('%s\n', '                          (Premium Container Small), PC3 (Premium Container Medium), PC4 (Premium')
            fprintf('%s\n', '                          Container Large), I1 (Isolated Small), I2 (Isolated Medium), I3 (Isolated')
            fprintf('%s\n', '                          Large).  Allowed values: B1, B2, B3, D1, F1, FREE, I1, I2, I3, P1V2, P2V2,')
            fprintf('%s\n', '                          P3V2, PC2, PC3, PC4, S1, S2, S3, SHARED.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the web app. You can configure the default using `az configure')
            fprintf('%s\n', '                          --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    View the details of the app that will be created, without actually running the operation')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName --dryrun')
            fprintf('%s\n', '    Create a web app with the default configuration, by running the command from the folder where')
            fprintf('%s\n', '    the code to deployed exists.')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName -l locationName')
            fprintf('%s\n', '    Create a web app in a specific region, by running the command from the folder where the code to')
            fprintf('%s\n', '    deployed exists.')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName -l locationName')
            fprintf('%s\n', '    Deploy new code to an app that was originally created using the same command')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName -l locationName')
            fprintf('%s\n', '    Create a web app and enable log streaming after the deployment operation is complete. This will')
            fprintf('%s\n', '    enable the default configuration required to enable log streaming.')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName --logs')
            fprintf('%s\n', '    Create a web app and deploy as a static HTML app.')
            fprintf('%s\n', '        az webapp up -n MyUniqueAppName --html')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp up"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class up 
