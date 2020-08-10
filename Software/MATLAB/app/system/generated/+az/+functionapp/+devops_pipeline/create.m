classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az functionapp devops-pipeline create : Create an Azure DevOps pipeline for a function app.
            this.BaseCmd = 'az functionapp devops-pipeline create ';
        end
        function this = allow_force_push(this, varargin)
            % If Azure DevOps repository is not clean, should it overwrite remote content?  Allowed values: false, true.
            this.Options = [this.Options, '--allow-force-push', varargin{:}];
        end

        function this = functionapp_name(this, varargin)
            % Name of the Azure function app that you want to use.
            this.Options = [this.Options, '--functionapp-name', varargin{:}];
        end

        function this = github_pat(this, varargin)
            % Github personal access token for creating pipeline from Github repository.
            this.Options = [this.Options, '--github-pat', varargin{:}];
        end

        function this = github_repository(this, varargin)
            % Fullname of your Github repository (e.g. Azure/azure-cli).
            this.Options = [this.Options, '--github-repository', varargin{:}];
        end

        function this = organization_name(this, varargin)
            % Name of the Azure DevOps organization that you want to use.
            this.Options = [this.Options, '--organization-name', varargin{:}];
        end

        function this = overwrite_yaml(this, varargin)
            % If you have an existing yaml, should it be overwritten?  Allowed values: false, true.
            this.Options = [this.Options, '--overwrite-yaml', varargin{:}];
        end

        function this = project_name(this, varargin)
            % Name of the Azure DevOps project that you want to use.
            this.Options = [this.Options, '--project-name', varargin{:}];
        end

        function this = repository_name(this, varargin)
            % Name of the Azure DevOps repository that you want to use.
            this.Options = [this.Options, '--repository-name', varargin{:}];
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
            fprintf('%s\n', '    az functionapp devops-pipeline create : Create an Azure DevOps pipeline for a function app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-force-push  : If Azure DevOps repository is not clean, should it overwrite remote')
            fprintf('%s\n', '                          content?  Allowed values: false, true.')
            fprintf('%s\n', '    --functionapp-name  : Name of the Azure function app that you want to use.')
            fprintf('%s\n', '    --github-pat        : Github personal access token for creating pipeline from Github repository.')
            fprintf('%s\n', '    --github-repository : Fullname of your Github repository (e.g. Azure/azure-cli).')
            fprintf('%s\n', '    --organization-name : Name of the Azure DevOps organization that you want to use.')
            fprintf('%s\n', '    --overwrite-yaml    : If you have an existing yaml, should it be overwritten?  Allowed values:')
            fprintf('%s\n', '                          false, true.')
            fprintf('%s\n', '    --project-name      : Name of the Azure DevOps project that you want to use.')
            fprintf('%s\n', '    --repository-name   : Name of the Azure DevOps repository that you want to use.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    create an Azure Pipeline to a function app.')
            fprintf('%s\n', '        az functionapp devops-pipeline create --functionapp-name FunctionApp')
            fprintf('%s\n', '    create an Azure Pipeline from a Github function app repository.')
            fprintf('%s\n', '        az functionapp devops-pipeline create --github-repository')
            fprintf('%s\n', '        GithubOrganization/GithubRepository --github-pat GithubPersonalAccessToken')
            fprintf('%s\n', '    create an Azure Pipeline with specific Azure DevOps organization and project')
            fprintf('%s\n', '        az functionapp devops-pipeline create --organization-name AzureDevOpsOrganization --project-')
            fprintf('%s\n', '        name AzureDevOpsProject')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp devops-pipeline create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
