classdef untag < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = untag()
            % az acr repository untag : Untag an image in an Azure Container Registry.
            % This command does not delete the manifest referenced by the tag or any associated layer
            % data.
            this.BaseCmd = 'az acr repository untag ';
        end
        function this = image(this, varargin)
            % The name of the image. May include a tag in the format 'name:tag'.
            this.Options = [this.Options, '--image', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = password(this, varargin)
            % The password used to log into a container registry.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = suffix(this, varargin)
            % The tenant suffix in registry login server. You may specify '--suffix tenant' if your registry login server is in the format 'registry- tenant.azurecr.io'. Applicable if you're accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource.
            this.Options = [this.Options, '--suffix', varargin{:}];
        end

        function this = username(this, varargin)
            % The username used to log into a container registry.
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
            fprintf('%s\n', '    az acr repository untag : Untag an image in an Azure Container Registry.')
            fprintf('%s\n', '        This command does not delete the manifest referenced by the tag or any associated layer')
            fprintf('%s\n', '        data.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --image -t [Required] : The name of the image. May include a tag in the format ''name:tag''.')
            fprintf('%s\n', '    --name -n  [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                            registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --password -p         : The password used to log into a container registry.')
            fprintf('%s\n', '    --suffix              : The tenant suffix in registry login server. You may specify ''--suffix')
            fprintf('%s\n', '                            tenant'' if your registry login server is in the format ''registry-')
            fprintf('%s\n', '                            tenant.azurecr.io''. Applicable if you''re accessing the registry from a')
            fprintf('%s\n', '                            different subscription or you have permission to access images but not')
            fprintf('%s\n', '                            the permission to manage the registry resource.')
            fprintf('%s\n', '    --username -u         : The username used to log into a container registry.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Untag an image from a repository.')
            fprintf('%s\n', '        az acr repository untag -n MyRegistry --image hello-world:latest')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr repository untag"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class untag 
