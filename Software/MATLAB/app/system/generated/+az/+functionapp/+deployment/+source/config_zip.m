classdef config_zip < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = config_zip()
            % az functionapp deployment source config-zip : Perform deployment using the kudu zip push
            % deployment for a function app.
            % By default Kudu assumes that zip deployments do not require any build-related actions like
            % npm install or dotnet publish. This can be overridden by including an .deployment file in
            % your zip file with the following content '[config] SCM_DO_BUILD_DURING_DEPLOYMENT = true',
            % to enable Kudu detection logic and build script generation process. See
            % https://github.com/projectkudu/kudu/wiki/Configurable-settings#enabledisable-build-actions-
            % preview. Alternately the setting can be enabled using the az functionapp config appsettings
            % set command.
            this.BaseCmd = 'az functionapp deployment source config-zip ';
        end
        function this = src(this, varargin)
            % A zip file path for deployment.
            this.Options = [this.Options, '--src', varargin{:}];
        end

        function this = build_remote(this, varargin)
            % Enable remote build during deployment.  Allowed values: false, true.
            this.Options = [this.Options, '--build-remote', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Configurable timeout in seconds for checking the status of deployment.
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            fprintf('%s\n', '    az functionapp deployment source config-zip : Perform deployment using the kudu zip push')
            fprintf('%s\n', '    deployment for a function app.')
            fprintf('%s\n', '        By default Kudu assumes that zip deployments do not require any build-related actions like')
            fprintf('%s\n', '        npm install or dotnet publish. This can be overridden by including an .deployment file in')
            fprintf('%s\n', '        your zip file with the following content ''[config] SCM_DO_BUILD_DURING_DEPLOYMENT = true'',')
            fprintf('%s\n', '        to enable Kudu detection logic and build script generation process. See')
            fprintf('%s\n', '        https://github.com/projectkudu/kudu/wiki/Configurable-settings#enabledisable-build-actions-')
            fprintf('%s\n', '        preview. Alternately the setting can be enabled using the az functionapp config appsettings')
            fprintf('%s\n', '        set command.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --src    [Required] : A zip file path for deployment.')
            fprintf('%s\n', '    --build-remote      : Enable remote build during deployment.  Allowed values: false, true.')
            fprintf('%s\n', '    --slot -s           : The name of the slot. Default to the productions slot if not specified.')
            fprintf('%s\n', '    --timeout -t        : Configurable timeout in seconds for checking the status of deployment.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the function app.')
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
            fprintf('%s\n', '    Perform deployment by using zip file content.')
            fprintf('%s\n', '        az functionapp deployment source config-zip \')
            fprintf('%s\n', '            -g {myRG} -n {myAppName} \')
            fprintf('%s\n', '            --src {zipFilePathLocation}')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp deployment source config-zip"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class config_zip 
