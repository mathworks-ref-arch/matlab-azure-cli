classdef reconnect < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reconnect()
            % az staticwebapp reconnect : Connect to a repo and branch following a disconnect command.
            % Command group 'staticwebapp' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az staticwebapp reconnect ';
        end
        function this = branch(this, varargin)
            % The target branch in the repository.
            this.Options = [this.Options, '--branch', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the static site.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source(this, varargin)
            % URL for the repository of the static site.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = token(this, varargin)
            % A user's github repository token. This is used to setup the Github Actions workflow file and API secrets. If you need to create a Github Personal Access Token, please follow the steps found at the following link: https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line.
            this.Options = [this.Options, '--token', varargin{:}];
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
            fprintf('%s\n', '    az staticwebapp reconnect : Connect to a repo and branch following a disconnect command.')
            fprintf('%s\n', '        Command group ''staticwebapp'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --branch -b [Required] : The target branch in the repository.')
            fprintf('%s\n', '    --name -n   [Required] : Name of the static site.')
            fprintf('%s\n', '    --source -s [Required] : URL for the repository of the static site.')
            fprintf('%s\n', '    --no-wait              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --token -t             : A user''s github repository token. This is used to setup the Github')
            fprintf('%s\n', '                             Actions workflow file and API secrets. If you need to create a Github')
            fprintf('%s\n', '                             Personal Access Token, please follow the steps found at the following')
            fprintf('%s\n', '                             link:')
            fprintf('%s\n', '    https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Connect a repo and branch to static app.')
            fprintf('%s\n', '        az staticwebapp reconnect -n MyStaticAppName --source MyGitHubRepo -b master --token')
            fprintf('%s\n', '        MyAccessToken')
            fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp reconnect"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reconnect 
