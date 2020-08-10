classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az monitor action-group update : Update an action group.
            this.BaseCmd = 'az monitor action-group update ';
        end
        function this = short_name(this, varargin)
            % Update the group short name of the action group.
            this.Options = [this.Options, '--short-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Actions Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = add_action(this, varargin)
            % Add receivers to the action group. Usage:   --add-action TYPE NAME [ARG ...] Email: Format:     --add-action email NAME EMAIL_ADDRESS [usecommonalertschema] Example:    --add-action email bob bob@contoso.com SMS: Format:     --add-action sms NAME COUNTRY_CODE PHONE_NUMBER Example:    --add-action sms charli 1 5551234567 Webhook: Format:     --add-action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI] [usecommonalertschema] Example:    --add-action https://www.contoso.com/alert useaadauth testobj http://identifier usecommonalertschema Arm Role: Format:     --add-action armrole NAME ROLE_ID [usecommonalertschema] Example:    --add-action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Azure App Push: Format:     --add-action azureapppush NAME EMAIL_ADDRESS Example:    --add-action azureapppush test_apppush bob@contoso.com ITSM: Format:     --add-action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION Example:    --add-action itsm test_itsm test_workspace test_conn ticket_blob useast Automation runbook: Format:     --add-action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema] Example:    --add-action automationrunbook test_runbook test_acc test_book test_webhook test_rsrc http://example.com isglobalrunbook usecommonalertschema Voice: Format:     --add-action voice NAME COUNTRY_CODE PHONE_NUMBER Example:    --add-action voice charli 1 4441234567 Logic App: Format:     --add-action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema] Example:    --add-action logicapp test_logicapp test_rsrc http://callback Azure Function: Format:     --add-action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME HTTP_TRIGGER_URL [usecommonalertschema] Example:    --add-action azurefunction test_function test_rsrc test_func http://trigger usecommonalertschema Multiple actions can be specified by using more than one `--add-action` argument. 'useaadauth', 'isglobalrunbook' and 'usecommonalertschema' are optional arguements that only need to be passed to set the respective parameter to True. If the 'useaadauth' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are required as well.
            this.Options = [this.Options, '--add-action', varargin{:}];
        end

        function this = remove_action(this, varargin)
            % Remove receivers from the action group. Accept space-separated list of receiver names.
            this.Options = [this.Options, '--remove-action', varargin{:}];
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
            % The name of the action group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az monitor action-group update : Update an action group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --short-name        : Update the group short name of the action group.')
            fprintf('%s\n', '    --tags              : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                          existing tags.')
            fprintf('%s\n', 'Actions Arguments')
            fprintf('%s\n', '    --add-action -a     : Add receivers to the action group.')
            fprintf('%s\n', '        Usage:   --add-action TYPE NAME [ARG ...]')
            fprintf('%s\n', '        Email:')
            fprintf('%s\n', '            Format:     --add-action email NAME EMAIL_ADDRESS [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action email bob bob@contoso.com')
            fprintf('%s\n', '        SMS:')
            fprintf('%s\n', '            Format:     --add-action sms NAME COUNTRY_CODE PHONE_NUMBER')
            fprintf('%s\n', '            Example:    --add-action sms charli 1 5551234567')
            fprintf('%s\n', '        Webhook:')
            fprintf('%s\n', '            Format:     --add-action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI]')
            fprintf('%s\n', '        [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action https://www.contoso.com/alert useaadauth testobj')
            fprintf('%s\n', '        http://identifier usecommonalertschema')
            fprintf('%s\n', '        Arm Role:')
            fprintf('%s\n', '            Format:     --add-action armrole NAME ROLE_ID [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635')
            fprintf('%s\n', '        Azure App Push:')
            fprintf('%s\n', '            Format:     --add-action azureapppush NAME EMAIL_ADDRESS')
            fprintf('%s\n', '            Example:    --add-action azureapppush test_apppush bob@contoso.com')
            fprintf('%s\n', '        ITSM:')
            fprintf('%s\n', '            Format:     --add-action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION')
            fprintf('%s\n', '        REGION')
            fprintf('%s\n', '            Example:    --add-action itsm test_itsm test_workspace test_conn ticket_blob useast')
            fprintf('%s\n', '        Automation runbook:')
            fprintf('%s\n', '            Format:     --add-action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME')
            fprintf('%s\n', '        WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action automationrunbook test_runbook test_acc test_book test_webhook')
            fprintf('%s\n', '        test_rsrc http://example.com isglobalrunbook usecommonalertschema')
            fprintf('%s\n', '        Voice:')
            fprintf('%s\n', '            Format:     --add-action voice NAME COUNTRY_CODE PHONE_NUMBER')
            fprintf('%s\n', '            Example:    --add-action voice charli 1 4441234567')
            fprintf('%s\n', '        Logic App:')
            fprintf('%s\n', '            Format:     --add-action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action logicapp test_logicapp test_rsrc http://callback')
            fprintf('%s\n', '        Azure Function:')
            fprintf('%s\n', '            Format:     --add-action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME')
            fprintf('%s\n', '        HTTP_TRIGGER_URL [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --add-action azurefunction test_function test_rsrc test_func http://trigger')
            fprintf('%s\n', '        usecommonalertschema')
            fprintf('%s\n', '        Multiple actions can be specified by using more than one `--add-action` argument.')
            fprintf('%s\n', '        ''useaadauth'', ''isglobalrunbook'' and ''usecommonalertschema'' are optional arguements that only')
            fprintf('%s\n', '        need to be passed to set the respective parameter to True.')
            fprintf('%s\n', '        If the ''useaadauth'' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are')
            fprintf('%s\n', '        required as well.')
            fprintf('%s\n', '    --remove-action -r  : Remove receivers from the action group. Accept space-separated list of')
            fprintf('%s\n', '                          receiver names.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the action group.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an action group (autogenerated)')
            fprintf('%s\n', '        az monitor action-group update --name MyActionGroup --resource-group MyResourceGroup --set')
            fprintf('%s\n', '        retentionPolicy.days=365 --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor action-group update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
