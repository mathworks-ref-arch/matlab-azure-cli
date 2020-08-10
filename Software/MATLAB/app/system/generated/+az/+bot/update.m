classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az bot update : Update an existing bot.
            this.BaseCmd = 'az bot update ';
        end
        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = description(this, varargin)
            % The bot's new description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % The bot's new display name.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = endpoint(this, varargin)
            % The new endpoint of the bot. Must start with "https://".
            this.Options = [this.Options, '--endpoint', varargin{:}];
        end

        function this = icon_url(this, varargin)
            % Icon URL for bot avatar. Accepts PNG files with file size limit of 30KB.
            this.Options = [this.Options, '--icon-url', varargin{:}];
        end

        function this = sku(this, varargin)
            % The Sku of the bot.  Allowed values: F0, S1.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Bot Analytics/Application Insights Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = ai_api_key(this, varargin)
            % Azure Application Insights API Key used to read bot analytics data. Provide a key if you want to view analytics about your bot in the Analytics blade.
            this.Options = [this.Options, '--ai-api-key', varargin{:}];
        end

        function this = ai_app_id(this, varargin)
            % Azure Application Insights Application ID used to read bot analytics data. Provide an Id if you want to view analytics about your bot in the Analytics blade.
            this.Options = [this.Options, '--ai-app-id', varargin{:}];
        end

        function this = ai_key(this, varargin)
            % Azure Application Insights Key used to write bot analytics data. Provide a key if you want to receive bot analytics.
            this.Options = [this.Options, '--ai-key', varargin{:}];
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
            fprintf('%s\n', '    az bot update : Update an existing bot.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                [Required] : The resource name of the bot. Bot name must be between 4')
            fprintf('%s\n', '                                          and 42 characters in length. Bot name can only have the')
            fprintf('%s\n', '                                          following characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --description                       : The bot''s new description.')
            fprintf('%s\n', '    --display-name -d                   : The bot''s new display name.')
            fprintf('%s\n', '    --endpoint -e                       : The new endpoint of the bot. Must start with "https://".')
            fprintf('%s\n', '    --icon-url                          : Icon URL for bot avatar. Accepts PNG files with file size')
            fprintf('%s\n', '                                          limit of 30KB.')
            fprintf('%s\n', '    --sku                               : The Sku of the bot.  Allowed values: F0, S1.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', 'Bot Analytics/Application Insights Arguments')
            fprintf('%s\n', '    --ai-api-key --app-insights-api-key : Azure Application Insights API Key used to read bot')
            fprintf('%s\n', '                                          analytics data. Provide a key if you want to view')
            fprintf('%s\n', '                                          analytics about your bot in the Analytics blade.')
            fprintf('%s\n', '    --ai-app-id --app-insights-app-id   : Azure Application Insights Application ID used to read bot')
            fprintf('%s\n', '                                          analytics data. Provide an Id if you want to view')
            fprintf('%s\n', '                                          analytics about your bot in the Analytics blade.')
            fprintf('%s\n', '    --ai-key --app-insights-key         : Azure Application Insights Key used to write bot analytics')
            fprintf('%s\n', '                                          data. Provide a key if you want to receive bot analytics.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update description on a bot')
            fprintf('%s\n', '        az bot update -n botName -g MyResourceGroup --endpoint "https://bing.com/api/messages"')
            fprintf('%s\n', '        --display-name "Hello World"')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
