classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az bot show : Get an existing bot.
            % Get information about an existing bot. To get the information needed to connect to the bot,
            % use the --msbot flag with the command.
            this.BaseCmd = 'az bot show ';
        end
        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = msbot(this, varargin)
            % Show the output as JSON compatible with a .bot file.  Allowed values: false, true.
            this.Options = [this.Options, '--msbot', varargin{:}];
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
            fprintf('%s\n', '    az bot show : Get an existing bot.')
            fprintf('%s\n', '        Get information about an existing bot. To get the information needed to connect to the bot,')
            fprintf('%s\n', '        use the --msbot flag with the command.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --msbot                        : Show the output as JSON compatible with a .bot file.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
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
            fprintf('%s\n', '    Get the information needed to connect to an existing bot on Azure')
            fprintf('%s\n', '        az bot show -n botName -g MyResourceGroup --msbot')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 