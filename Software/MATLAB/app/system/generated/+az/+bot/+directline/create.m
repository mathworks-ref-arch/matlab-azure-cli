classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az bot directline create : Create the DirectLine Channel on a bot with only v3 protocol enabled.
            % Command group 'bot directline' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az bot directline create ';
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

        function this = disablev1(this, varargin)
            % If true, v1 protocol will be disabled on the channel.  Allowed values: false, true.
            this.Options = [this.Options, '--disablev1', varargin{:}];
        end

        function this = disablev3(this, varargin)
            % If true, v3 protocol will be disabled on the channel.  Allowed values: false, true.
            this.Options = [this.Options, '--disablev3', varargin{:}];
        end

        function this = enable_enhanced_auth(this, varargin)
            % If true, enables enhanced authentication features. Must be true for --trusted-origins parameters to work.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-enhanced-auth', varargin{:}];
        end

        function this = site_name(this, varargin)
            % Name of the Directline channel site.  Default: Default Site.
            this.Options = [this.Options, '--site-name', varargin{:}];
        end

        function this = trusted_origins(this, varargin)
            % Space separated Trusted Origins URLs (must use HTTPS) e.g. --trusted-origins https://mybotsite1.azurewebsites.net https://mybotsite2.azurewebsites.net.
            this.Options = [this.Options, '--trusted-origins', varargin{:}];
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
            fprintf('%s\n', '    az bot directline create : Create the DirectLine Channel on a bot with only v3 protocol enabled.')
            fprintf('%s\n', '        Command group ''bot directline'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --add-disabled                 : Add the channel in a disabled state.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --disablev1                    : If true, v1 protocol will be disabled on the channel.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --disablev3                    : If true, v3 protocol will be disabled on the channel.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --enable-enhanced-auth         : If true, enables enhanced authentication features. Must be true')
            fprintf('%s\n', '                                     for --trusted-origins parameters to work.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --site-name -s                 : Name of the Directline channel site.  Default: Default Site.')
            fprintf('%s\n', '    --trusted-origins              : Space separated Trusted Origins URLs (must use HTTPS) e.g.')
            fprintf('%s\n', '                                     --trusted-origins https://mybotsite1.azurewebsites.net')
            fprintf('%s\n', '                                     https://mybotsite2.azurewebsites.net.')
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
            fprintf('%s\n', '    Create the DirectLine Channel for a bot.')
            fprintf('%s\n', '        az bot directline create -n botName -g MyResourceGroup --disablev1')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot directline create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
