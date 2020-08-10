classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az bot sms create : Create the SMS Channel on a bot.
            % Command group 'bot sms' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az bot sms create ';
        end
        function this = account_sid(this, varargin)
            % The account SID for the Twilio account.
            this.Options = [this.Options, '--account-sid', varargin{:}];
        end

        function this = auth_token(this, varargin)
            % The token token for the Twilio account.
            this.Options = [this.Options, '--auth-token', varargin{:}];
        end

        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = phone(this, varargin)
            % The phone number for the Twilio account.
            this.Options = [this.Options, '--phone', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = add_disabled(this, varargin)
            % Add the channel in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--add-disabled', varargin{:}];
        end

        function this = is_validated(this, varargin)
            % Whether or not the Twilio account has been validated for use with the bot.  Allowed values: false, true.
            this.Options = [this.Options, '--is-validated', varargin{:}];
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
            fprintf('%s\n', '    az bot sms create : Create the SMS Channel on a bot.')
            fprintf('%s\n', '        Command group ''bot sms'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-sid       [Required] : The account SID for the Twilio account.')
            fprintf('%s\n', '    --auth-token        [Required] : The token token for the Twilio account.')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --phone             [Required] : The phone number for the Twilio account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --add-disabled                 : Add the channel in a disabled state.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --is-validated                 : Whether or not the Twilio account has been validated for use')
            fprintf('%s\n', '                                     with the bot.  Allowed values: false, true.')
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
            fprintf('%s\n', '    Create the SMS Channel for a bot.')
            fprintf('%s\n', '        az bot sms create -n botName -g MyResourceGroup --account-sid sid \')
            fprintf('%s\n', '        --auth-token token --is-validated --phone 1234567890')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot sms create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
