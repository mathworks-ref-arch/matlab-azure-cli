classdef assign < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = assign()
            % az appconfig identity assign : Update managed identities for an App Configuration.
            % Command group 'appconfig identity' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appconfig identity assign ';
        end
        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = identities(this, varargin)
            % Accept system or user assigned identities separated by spaces. Use '[system]' to refer system assigned identity or a resource id to refer user assigned identity. Use system assigned identity if not specified.
            this.Options = [this.Options, '--identities', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az appconfig identity assign : Update managed identities for an App Configuration.')
            fprintf('%s\n', '        Command group ''appconfig identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the App Configuration. You can configure the default name using')
            fprintf('%s\n', '                           `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --identities         : Accept system or user assigned identities separated by spaces. Use')
            fprintf('%s\n', '                           ''[system]'' to refer system assigned identity or a resource id to refer')
            fprintf('%s\n', '                           user assigned identity. Use system assigned identity if not specified.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable the system-assigned identity for an existing App Configuration')
            fprintf('%s\n', '        az appconfig identity assign -g MyResourceGroup -n MyAppConfiguration')
            fprintf('%s\n', '    Assign a user-assigned managed identity for an existing App Configuration')
            fprintf('%s\n', '        az appconfig identity assign -g MyResourceGroup -n MyAppConfiguration --identities')
            fprintf('%s\n', '        "/subscriptions/<SUBSCRIPTON ID>/resourcegroups/<RESOURCEGROUP>/providers/Microsoft.ManagedI')
            fprintf('%s\n', '        dentity/userAssignedIdentities/myUserAssignedIdentity"')
            fprintf('%s\n', '    Assign both system-assigned and user assigned identities for an existing App Configuration')
            fprintf('%s\n', '        az appconfig identity assign -g MyResourceGroup -n MyAppConfiguration --identities [system]')
            fprintf('%s\n', '        "/subscriptions/<SUBSCRIPTON ID>/resourcegroups/<RESOURCEGROUP>/providers/Microsoft.ManagedI')
            fprintf('%s\n', '        dentity/userAssignedIdentities/myUserAssignedIdentity"')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig identity assign"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class assign 
