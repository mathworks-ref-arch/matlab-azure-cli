classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az acr import : Imports an image to an Azure Container Registry from another Container Registry.
            % Import removes the need to docker pull, docker tag, docker push.
            this.BaseCmd = 'az acr import ';
        end
        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source(this, varargin)
            % Source image name or fully qualified source containing the registry login server. If `--registry` is used, `--source` will always be interpreted as a source image, even if it contains the login server.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = force(this, varargin)
            % Overwrite the existing tag of the image to be imported.
            this.Options = [this.Options, '--force', varargin{:}];
        end

        function this = image(this, varargin)
            % The name and tag of the image using the format: '-t repo/image:tag'. Multiple tags are supported by passing -t multiple times.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = password(this, varargin)
            % The password of source container registry.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = registry(this, varargin)
            % The source Azure container registry. This can be name, login server or resource ID of the source registry.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = repository(this, varargin)
            % The repository name for a manifest-only copy of images. Multiple copies supported by passing --repository multiple times.
            this.Options = [this.Options, '--repository', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = username(this, varargin)
            % The username of source container registry.
            this.Options = [this.Options, '--username', varargin{:}];
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
            fprintf('%s\n', '    az acr import : Imports an image to an Azure Container Registry from another Container Registry.')
            fprintf('%s\n', '    Import removes the need to docker pull, docker tag, docker push.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                           registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --source  [Required] : Source image name or fully qualified source containing the registry login')
            fprintf('%s\n', '                           server. If `--registry` is used, `--source` will always be interpreted as')
            fprintf('%s\n', '                           a source image, even if it contains the login server.')
            fprintf('%s\n', '    --force              : Overwrite the existing tag of the image to be imported.')
            fprintf('%s\n', '    --image -t           : The name and tag of the image using the format: ''-t repo/image:tag''.')
            fprintf('%s\n', '                           Multiple tags are supported by passing -t multiple times.')
            fprintf('%s\n', '    --password -p        : The password of source container registry.')
            fprintf('%s\n', '    --registry -r        : The source Azure container registry. This can be name, login server or')
            fprintf('%s\n', '                           resource ID of the source registry.')
            fprintf('%s\n', '    --repository         : The repository name for a manifest-only copy of images. Multiple copies')
            fprintf('%s\n', '                           supported by passing --repository multiple times.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --username -u        : The username of source container registry.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Import an image from ''sourceregistry'' to ''MyRegistry''. The image inherits its source repository')
            fprintf('%s\n', '    and tag names.')
            fprintf('%s\n', '        az acr import -n MyRegistry --source sourceregistry.azurecr.io/sourcerepository:sourcetag')
            fprintf('%s\n', '    Import an image from a public repository on Docker Hub. The image uses the specified repository')
            fprintf('%s\n', '    and tag names.')
            fprintf('%s\n', '        az acr import -n MyRegistry --source docker.io/library/hello-world:latest -t')
            fprintf('%s\n', '        targetrepository:targettag')
            fprintf('%s\n', '    Import an image from a private repository using its username and password. This also applies to')
            fprintf('%s\n', '    registries outside Azure.')
            fprintf('%s\n', '        az acr import -n MyRegistry --source myprivateregistry.azurecr.io/hello-world:latest -u')
            fprintf('%s\n', '        username -p password')
            fprintf('%s\n', '    Import an image from an Azure container registry in a different subscription.')
            fprintf('%s\n', '        az acr import -n MyRegistry --source sourcerepository:sourcetag -t')
            fprintf('%s\n', '        targetrepository:targettag \')
            fprintf('%s\n', '            -r /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/sourceResourceGrou')
            fprintf('%s\n', '        p/providers/Microsoft.ContainerRegistry/registries/sourceRegistry')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
