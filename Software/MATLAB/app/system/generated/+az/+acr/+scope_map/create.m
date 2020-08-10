classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az acr scope-map create : Create a scope map for an Azure Container Registry.
            % Command group 'acr scope-map' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az acr scope-map create ';
        end
        function this = name(this, varargin)
            % The name of the scope map.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = repository(this, varargin)
            % Repository permissions. Use the format "--repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are {'content/delete', 'content/read', 'metadata/read', 'metadata/write', 'content/write'}.
            this.Options = [this.Options, '--repository', varargin{:}];
        end

        function this = description(this, varargin)
            % Description for the scope map. Maximum 256 characters are allowed.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az acr scope-map create : Create a scope map for an Azure Container Registry.')
            fprintf('%s\n', '        Command group ''acr scope-map'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : The name of the scope map.')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --repository  [Required] : Repository permissions. Use the format "--repository REPO [ACTION1')
            fprintf('%s\n', '                               ACTION2 ...]" per flag. Valid actions are {''content/delete'',')
            fprintf('%s\n', '                               ''content/read'', ''metadata/read'', ''metadata/write'', ''content/write''}.')
            fprintf('%s\n', '    --description            : Description for the scope map. Maximum 256 characters are allowed.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a scope map that allows content/write and metadata/read actions for `hello-world`')
            fprintf('%s\n', '    repository, and content/read action for `hello-world-again`.')
            fprintf('%s\n', '        az acr scope-map create -n MyScopeMap -r MyRegistry --repository hello-world content/write')
            fprintf('%s\n', '        metadata/read --repository hello-world-again content/read --description "Sample scope map."')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr scope-map create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
