classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az webapp config container set : Set a web app container's settings.
            this.BaseCmd = 'az webapp config container set ';
        end
        function this = docker_custom_image_name(this, varargin)
            % The container custom image name and optionally the tag name.
            this.Options = [this.Options, '--docker-custom-image-name', varargin{:}];
        end

        function this = docker_registry_server_password(this, varargin)
            % The container registry server password.
            this.Options = [this.Options, '--docker-registry-server-password', varargin{:}];
        end

        function this = docker_registry_server_url(this, varargin)
            % The container registry server url.
            this.Options = [this.Options, '--docker-registry-server-url', varargin{:}];
        end

        function this = docker_registry_server_user(this, varargin)
            % The container registry server username.
            this.Options = [this.Options, '--docker-registry-server-user', varargin{:}];
        end

        function this = enable_app_service_storage(this, varargin)
            % Enables platform storage (custom container only). Allowed values: false, true.
            this.Options = [this.Options, '--enable-app-service-storage', varargin{:}];
        end

        function this = multicontainer_config_file(this, varargin)
            % Config file for multicontainer apps.
            this.Options = [this.Options, '--multicontainer-config-file', varargin{:}];
        end

        function this = multicontainer_config_type(this, varargin)
            % Config type.  Allowed values: COMPOSE, KUBE.
            this.Options = [this.Options, '--multicontainer-config-type', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
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
            fprintf('%s\n', '    az webapp config container set : Set a web app container''s settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --docker-custom-image-name -c -i     : The container custom image name and optionally the tag')
            fprintf('%s\n', '                                           name.')
            fprintf('%s\n', '    --docker-registry-server-password -p : The container registry server password.')
            fprintf('%s\n', '    --docker-registry-server-url -r      : The container registry server url.')
            fprintf('%s\n', '    --docker-registry-server-user -u     : The container registry server username.')
            fprintf('%s\n', '    --enable-app-service-storage -t      : Enables platform storage (custom container only).')
            fprintf('%s\n', '                                           Allowed values: false, true.')
            fprintf('%s\n', '    --multicontainer-config-file         : Config file for multicontainer apps.')
            fprintf('%s\n', '    --multicontainer-config-type         : Config type.  Allowed values: COMPOSE, KUBE.')
            fprintf('%s\n', '    --slot -s                            : The name of the slot. Default to the productions slot if')
            fprintf('%s\n', '                                           not specified.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                           a complete resource ID containing all information of')
            fprintf('%s\n', '                                           ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                           or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                            : Name of the web app. You can configure the default using')
            fprintf('%s\n', '                                           `az configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set a web app container''s settings. (autogenerated)')
            fprintf('%s\n', '        az webapp config container set --docker-custom-image-name MyDockerCustomImage --docker-')
            fprintf('%s\n', '        registry-server-password StrongPassword --docker-registry-server-url https://{azure-')
            fprintf('%s\n', '        container-registry-name}.azurecr.io --docker-registry-server-user DockerUserId --name')
            fprintf('%s\n', '        MyWebApp --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config container set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
