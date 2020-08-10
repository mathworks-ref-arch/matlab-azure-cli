classdef prepare_deploy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = prepare_deploy()
            % az bot prepare-deploy : Add scripts/config files for publishing with `az webapp deployment`.
            % Add scripts or configuration files to the root of your local source code directory to be
            % able to publish using `az webapp deployment`. When your code is deployed to your App
            % Service, the generated scripts or configuration files should be appear in
            % D:\home\site\wwwroot on App Service's Kudu web page.
            this.BaseCmd = 'az bot prepare-deploy ';
        end
        function this = lang(this, varargin)
            % The language or runtime of the bot.  Allowed values: Csharp, Javascript, Typescript.
            this.Options = [this.Options, '--lang', varargin{:}];
        end

        function this = code_dir(this, varargin)
            % The directory to place the generated deployment files in. Defaults to the current directory the command is called from.
            this.Options = [this.Options, '--code-dir', varargin{:}];
        end

        function this = proj_file_path(this, varargin)
            % The path to the .csproj file relative to --code-dir.
            this.Options = [this.Options, '--proj-file-path', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az bot prepare-deploy : Add scripts/config files for publishing with `az webapp deployment`.')
            fprintf('%s\n', '        Add scripts or configuration files to the root of your local source code directory to be')
            fprintf('%s\n', '        able to publish using `az webapp deployment`. When your code is deployed to your App')
            fprintf('%s\n', '        Service, the generated scripts or configuration files should be appear in')
            fprintf('%s\n', '        D:\home\site\wwwroot on App Service''s Kudu web page.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lang  [Required] : The language or runtime of the bot.  Allowed values: Csharp, Javascript,')
            fprintf('%s\n', '                         Typescript.')
            fprintf('%s\n', '    --code-dir         : The directory to place the generated deployment files in. Defaults to the')
            fprintf('%s\n', '                         current directory the command is called from.')
            fprintf('%s\n', '    --proj-file-path   : The path to the .csproj file relative to --code-dir.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Prepare to use `az webapp` to deploy a Javascript bot by fetching a Node.js IIS web.config file.')
            fprintf('%s\n', '        az bot prepare-deploy --lang Javascript --code-dir "MyBotCode"')
            fprintf('%s\n', '    Prepare to use `az webapp` to deploy a Csharp bot by creating a .deployment file.')
            fprintf('%s\n', '        az bot prepare-deploy --lang Csharp --code-dir "." --proj-file-path "MyBot.csproj"')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot prepare-deploy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class prepare_deploy 
