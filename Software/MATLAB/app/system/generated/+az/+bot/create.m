classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az bot create : Create a new v4 SDK bot.
            % Create a new v4 SDK bot.
            this.BaseCmd = 'az bot create ';
        end
        function this = appid(this, varargin)
            % The Microsoft account ID (MSA ID) to be used with the bot.
            this.Options = [this.Options, '--appid', varargin{:}];
        end

        function this = kind(this, varargin)
            % The kind of the bot.  Allowed values: registration, webapp.
            this.Options = [this.Options, '--kind', varargin{:}];
        end

        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.  Default: Central US.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Registration Bot Specific Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = description(this, varargin)
            % The description of the bot.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % The display name of the bot. If not specified, defaults to the name of the bot.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = endpoint(this, varargin)
            % The messaging endpoint of the bot.
            this.Options = [this.Options, '--endpoint', varargin{:}];
        end

        function this = sku(this, varargin)
            % The Sku of the bot.  Allowed values: F0, S1.  Default: F0. V4 Bot Templates Arguments
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = echo(this, varargin)
            % Deploy an Echo Bot template to the newly created v4 Web App Bot.  Allowed values: false, true. Web App Bot Specific Arguments
            this.Options = [this.Options, '--echo', varargin{:}];
        end

        function this = lang(this, varargin)
            % The language to be used to create the bot.  Allowed values: Csharp, Javascript.
            this.Options = [this.Options, '--lang', varargin{:}];
        end

        function this = password(this, varargin)
            % The Microsoft account (MSA) password for the bot. Used to authorize messages being sent from the bot. Required when "-- kind" is "webapp".
            this.Options = [this.Options, '--password', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az bot create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az bot create : Create a new v4 SDK bot.')
            fprintf('%s\n', '        Create a new v4 SDK bot.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --appid             [Required] : The Microsoft account ID (MSA ID) to be used with the bot.')
            fprintf('%s\n', '    --kind -k           [Required] : The kind of the bot.  Allowed values: registration, webapp.')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.  Default: Central US.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Registration Bot Specific Arguments')
            fprintf('%s\n', '    --description -d               : The description of the bot.')
            fprintf('%s\n', '    --display-name                 : The display name of the bot. If not specified, defaults to the')
            fprintf('%s\n', '                                     name of the bot.')
            fprintf('%s\n', '    --endpoint -e                  : The messaging endpoint of the bot.')
            fprintf('%s\n', '    --sku                          : The Sku of the bot.  Allowed values: F0, S1.  Default: F0.')
            fprintf('%s\n', 'V4 Bot Templates Arguments')
            fprintf('%s\n', '    --echo                         : Deploy an Echo Bot template to the newly created v4 Web App')
            fprintf('%s\n', '                                     Bot.  Allowed values: false, true.')
            fprintf('%s\n', 'Web App Bot Specific Arguments')
            fprintf('%s\n', '    --lang                         : The language to be used to create the bot.  Allowed values:')
            fprintf('%s\n', '                                     Csharp, Javascript.')
            fprintf('%s\n', '    --password -p                  : The Microsoft account (MSA) password for the bot. Used to')
            fprintf('%s\n', '                                     authorize messages being sent from the bot. Required when "--')
            fprintf('%s\n', '                                     kind" is "webapp".')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az bot create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
