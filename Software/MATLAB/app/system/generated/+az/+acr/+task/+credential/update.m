classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az acr task credential update : Update the registry login credential for a task.
            this.BaseCmd = 'az acr task credential update ';
        end
        function this = login_server(this, varargin)
            % The login server of the custom registry. For instance, 'myregistry.azurecr.io'.
            this.Options = [this.Options, '--login-server', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the task.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = password(this, varargin)
            % The password to login to the custom registry. This can be plain text or a key vault secret URI.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = use_identity(this, varargin)
            % The task managed identity used for the credential. Use '[system]' to refer to the system-assigned identity or a client id to refer to a user-assigned identity. Please see https://aka.ms/acr/tasks/cross- registry-authentication for more information.
            this.Options = [this.Options, '--use-identity', varargin{:}];
        end

        function this = username(this, varargin)
            % The username to login to the custom registry. This can be plain text or a key vault secret URI.
            this.Options = [this.Options, '--username', varargin{:}];
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
            fprintf('%s\n', '    az acr task credential update : Update the registry login credential for a task.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --login-server [Required] : The login server of the custom registry. For instance,')
            fprintf('%s\n', '                                ''myregistry.azurecr.io''.')
            fprintf('%s\n', '    --name -n      [Required] : The name of the task.')
            fprintf('%s\n', '    --registry -r  [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                                registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --password -p             : The password to login to the custom registry. This can be plain text')
            fprintf('%s\n', '                                or a key vault secret URI.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --use-identity            : The task managed identity used for the credential. Use ''[system]'' to')
            fprintf('%s\n', '                                refer to the system-assigned identity or a client id to refer to a')
            fprintf('%s\n', '                                user-assigned identity. Please see https://aka.ms/acr/tasks/cross-')
            fprintf('%s\n', '                                registry-authentication for more information.')
            fprintf('%s\n', '    --username -u             : The username to login to the custom registry. This can be plain text')
            fprintf('%s\n', '                                or a key vault secret URI.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the credential for a task')
            fprintf('%s\n', '        az acr task credential update -n taskname -r registryname --login-server')
            fprintf('%s\n', '        myregistry.docker.io \')
            fprintf('%s\n', '            -u myusername2 -p mysecret')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr task credential update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
