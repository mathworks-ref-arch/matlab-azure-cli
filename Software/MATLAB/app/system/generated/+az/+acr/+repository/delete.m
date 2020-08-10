classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az acr repository delete : Delete a repository or image in an Azure Container Registry.
            % This command deletes all associated layer data that are not referenced by any other manifest
            % in the container registry.
            this.BaseCmd = 'az acr repository delete ';
        end
        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = image(this, varargin)
            % The name of the image. May include a tag in the format 'name:tag' or digest in the format 'name@digest'.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = password(this, varargin)
            % The password used to log into a container registry.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = repository(this, varargin)
            % The name of the repository.
            this.Options = [this.Options, '--repository', varargin{:}];
        end

        function this = suffix(this, varargin)
            % The tenant suffix in registry login server. You may specify '--suffix tenant' if your registry login server is in the format 'registry- tenant.azurecr.io'. Applicable if you're accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource.
            this.Options = [this.Options, '--suffix', varargin{:}];
        end

        function this = username(this, varargin)
            % The username used to log into a container registry.
            this.Options = [this.Options, '--username', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az acr repository delete : Delete a repository or image in an Azure Container Registry.')
            fprintf('%s\n', '        This command deletes all associated layer data that are not referenced by any other manifest')
            fprintf('%s\n', '        in the container registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                           registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --image -t           : The name of the image. May include a tag in the format ''name:tag'' or')
            fprintf('%s\n', '                           digest in the format ''name@digest''.')
            fprintf('%s\n', '    --password -p        : The password used to log into a container registry.')
            fprintf('%s\n', '    --repository         : The name of the repository.')
            fprintf('%s\n', '    --suffix             : The tenant suffix in registry login server. You may specify ''--suffix')
            fprintf('%s\n', '                           tenant'' if your registry login server is in the format ''registry-')
            fprintf('%s\n', '                           tenant.azurecr.io''. Applicable if you''re accessing the registry from a')
            fprintf('%s\n', '                           different subscription or you have permission to access images but not')
            fprintf('%s\n', '                           the permission to manage the registry resource.')
            fprintf('%s\n', '    --username -u        : The username used to log into a container registry.')
            fprintf('%s\n', '    --yes -y             : Do not prompt for confirmation.')
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
            fprintf('%s\n', '    Delete an image manifest by tag. This deletes the manifest referenced by ''hello-world:latest''')
            fprintf('%s\n', '    and all other tags referencing the same manifest.')
            fprintf('%s\n', '        az acr repository delete -n MyRegistry --image hello-world:latest')
            fprintf('%s\n', '    Delete an image manifest by sha256-based manifest digest. This deletes the manifest identified')
            fprintf('%s\n', '    by ''hello-world@sha256:abc123'' and all tags referencing the manifest.')
            fprintf('%s\n', '        az acr repository delete -n MyRegistry --image hello-world@sha256:abc123')
            fprintf('%s\n', '    Delete a repository from an Azure Container Registry. This deletes all manifests and tags under')
            fprintf('%s\n', '    ''hello-world''.')
            fprintf('%s\n', '        az acr repository delete -n MyRegistry --repository hello-world')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr repository delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
