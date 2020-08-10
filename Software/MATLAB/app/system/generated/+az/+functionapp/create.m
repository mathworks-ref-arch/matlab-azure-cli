classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az functionapp create : Create a function app.
            % The function app's name must be able to produce a unique FQDN as AppName.azurewebsites.net.
            this.BaseCmd = 'az functionapp create ';
        end
        function this = name(this, varargin)
            % Name of the new function app.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Provide a string value of a Storage Account in the provided Resource Group. Or Resource ID of a Storage Account in a different Resource Group.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = app_insights(this, varargin)
            % Name of the existing App Insights project to be added to the Function app. Must be in the same resource group.
            this.Options = [this.Options, '--app-insights', varargin{:}];
        end

        function this = app_insights_key(this, varargin)
            % Instrumentation key of App Insights to be added.
            this.Options = [this.Options, '--app-insights-key', varargin{:}];
        end

        function this = consumption_plan_location(this, varargin)
            % Geographic location where Function App will be hosted. Use `az functionapp list-consumption-locations` to view available locations.
            this.Options = [this.Options, '--consumption-plan-location', varargin{:}];
        end

        function this = deployment_container_image_name(this, varargin)
            % Linux only. Container image name from Docker Hub, e.g. publisher/image-name:tag.
            this.Options = [this.Options, '--deployment-container-image-name', varargin{:}];
        end

        function this = deployment_local_git(this, varargin)
            % Enable local git.
            this.Options = [this.Options, '--deployment-local-git', varargin{:}];
        end

        function this = deployment_source_branch(this, varargin)
            % The branch to deploy.  Default: master.
            this.Options = [this.Options, '--deployment-source-branch', varargin{:}];
        end

        function this = deployment_source_url(this, varargin)
            % Git repository URL to link with manual integration.
            this.Options = [this.Options, '--deployment-source-url', varargin{:}];
        end

        function this = disable_app_insights(this, varargin)
            % Disable creating application insights resource during functionapp create. No logs will be available.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-app-insights', varargin{:}];
        end

        function this = docker_registry_server_password(this, varargin)
            % The container registry server password. Required for private registries.
            this.Options = [this.Options, '--docker-registry-server-password', varargin{:}];
        end

        function this = docker_registry_server_user(this, varargin)
            % The container registry server username.
            this.Options = [this.Options, '--docker-registry-server-user', varargin{:}];
        end

        function this = functions_version(this, varargin)
            % The functions app version.  Allowed values: 2, 3.
            this.Options = [this.Options, '--functions-version', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Set the OS type for the app to be created.  Allowed values: Linux, Windows.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = plan(this, varargin)
            % Name or resource id of the function app service plan. Use 'appservice plan create' to get one.
            this.Options = [this.Options, '--plan', varargin{:}];
        end

        function this = runtime(this, varargin)
            % The functions runtime stack.  Allowed values: dotnet, java, node, powershell, python.
            this.Options = [this.Options, '--runtime', varargin{:}];
        end

        function this = runtime_version(this, varargin)
            % The version of the functions runtime stack. Allowed values for each --runtime are: node -> [8, 10, 12], java -> [8, 11 (preview)], powershell -> [6.2, 7.0], python -> [3.6, 3.7, 3.8].
            this.Options = [this.Options, '--runtime-version', varargin{:}];
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
            fprintf('%s\n', '    az functionapp create : Create a function app.')
            fprintf('%s\n', '        The function app''s name must be able to produce a unique FQDN as AppName.azurewebsites.net.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                 [Required] : Name of the new function app.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --storage-account -s      [Required] : Provide a string value of a Storage Account in the')
            fprintf('%s\n', '                                           provided Resource Group. Or Resource ID of a Storage')
            fprintf('%s\n', '                                           Account in a different Resource Group.')
            fprintf('%s\n', '    --app-insights                       : Name of the existing App Insights project to be added to')
            fprintf('%s\n', '                                           the Function app. Must be in the same resource group.')
            fprintf('%s\n', '    --app-insights-key                   : Instrumentation key of App Insights to be added.')
            fprintf('%s\n', '    --consumption-plan-location -c       : Geographic location where Function App will be hosted.')
            fprintf('%s\n', '                                           Use `az functionapp list-consumption-locations` to view')
            fprintf('%s\n', '                                           available locations.')
            fprintf('%s\n', '    --deployment-container-image-name -i : Linux only. Container image name from Docker Hub, e.g.')
            fprintf('%s\n', '                                           publisher/image-name:tag.')
            fprintf('%s\n', '    --deployment-local-git -l            : Enable local git.')
            fprintf('%s\n', '    --deployment-source-branch -b        : The branch to deploy.  Default: master.')
            fprintf('%s\n', '    --deployment-source-url -u           : Git repository URL to link with manual integration.')
            fprintf('%s\n', '    --disable-app-insights               : Disable creating application insights resource during')
            fprintf('%s\n', '                                           functionapp create. No logs will be available.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '    --docker-registry-server-password    : The container registry server password. Required for')
            fprintf('%s\n', '                                           private registries.')
            fprintf('%s\n', '    --docker-registry-server-user        : The container registry server username.')
            fprintf('%s\n', '    --functions-version                  : The functions app version.  Allowed values: 2, 3.')
            fprintf('%s\n', '    --os-type                            : Set the OS type for the app to be created.  Allowed')
            fprintf('%s\n', '                                           values: Linux, Windows.')
            fprintf('%s\n', '    --plan -p                            : Name or resource id of the function app service plan. Use')
            fprintf('%s\n', '                                           ''appservice plan create'' to get one.')
            fprintf('%s\n', '    --runtime                            : The functions runtime stack.  Allowed values: dotnet,')
            fprintf('%s\n', '                                           java, node, powershell, python.')
            fprintf('%s\n', '    --runtime-version                    : The version of the functions runtime stack. Allowed')
            fprintf('%s\n', '                                           values for each --runtime are: node -> [8, 10, 12], java')
            fprintf('%s\n', '                                           -> [8, 11 (preview)], powershell -> [6.2, 7.0], python ->')
            fprintf('%s\n', '                                           [3.6, 3.7, 3.8].')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a basic function app.')
            fprintf('%s\n', '        az functionapp create -g MyResourceGroup  -p MyPlan -n MyUniqueAppName -s MyStorageAccount')
            fprintf('%s\n', '    Create a function app. (autogenerated)')
            fprintf('%s\n', '        az functionapp create --consumption-plan-location westus --name MyUniqueAppName --os-type')
            fprintf('%s\n', '        Windows --resource-group MyResourceGroup --runtime dotnet --storage-account MyStorageAccount')
            fprintf('%s\n', '    Create a function app using a private ACR image.')
            fprintf('%s\n', '        az functionapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName --runtime node')
            fprintf('%s\n', '        --storage-account MyStorageAccount --deployment-container-image-name')
            fprintf('%s\n', '        myacr.azurecr.io/myimage:tag --docker-registry-server-password passw0rd --docker-registry-')
            fprintf('%s\n', '        server-user MyUser')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
