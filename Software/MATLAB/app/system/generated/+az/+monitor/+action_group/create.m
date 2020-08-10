classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor action-group create : Create a new action group.
            this.BaseCmd = 'az monitor action-group create ';
        end
        function this = name(this, varargin)
            % The name of the action group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = short_name(this, varargin)
            % The short name of the action group.
            this.Options = [this.Options, '--short-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Actions Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = action(this, varargin)
            % Add receivers to the action group during the creation. Usage:   --action TYPE NAME [ARG ...] Email: Format:     --action email NAME EMAIL_ADDRESS [usecommonalertschema] Example:    --action email bob bob@contoso.com SMS: Format:     --action sms NAME COUNTRY_CODE PHONE_NUMBER Example:    --action sms charli 1 5551234567 Webhook: Format:     --action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI] [usecommonalertschema] Example:    --action webhook alert_hook https://www.contoso.com/alert useaadauth testobj http://identifier usecommonalertschema Arm Role: Format:     --action armrole NAME ROLE_ID [usecommonalertschema] Example:    --action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635 Azure App Push: Format:     --action azureapppush NAME EMAIL_ADDRESS Example:    --action azureapppush test_apppush bob@contoso.com ITSM: Format:     --action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION Example:    --action itsm test_itsm test_workspace test_conn ticket_blob useast Automation runbook: Format:     --action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema] Example:    --action automationrunbook test_runbook test_acc test_book test_webhook test_rsrc http://example.com isglobalrunbook usecommonalertschema Voice: Format:     --action voice NAME COUNTRY_CODE PHONE_NUMBER Example:    --action voice charli 1 4441234567 Logic App: Format:     --action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema] Example:    --action logicapp test_logicapp test_rsrc http://callback Azure Function: Format:     --action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME HTTP_TRIGGER_URL [usecommonalertschema] Example:    --action azurefunction test_function test_rsrc test_func http://trigger usecommonalertschema Multiple actions can be specified by using more than one `--add-action` argument. 'useaadauth', 'isglobalrunbook' and 'usecommonalertschema' are optional arguements that only need to be passed to set the respective parameter to True. If the 'useaadauth' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are required as well.
            this.Options = [this.Options, '--action', varargin{:}];
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
            fprintf('%s\n', '    az monitor action-group create : Create a new action group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the action group.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --short-name                   : The short name of the action group.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Actions Arguments')
            fprintf('%s\n', '    --action -a                    : Add receivers to the action group during the creation.')
            fprintf('%s\n', '        Usage:   --action TYPE NAME [ARG ...]')
            fprintf('%s\n', '        Email:')
            fprintf('%s\n', '            Format:     --action email NAME EMAIL_ADDRESS [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action email bob bob@contoso.com')
            fprintf('%s\n', '        SMS:')
            fprintf('%s\n', '            Format:     --action sms NAME COUNTRY_CODE PHONE_NUMBER')
            fprintf('%s\n', '            Example:    --action sms charli 1 5551234567')
            fprintf('%s\n', '        Webhook:')
            fprintf('%s\n', '            Format:     --action webhook NAME URI [useaadauth OBJECT_ID IDENTIFIER URI]')
            fprintf('%s\n', '        [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action webhook alert_hook https://www.contoso.com/alert useaadauth testobj')
            fprintf('%s\n', '        http://identifier usecommonalertschema')
            fprintf('%s\n', '        Arm Role:')
            fprintf('%s\n', '            Format:     --action armrole NAME ROLE_ID [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action armole owner_role 8e3af657-a8ff-443c-a75c-2fe8c4bcb635')
            fprintf('%s\n', '        Azure App Push:')
            fprintf('%s\n', '            Format:     --action azureapppush NAME EMAIL_ADDRESS')
            fprintf('%s\n', '            Example:    --action azureapppush test_apppush bob@contoso.com')
            fprintf('%s\n', '        ITSM:')
            fprintf('%s\n', '            Format:     --action itsm NAME WORKSPACE_ID CONNECTION_ID TICKET_CONFIGURATION REGION')
            fprintf('%s\n', '            Example:    --action itsm test_itsm test_workspace test_conn ticket_blob useast')
            fprintf('%s\n', '        Automation runbook:')
            fprintf('%s\n', '            Format:     --action automationrunbook NAME AUTOMATION_ACCOUNT_ID RUNBOOK_NAME')
            fprintf('%s\n', '        WEBHOOK_RESOURCE_ID SERVICE_URI [isglobalrunbook] [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action automationrunbook test_runbook test_acc test_book test_webhook')
            fprintf('%s\n', '        test_rsrc http://example.com isglobalrunbook usecommonalertschema')
            fprintf('%s\n', '        Voice:')
            fprintf('%s\n', '            Format:     --action voice NAME COUNTRY_CODE PHONE_NUMBER')
            fprintf('%s\n', '            Example:    --action voice charli 1 4441234567')
            fprintf('%s\n', '        Logic App:')
            fprintf('%s\n', '            Format:     --action logicapp NAME RESOURCE_ID CALLBACK_URL [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action logicapp test_logicapp test_rsrc http://callback')
            fprintf('%s\n', '        Azure Function:')
            fprintf('%s\n', '            Format:     --action azurefunction NAME FUNCTION_APP_RESOURCE_ID FUNCTION_NAME')
            fprintf('%s\n', '        HTTP_TRIGGER_URL [usecommonalertschema]')
            fprintf('%s\n', '            Example:    --action azurefunction test_function test_rsrc test_func http://trigger')
            fprintf('%s\n', '        usecommonalertschema')
            fprintf('%s\n', '        Multiple actions can be specified by using more than one `--add-action` argument.')
            fprintf('%s\n', '        ''useaadauth'', ''isglobalrunbook'' and ''usecommonalertschema'' are optional arguements that only')
            fprintf('%s\n', '        need to be passed to set the respective parameter to True.')
            fprintf('%s\n', '        If the ''useaadauth'' argument is passed, then the OBJECT_ID and IDENTIFIER_URI values are')
            fprintf('%s\n', '        required as well.')
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
            fprintf('%s\n', '    Create a new action group (autogenerated)')
            fprintf('%s\n', '        az monitor action-group create --action webhook https://alerts.contoso.com apiKey={APIKey}')
            fprintf('%s\n', '        type=HighCPU --name MyActionGroup --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor action-group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
