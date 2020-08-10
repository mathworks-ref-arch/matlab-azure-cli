classdef generate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate()
            % az acr token credential generate : Generate or replace one or both passwords of a token for an
            % Azure Container Registry. For using token and password to access a container registry, see
            % https://aka.ms/acr/repo-permissions.
            % Command group 'acr token' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az acr token credential generate ';
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

        function this = password1(this, varargin)
            % Flag indicating if password1 should be generated.
            this.Options = [this.Options, '--password1', varargin{:}];
        end

        function this = password2(this, varargin)
            % Flag indicating if password2 should be generated.
            this.Options = [this.Options, '--password2', varargin{:}];
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
            fprintf('%s\n', '    az acr token credential generate : Generate or replace one or both passwords of a token for an')
            fprintf('%s\n', '    Azure Container Registry. For using token and password to access a container registry, see')
            fprintf('%s\n', '    https://aka.ms/acr/repo-permissions.')
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
            fprintf('%s\n', '    --password1              : Flag indicating if password1 should be generated.')
            fprintf('%s\n', '    --password2              : Flag indicating if password2 should be generated.')
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
            fprintf('%s\n', '    Generate password1 for the token ''MyToken'', with an expiration of 30 days.')
            fprintf('%s\n', '        az acr token credential generate -n MyToken -r MyRegistry --password1 --days 30')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr token credential generate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate 
