classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az bot skype create : Create the Skype Channel on a bot.
            % Command group 'bot skype' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az bot skype create ';
        end
        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = add_disabled(this, varargin)
            % Add the channel in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--add-disabled', varargin{:}];
        end

        function this = calling_web_hook(this, varargin)
            % The calling web hook to use on Skype.
            this.Options = [this.Options, '--calling-web-hook', varargin{:}];
        end

        function this = enable_calling(this, varargin)
            % Enable calling on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-calling', varargin{:}];
        end

        function this = enable_groups(this, varargin)
            % Enable groups on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-groups', varargin{:}];
        end

        function this = enable_media_cards(this, varargin)
            % Enable media cards on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-media-cards', varargin{:}];
        end

        function this = enable_messaging(this, varargin)
            % Enable messaging on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-messaging', varargin{:}];
        end

        function this = enable_screen_sharing(this, varargin)
            % Enable screen sharing on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-screen-sharing', varargin{:}];
        end

        function this = enable_video(this, varargin)
            % Enable video on Skype.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-video', varargin{:}];
        end

        function this = groups_mode(this, varargin)
            % Select groups mode on Skype.
            this.Options = [this.Options, '--groups-mode', varargin{:}];
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
            fprintf('%s\n', '    az bot skype create : Create the Skype Channel on a bot.')
            fprintf('%s\n', '        Command group ''bot skype'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --add-disabled                 : Add the channel in a disabled state.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --calling-web-hook             : The calling web hook to use on Skype.')
            fprintf('%s\n', '    --enable-calling               : Enable calling on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-groups                : Enable groups on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-media-cards           : Enable media cards on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-messaging             : Enable messaging on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-screen-sharing        : Enable screen sharing on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-video                 : Enable video on Skype.  Allowed values: false, true.')
            fprintf('%s\n', '    --groups-mode                  : Select groups mode on Skype.')
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
            fprintf('%s\n', '    Create the Skype Channel for a bot with messaging and screen sharing enabled')
            fprintf('%s\n', '        az bot skype create -n botName -g MyResourceGroup --enable-messaging')
            fprintf('%s\n', '        --enable-screen-sharing')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot skype create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
