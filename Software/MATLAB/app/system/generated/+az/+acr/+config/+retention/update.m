classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az acr config retention update : Update retention policy for an Azure Container Registry.
            % Command group 'acr config retention' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az acr config retention update ';
        end
        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = type(this, varargin)
            % The type of retention policy.  Allowed values: UntaggedManifests.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = days(this, varargin)
            % The number of days to retain an untagged manifest after which it gets purged (Range: 0 to 365). Value "0" will delete untagged manifests immediately.  Default: 7.
            this.Options = [this.Options, '--days', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = status(this, varargin)
            % Indicates whether retention policy is enabled.  Allowed values: disabled, enabled.
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
            fprintf('%s\n', '    az acr config retention update : Update retention policy for an Azure Container Registry.')
            fprintf('%s\n', '        Command group ''acr config retention'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --type        [Required] : The type of retention policy.  Allowed values: UntaggedManifests.')
            fprintf('%s\n', '    --days                   : The number of days to retain an untagged manifest after which it gets')
            fprintf('%s\n', '                               purged (Range: 0 to 365). Value "0" will delete untagged manifests')
            fprintf('%s\n', '                               immediately.  Default: 7.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --status                 : Indicates whether retention policy is enabled.  Allowed values:')
            fprintf('%s\n', '                               disabled, enabled.')
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
            fprintf('%s\n', '    Enable retention policy for an Azure Container Registry to delete an untagged manifest after 30')
            fprintf('%s\n', '    days.')
            fprintf('%s\n', '        az acr config retention update -r MyRegistry --status Enabled --days 30 --type')
            fprintf('%s\n', '        UntaggedManifests')
            fprintf('%s\n', '    Enable retention policy for an Azure Container Registry to delete a manifest as soon as it gets')
            fprintf('%s\n', '    untagged.')
            fprintf('%s\n', '        az acr config retention update -r MyRegistry --status Enabled --days 0 --type')
            fprintf('%s\n', '        UntaggedManifests')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr config retention update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
