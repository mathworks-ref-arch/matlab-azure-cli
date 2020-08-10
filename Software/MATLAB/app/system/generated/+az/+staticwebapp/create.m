classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az staticwebapp create : Create a static app with content from GitHubRepository URL provided in
            % source on provided branch. Return the app created.
            % Command group 'staticwebapp' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az staticwebapp create ';
        end
        function this = branch(this, varargin)
            % The target branch in the repository.
            this.Options = [this.Options, '--branch', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the static site.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source(this, varargin)
            % URL for the repository of the static site.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = api_location(this, varargin)
            % Location of your Azure Functions code. For example, '/api' represents a folder called 'api'.  Default: ..
            this.Options = [this.Options, '--api-location', varargin{:}];
        end

        function this = app_artifact_location(this, varargin)
            % The path of your build output relative to your apps location. For example, setting a value of 'build' when your app location is set to '/app' will cause the content at '/app/build' to be served.  Default: .github/workflows.
            this.Options = [this.Options, '--app-artifact-location', varargin{:}];
        end

        function this = app_location(this, varargin)
            % Location of your application code. For example, '/' represents the root of your app, while '/app' represents a directory called 'app'.  Default: ..
            this.Options = [this.Options, '--app-location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az staticwebapp create : Create a static app with content from GitHubRepository URL provided in')
            fprintf('%s\n', '    source on provided branch. Return the app created.')
            fprintf('%s\n', '        Command group ''staticwebapp'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --branch -b         [Required] : The target branch in the repository.')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the static site.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source -s         [Required] : URL for the repository of the static site.')
            fprintf('%s\n', '    --api-location                 : Location of your Azure Functions code. For example, ''/api''')
            fprintf('%s\n', '                                     represents a folder called ''api''.  Default: ..')
            fprintf('%s\n', '    --app-artifact-location        : The path of your build output relative to your apps location.')
            fprintf('%s\n', '                                     For example, setting a value of ''build'' when your app location')
            fprintf('%s\n', '                                     is set to ''/app'' will cause the content at ''/app/build'' to be')
            fprintf('%s\n', '                                     served.  Default: .github/workflows.')
            fprintf('%s\n', '    --app-location                 : Location of your application code. For example, ''/'' represents')
            fprintf('%s\n', '                                     the root of your app, while ''/app'' represents a directory')
            fprintf('%s\n', '                                     called ''app''.  Default: ..')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --token -t                     : A user''s github repository token. This is used to setup the')
            fprintf('%s\n', '                                     Github Actions workflow file and API secrets. If you need to')
            fprintf('%s\n', '                                     create a Github Personal Access Token, please follow the steps')
            fprintf('%s\n', '                                     found at the following link:')
            fprintf('%s\n', '    https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create static app in a subscription.')
            fprintf('%s\n', '        az staticwebapp create -n MyStaticAppName -g MyExistingRg -s https://github.com/JohnDoe/my-')
            fprintf('%s\n', '        first-static-web-app -l WestUs2 -b master')
            fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
