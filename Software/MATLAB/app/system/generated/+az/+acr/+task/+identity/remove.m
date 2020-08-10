classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az acr task identity remove : Remove managed identities for a task.
            this.BaseCmd = 'az acr task identity remove ';
        end
        function this = name(this, varargin)
            % The name of the task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = identities(this, varargin)
            % Assigns managed identities to the task. Use '[system]' to refer to the system-assigned identity or a resource ID to refer to a user- assigned identity.
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
            fprintf('%s\n', '    az acr task identity remove : Remove managed identities for a task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : The name of the task.')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --identities             : Assigns managed identities to the task. Use ''[system]'' to refer to')
            fprintf('%s\n', '                               the system-assigned identity or a resource ID to refer to a user-')
            fprintf('%s\n', '                               assigned identity.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Remove the system-assigned identity from a task.')
            fprintf('%s\n', '        az acr task identity remove -n MyTask -r MyRegistry')
            fprintf('%s\n', '    Remove a user-assigned identity from a task.')
            fprintf('%s\n', '        az acr task identity remove -n MyTask -r MyRegistry \')
            fprintf('%s\n', '            --identities "/subscriptions/<SUBSCRIPTON ID>/resourcegroups/<RESOURCE')
            fprintf('%s\n', '        GROUP>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myUserAssignedIdentitiy"')
            fprintf('%s\n', '    Remove all managed identities from a task.')
            fprintf('%s\n', '        az acr task identity remove -n MyTask -r MyRegistry --identities [all]')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr task identity remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
