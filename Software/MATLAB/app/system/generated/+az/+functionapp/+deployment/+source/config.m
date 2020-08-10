classdef config < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = config()
            % az functionapp deployment source config : Manage deployment from git or Mercurial repositories.
            this.BaseCmd = 'az functionapp deployment source config ';
        end
        function this = repo_url(this, varargin)
            % Repository url to pull the latest source from, e.g. https://github.com/foo/foo-web.
            this.Options = [this.Options, '--repo-url', varargin{:}];
        end

        function this = branch(this, varargin)
            % The branch name of the repository.
            this.Options = [this.Options, '--branch', varargin{:}];
        end

        function this = git_token(this, varargin)
            % Git access token required for auto sync.
            this.Options = [this.Options, '--git-token', varargin{:}];
        end

        function this = manual_integration(this, varargin)
            % Disable automatic sync between source control and web.
            this.Options = [this.Options, '--manual-integration', varargin{:}];
        end

        function this = repository_type(this, varargin)
            % Repository type.  Allowed values: externalgit, git, github, localgit, mercurial, vsts.  Default: git.
            this.Options = [this.Options, '--repository-type', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the function app.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. VSTS CD Provider Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = app_working_dir(this, varargin)
            % Working directory of the application. Default will be root of the repo.
            this.Options = [this.Options, '--app-working-dir', varargin{:}];
        end

        function this = cd_account_create(this, varargin)
            % To create a new Visual Studio Team Services (VSTS) account if it doesn't exist already.
            this.Options = [this.Options, '--cd-account-create', varargin{:}];
        end

        function this = cd_app_type(this, varargin)
            % Web application framework you used to develop your app. Default is AspNet.  Allowed values: AspNet, AspNetCore, NodeJS, PHP, Python.
            this.Options = [this.Options, '--cd-app-type', varargin{:}];
        end

        function this = cd_project_url(this, varargin)
            % URL of the Visual Studio Team Services (VSTS) project to use for continuous delivery. URL should be in format `https://<accountname>.visualstudio.com/<projectname>`.
            this.Options = [this.Options, '--cd-project-url', varargin{:}];
        end

        function this = nodejs_task_runner(this, varargin)
            % Task runner for nodejs. Default is None.  Allowed values: Grunt, Gulp, None.
            this.Options = [this.Options, '--nodejs-task-runner', varargin{:}];
        end

        function this = private_repo_password(this, varargin)
            % Password for the private repository.
            this.Options = [this.Options, '--private-repo-password', varargin{:}];
        end

        function this = private_repo_username(this, varargin)
            % Username for the private repository.
            this.Options = [this.Options, '--private-repo-username', varargin{:}];
        end

        function this = python_framework(this, varargin)
            % Framework used for Python application. Default is Django.  Allowed values: Bottle, Django, Flask.
            this.Options = [this.Options, '--python-framework', varargin{:}];
        end

        function this = python_version(this, varargin)
            % Python version used for application. Default is Python 3.5.3 x86. Allowed values: Python 2.7.12 x64, Python 2.7.12 x86, Python 2.7.13 x64, Python 2.7.13 x86, Python 3.5.3 x64, Python 3.5.3 x86, Python 3.6.0 x64, Python 3.6.0 x86, Python 3.6.1 x86, Python 3.6.2 x64.
            this.Options = [this.Options, '--python-version', varargin{:}];
        end

        function this = slot_swap(this, varargin)
            % Name of the slot to be used for deployment and later promote to production. If slot is not available, it will be created. Default: Not configured.
            this.Options = [this.Options, '--slot-swap', varargin{:}];
        end

        function this = test(this, varargin)
            % Name of the web app to be used for load testing. If web app is not available, it will be created. Default: Disable.
            this.Options = [this.Options, '--test', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az functionapp deployment source config : Manage deployment from git or Mercurial repositories.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --repo-url -u [Required] : Repository url to pull the latest source from, e.g.')
            fprintf('%s\n', '                               https://github.com/foo/foo-web.')
            fprintf('%s\n', '    --branch                 : The branch name of the repository.')
            fprintf('%s\n', '    --git-token              : Git access token required for auto sync.')
            fprintf('%s\n', '    --manual-integration     : Disable automatic sync between source control and web.')
            fprintf('%s\n', '    --repository-type        : Repository type.  Allowed values: externalgit, git, github, localgit,')
            fprintf('%s\n', '                               mercurial, vsts.  Default: git.')
            fprintf('%s\n', '    --slot -s                : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                               specified.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : Name of the function app.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'VSTS CD Provider Arguments')
            fprintf('%s\n', '    --app-working-dir        : Working directory of the application. Default will be root of the')
            fprintf('%s\n', '                               repo.')
            fprintf('%s\n', '    --cd-account-create      : To create a new Visual Studio Team Services (VSTS) account if it')
            fprintf('%s\n', '                               doesn''t exist already.')
            fprintf('%s\n', '    --cd-app-type            : Web application framework you used to develop your app. Default is')
            fprintf('%s\n', '                               AspNet.  Allowed values: AspNet, AspNetCore, NodeJS, PHP, Python.')
            fprintf('%s\n', '    --cd-project-url         : URL of the Visual Studio Team Services (VSTS) project to use for')
            fprintf('%s\n', '                               continuous delivery. URL should be in format')
            fprintf('%s\n', '                               `https://<accountname>.visualstudio.com/<projectname>`.')
            fprintf('%s\n', '    --nodejs-task-runner     : Task runner for nodejs. Default is None.  Allowed values: Grunt,')
            fprintf('%s\n', '                               Gulp, None.')
            fprintf('%s\n', '    --private-repo-password  : Password for the private repository.')
            fprintf('%s\n', '    --private-repo-username  : Username for the private repository.')
            fprintf('%s\n', '    --python-framework       : Framework used for Python application. Default is Django.  Allowed')
            fprintf('%s\n', '                               values: Bottle, Django, Flask.')
            fprintf('%s\n', '    --python-version         : Python version used for application. Default is Python 3.5.3 x86.')
            fprintf('%s\n', '                               Allowed values: Python 2.7.12 x64, Python 2.7.12 x86, Python 2.7.13')
            fprintf('%s\n', '                               x64, Python 2.7.13 x86, Python 3.5.3 x64, Python 3.5.3 x86, Python')
            fprintf('%s\n', '                               3.6.0 x64, Python 3.6.0 x86, Python 3.6.1 x86, Python 3.6.2 x64.')
            fprintf('%s\n', '    --slot-swap              : Name of the slot to be used for deployment and later promote to')
            fprintf('%s\n', '                               production. If slot is not available, it will be created. Default:')
            fprintf('%s\n', '                               Not configured.')
            fprintf('%s\n', '    --test                   : Name of the web app to be used for load testing. If web app is not')
            fprintf('%s\n', '                               available, it will be created. Default: Disable.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Manage deployment from git or Mercurial repositories. (autogenerated)')
            fprintf('%s\n', '        az functionapp deployment source config --branch master --manual-integration --name')
            fprintf('%s\n', '        MyFunctionApp --repo-url https://github.com/Azure-Samples/function-image-upload-resize')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp deployment source config"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class config 
