classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az acr webhook update : Update a webhook.
            this.BaseCmd = 'az acr webhook update ';
        end
        function this = name(this, varargin)
            % The name of the webhook.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = actions(this, varargin)
            % Space-separated list of actions that trigger the webhook to post notifications.  Allowed values: chart_delete, chart_push, delete, push, quarantine.
            this.Options = [this.Options, '--actions', varargin{:}];
        end

        function this = headers(this, varargin)
            % Space-separated custom headers in 'key[=value]' format that will be added to the webhook notifications. Use '' to clear existing headers.
            this.Options = [this.Options, '--headers', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope(this, varargin)
            % The scope of repositories where the event can be triggered. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means events for all repositories.
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = status(this, varargin)
            % Indicates whether the webhook is enabled.  Allowed values: disabled, enabled.
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = uri(this, varargin)
            % The service URI for the webhook to post notifications.
            this.Options = [this.Options, '--uri', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az acr webhook update : Update a webhook.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : The name of the webhook.')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --actions                : Space-separated list of actions that trigger the webhook to post')
            fprintf('%s\n', '                               notifications.  Allowed values: chart_delete, chart_push, delete,')
            fprintf('%s\n', '                               push, quarantine.')
            fprintf('%s\n', '    --headers                : Space-separated custom headers in ''key[=value]'' format that will be')
            fprintf('%s\n', '                               added to the webhook notifications. Use '''' to clear existing headers.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --scope                  : The scope of repositories where the event can be triggered. For')
            fprintf('%s\n', '                               example, ''foo:*'' means events for all tags under repository ''foo''.')
            fprintf('%s\n', '                               ''foo:bar'' means events for ''foo:bar'' only. ''foo'' is equivalent to')
            fprintf('%s\n', '                               ''foo:latest''. Empty means events for all repositories.')
            fprintf('%s\n', '    --status                 : Indicates whether the webhook is enabled.  Allowed values: disabled,')
            fprintf('%s\n', '                               enabled.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', '    --uri                    : The service URI for the webhook to post notifications.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                    : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                               pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                               JSON string>.')
            fprintf('%s\n', '    --force-string           : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                               attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                 : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                               property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                    : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                               Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update headers for a webhook.')
            fprintf('%s\n', '        az acr webhook update -n MyWebhook -r MyRegistry --headers "Authorization=Basic 000000"')
            fprintf('%s\n', '    Update the service URI and actions for a webhook.')
            fprintf('%s\n', '        az acr webhook update -n MyWebhook -r MyRegistry --uri http://myservice.com --actions push')
            fprintf('%s\n', '        delete')
            fprintf('%s\n', '    Disable a webhook.')
            fprintf('%s\n', '        az acr webhook update -n MyWebhook -r MyRegistry --status disabled')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr webhook update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
