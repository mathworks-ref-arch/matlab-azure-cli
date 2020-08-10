classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az eventgrid partner namespace event-channel show : Get the details of an event channel under a
            % partner namespace.
            % Command group 'eventgrid partner namespace event-channel' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az eventgrid partner namespace event-channel show ';
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
            % Name of the event channel.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_namespace_name(this, varargin)
            % Name of the partner namespace.
            this.Options = [this.Options, '--partner-namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az eventgrid partner namespace event-channel show : Get the details of an event channel under a')
            fprintf('%s\n', '    partner namespace.')
            fprintf('%s\n', '        Command group ''eventgrid partner namespace event-channel'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : Name of the event channel.')
            fprintf('%s\n', '    --partner-namespace-name : Name of the partner namespace.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
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
            fprintf('%s\n', '    Show the details of an event channel.')
            fprintf('%s\n', '        az eventgrid partner namespace event-channel show -g rg1 --partner-namespace-name')
            fprintf('%s\n', '        partnernamespace1 -n eventChannelName1')
            fprintf('%s\n', '    Show the details of an event-channel based on resource ID.')
            fprintf('%s\n', '        az eventgrid partner namespace event-channel show --ids /subscriptions/{SubID}/resourceGroup')
            fprintf('%s\n', '        s/{RG}/providers/Microsoft.EventGrid/partnenamespaces/partnernamespace1/eventChannels/eventC')
            fprintf('%s\n', '        hannelName1')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace event-channel show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
