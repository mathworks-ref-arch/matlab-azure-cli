classdef approve < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = approve()
            % az acr private-endpoint-connection approve : Approve a private endpoint connection request for a
            % container registry.
            % To create a private endpoint connection use "az network private-endpoint create". For more
            % information see https://aka.ms/acr/private-link.
            this.BaseCmd = 'az acr private-endpoint-connection approve ';
        end
        function this = name(this, varargin)
            % The name of the private endpoint connection.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry_name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry-name', varargin{:}];
        end

        function this = description(this, varargin)
            % Approval description. For example, the reason for approval.
            this.Options = [this.Options, '--description', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az acr private-endpoint-connection approve"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az acr private-endpoint-connection approve : Approve a private endpoint connection request for a')
            fprintf('%s\n', '    container registry.')
            fprintf('%s\n', '        To create a private endpoint connection use "az network private-endpoint create". For more')
            fprintf('%s\n', '        information see https://aka.ms/acr/private-link.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          [Required] : The name of the private endpoint connection.')
            fprintf('%s\n', '    --registry-name -r [Required] : The name of the container registry. You can configure the')
            fprintf('%s\n', '                                    default registry name using `az configure --defaults')
            fprintf('%s\n', '                                    acr=<registry name>`.')
            fprintf('%s\n', '    --description                 : Approval description. For example, the reason for approval.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr private-endpoint-connection approve"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class approve 
