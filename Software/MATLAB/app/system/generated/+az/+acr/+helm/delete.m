classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az acr helm delete : Delete a helm chart version in an Azure Container Registry.
            % This command is implicitly deprecated because command group 'acr helm' is deprecated
            % and will be removed in a future release. Use 'helm v3' instead.
            this.BaseCmd = 'az acr helm delete ';
        end
        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = password(this, varargin)
            % The password used to log into a container registry.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = prov(this, varargin)
            % Only delete the provenance file.
            this.Options = [this.Options, '--prov', varargin{:}];
        end

        function this = suffix(this, varargin)
            % The tenant suffix in registry login server. You may specify '--suffix tenant' if your registry login server is in the format 'registry- tenant.azurecr.io'. Applicable if you're accessing the registry from a different subscription or you have permission to access images but not the permission to manage the registry resource.
            this.Options = [this.Options, '--suffix', varargin{:}];
        end

        function this = username(this, varargin)
            % The username used to log into a container registry.
            this.Options = [this.Options, '--username', varargin{:}];
        end

        function this = version(this, varargin)
            % The helm chart version.
            this.Options = [this.Options, '--version', varargin{:}];
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
            fprintf('%s\n', '    az acr helm delete : Delete a helm chart version in an Azure Container Registry.')
            fprintf('%s\n', '        This command is implicitly deprecated because command group ''acr helm'' is deprecated')
            fprintf('%s\n', '        and will be removed in a future release. Use ''helm v3'' instead.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                           registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --password -p        : The password used to log into a container registry.')
            fprintf('%s\n', '    --prov               : Only delete the provenance file.')
            fprintf('%s\n', '    --suffix             : The tenant suffix in registry login server. You may specify ''--suffix')
            fprintf('%s\n', '                           tenant'' if your registry login server is in the format ''registry-')
            fprintf('%s\n', '                           tenant.azurecr.io''. Applicable if you''re accessing the registry from a')
            fprintf('%s\n', '                           different subscription or you have permission to access images but not')
            fprintf('%s\n', '                           the permission to manage the registry resource.')
            fprintf('%s\n', '    --username -u        : The username used to log into a container registry.')
            fprintf('%s\n', '    --version            : The helm chart version.')
            fprintf('%s\n', '    --yes -y             : Do not prompt for confirmation.')
            fprintf('%s\n', 'Positional')
            fprintf('%s\n', '    <CHART>              : The helm chart name.')
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
            fprintf('%s\n', '    Delete all versions of a helm chart in an Azure Container Registry')
            fprintf('%s\n', '        az acr helm delete -n MyRegistry mychart')
            fprintf('%s\n', '    Delete a helm chart version in an Azure Container Registry')
            fprintf('%s\n', '        az acr helm delete -n MyRegistry mychart --version 0.3.2')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr helm delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
