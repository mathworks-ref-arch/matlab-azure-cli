classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az acr token create : Create a token associated with a scope map for an Azure Container
            % Registry.
            % Command group 'acr token' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az acr token create ';
        end
        function this = name(this, varargin)
            % The name of the token.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = expiration(this, varargin)
            % UTC time for which the credentials will be valid. In the format of %Y-%m-%dT%H:%M:%SZ, e.g. 2025-12-31T12:59:59Z.
            this.Options = [this.Options, '--expiration', varargin{:}];
        end

        function this = expiration_in_days(this, varargin)
            % Number of days for which the credentials will be valid. If not specified, the expiration will default to the max value "9999-12-31T23:59:59.999999+00:00".
            this.Options = [this.Options, '--expiration-in-days', varargin{:}];
        end

        function this = no_passwords(this, varargin)
            % Do not generate passwords, instead use "az acr token credential generate".  Allowed values: false, true.
            this.Options = [this.Options, '--no-passwords', varargin{:}];
        end

        function this = repository(this, varargin)
            % Repository permissions. Use the format "--repository REPO [ACTION1 ACTION2 ...]" per flag. Valid actions are {'content/write', 'content/read', 'metadata/read', 'metadata/write', 'content/delete'}.
            this.Options = [this.Options, '--repository', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope_map(this, varargin)
            % The name of the scope map with pre-configured repository permissions. Use "--repository" if you would like CLI to configure one for you.
            this.Options = [this.Options, '--scope-map', varargin{:}];
        end

        function this = status(this, varargin)
            % The status of the token.  Allowed values: disabled, enabled. Default: enabled.
            this.Options = [this.Options, '--status', varargin{:}];
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
            fprintf('%s\n', '    az acr token create : Create a token associated with a scope map for an Azure Container')
            fprintf('%s\n', '    Registry.')
            fprintf('%s\n', '        Command group ''acr token'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : The name of the token.')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --expiration             : UTC time for which the credentials will be valid. In the format of')
            fprintf('%s\n', '                               %Y-%m-%dT%H:%M:%SZ, e.g. 2025-12-31T12:59:59Z.')
            fprintf('%s\n', '    --expiration-in-days     : Number of days for which the credentials will be valid. If not')
            fprintf('%s\n', '                               specified, the expiration will default to the max value')
            fprintf('%s\n', '                               "9999-12-31T23:59:59.999999+00:00".')
            fprintf('%s\n', '    --no-passwords           : Do not generate passwords, instead use "az acr token credential')
            fprintf('%s\n', '                               generate".  Allowed values: false, true.')
            fprintf('%s\n', '    --repository             : Repository permissions. Use the format "--repository REPO [ACTION1')
            fprintf('%s\n', '                               ACTION2 ...]" per flag. Valid actions are {''content/write'',')
            fprintf('%s\n', '                               ''content/read'', ''metadata/read'', ''metadata/write'', ''content/delete''}.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --scope-map              : The name of the scope map with pre-configured repository permissions.')
            fprintf('%s\n', '                               Use "--repository" if you would like CLI to configure one for you.')
            fprintf('%s\n', '    --status                 : The status of the token.  Allowed values: disabled, enabled.')
            fprintf('%s\n', '                               Default: enabled.')
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
            fprintf('%s\n', '    Create a token with repository permissions defined in the scope map ''MyScopeMap''.')
            fprintf('%s\n', '        az acr token create -n MyToken -r MyRegistry --scope-map MyScopeMap')
            fprintf('%s\n', '    Create a token which has read permissions on hello-world repository.')
            fprintf('%s\n', '        az acr token create -n myToken -r MyRegistry --repository hello-world content/read')
            fprintf('%s\n', '        metadata/read')
            fprintf('%s\n', '    Create a token without credentials.')
            fprintf('%s\n', '        az acr token create -n myToken -r MyRegistry --repository hello-world content/read --no-')
            fprintf('%s\n', '        passwords')
            fprintf('%s\n', '    Create a token in disabled status.')
            fprintf('%s\n', '        az acr token create -n MyToken -r MyRegistry --scope-map MyScopeMap --status disabled')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr token create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
