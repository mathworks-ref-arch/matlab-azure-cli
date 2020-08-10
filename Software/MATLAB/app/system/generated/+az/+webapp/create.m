classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az webapp create : Create a web app.
            % The web app's name must be able to produce a unique FQDN as AppName.azurewebsites.net.
            this.BaseCmd = 'az webapp create ';
        end
        function this = name(this, varargin)
            % Name of the new web app.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = plan(this, varargin)
            % Name or resource id of the app service plan. Use 'appservice plan create' to get one.
            this.Options = [this.Options, '--plan', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Accept system or user assigned identities separated by spaces. Use '[system]' to refer system assigned identity, or a resource id to refer user assigned identity. Check out help for more examples.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
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

        function this = docker_registry_server_password(this, varargin)
            % The container registry server password. Required for private registries.
            this.Options = [this.Options, '--docker-registry-server-password', varargin{:}];
        end

        function this = docker_registry_server_user(this, varargin)
            % The container registry server username.
            this.Options = [this.Options, '--docker-registry-server-user', varargin{:}];
        end

        function this = multicontainer_config_file(this, varargin)
            % Linux only. Config file for multicontainer apps. (local or remote).
            this.Options = [this.Options, '--multicontainer-config-file', varargin{:}];
        end

        function this = multicontainer_config_type(this, varargin)
            % Linux only.  Allowed values: COMPOSE, KUBE.
            this.Options = [this.Options, '--multicontainer-config-type', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id the system assigned identity will have. Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = runtime(this, varargin)
            % Canonicalized web runtime in the format of Framework|Version, e.g. "PHP|7.2". Use `az webapp list- runtimes` for available list.
            this.Options = [this.Options, '--runtime', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope that the system assigned identity can access.
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = startup_file(this, varargin)
            % Linux only. The web's startup file.
            this.Options = [this.Options, '--startup-file', varargin{:}];
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
            fprintf('%s\n', '    az webapp create : Create a web app.')
            fprintf('%s\n', '        The web app''s name must be able to produce a unique FQDN as AppName.azurewebsites.net.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                 [Required] : Name of the new web app.')
            fprintf('%s\n', '    --plan -p                 [Required] : Name or resource id of the app service plan. Use')
            fprintf('%s\n', '                                           ''appservice plan create'' to get one.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --assign-identity                    : Accept system or user assigned identities separated by')
            fprintf('%s\n', '                                           spaces. Use ''[system]'' to refer system assigned identity,')
            fprintf('%s\n', '                                           or a resource id to refer user assigned identity. Check')
            fprintf('%s\n', '                                           out help for more examples.')
            fprintf('%s\n', '    --deployment-container-image-name -i : Linux only. Container image name from Docker Hub, e.g.')
            fprintf('%s\n', '                                           publisher/image-name:tag.')
            fprintf('%s\n', '    --deployment-local-git -l            : Enable local git.')
            fprintf('%s\n', '    --deployment-source-branch -b        : The branch to deploy.  Default: master.')
            fprintf('%s\n', '    --deployment-source-url -u           : Git repository URL to link with manual integration.')
            fprintf('%s\n', '    --docker-registry-server-password -w : The container registry server password. Required for')
            fprintf('%s\n', '                                           private registries.')
            fprintf('%s\n', '    --docker-registry-server-user -s     : The container registry server username.')
            fprintf('%s\n', '    --multicontainer-config-file         : Linux only. Config file for multicontainer apps. (local')
            fprintf('%s\n', '                                           or remote).')
            fprintf('%s\n', '    --multicontainer-config-type         : Linux only.  Allowed values: COMPOSE, KUBE.')
            fprintf('%s\n', '    --role                               : Role name or id the system assigned identity will have.')
            fprintf('%s\n', '                                           Default: Contributor.')
            fprintf('%s\n', '    --runtime -r                         : Canonicalized web runtime in the format of')
            fprintf('%s\n', '                                           Framework|Version, e.g. "PHP|7.2". Use `az webapp list-')
            fprintf('%s\n', '                                           runtimes` for available list.')
            fprintf('%s\n', '    --scope                              : Scope that the system assigned identity can access.')
            fprintf('%s\n', '    --startup-file                       : Linux only. The web''s startup file.')
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
            fprintf('%s\n', '    Create a web app with the default configuration.')
            fprintf('%s\n', '        az webapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName')
            fprintf('%s\n', '    Create a web app with a NodeJS 10.14 runtime and deployed from a local git repository.')
            fprintf('%s\n', '        az webapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName --runtime "node|10.14"')
            fprintf('%s\n', '        --deployment-local-git')
            fprintf('%s\n', '    Create a web app with an image from DockerHub.')
            fprintf('%s\n', '        az webapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName -i nginx')
            fprintf('%s\n', '    Create a web app with an image from a private DockerHub registry.')
            fprintf('%s\n', '        az webapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName -i MyImageName -s username')
            fprintf('%s\n', '        -w password')
            fprintf('%s\n', '    Create a web app with an image from a private Azure Container Registry.')
            fprintf('%s\n', '        az webapp create -g MyResourceGroup -p MyPlan -n MyUniqueAppName -i')
            fprintf('%s\n', '        myregistry.azurecr.io/docker-image:tag')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
