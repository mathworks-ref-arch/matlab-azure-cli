classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az acr agentpool create : Create an agent pool for an Azure Container Registry.
            % Command group 'acr agentpool' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az acr agentpool create ';
        end
        function this = name(this, varargin)
            % The name of the agent pool.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = count(this, varargin)
            % The count of the agent pool.  Default: 1.
            this.Options = [this.Options, '--count', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the Agent Pool to complete action and return immediately after queuing the request.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet_id(this, varargin)
            % The Virtual Network Subnet Resource Id of the agent machine.
            this.Options = [this.Options, '--subnet-id', varargin{:}];
        end

        function this = tier(this, varargin)
            % Sets the VM your agent pool will run on. Valid values are: S1(2 vCPUs, 3 MiB RAM), S2(4 vCPUs, 8 MiB RAM) or S3(8 vCPUs, 16 MiB RAM). Default: S1.
            this.Options = [this.Options, '--tier', varargin{:}];
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
            fprintf('%s\n', '    az acr agentpool create : Create an agent pool for an Azure Container Registry.')
            fprintf('%s\n', '        Command group ''acr agentpool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : The name of the agent pool.')
            fprintf('%s\n', '    --registry -r [Required] : The name of the container registry. You can configure the default')
            fprintf('%s\n', '                               registry name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --count -c               : The count of the agent pool.  Default: 1.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the Agent Pool to complete action and return')
            fprintf('%s\n', '                               immediately after queuing the request.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet-id              : The Virtual Network Subnet Resource Id of the agent machine.')
            fprintf('%s\n', '    --tier                   : Sets the VM your agent pool will run on. Valid values are: S1(2')
            fprintf('%s\n', '                               vCPUs, 3 MiB RAM), S2(4 vCPUs, 8 MiB RAM) or S3(8 vCPUs, 16 MiB RAM).')
            fprintf('%s\n', '                               Default: S1.')
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
            fprintf('%s\n', '    Create the agent pool ''MyAgentName'' associated with the registry ''MyRegistry''.')
            fprintf('%s\n', '        az acr agentpool create -n MyAgentName -r MyRegistry')
            fprintf('%s\n', '    Create the agent pool ''MyAgentName'' with 2 agent count.')
            fprintf('%s\n', '        az acr agentpool create -n MyAgentName -r MyRegistry --count 2')
            fprintf('%s\n', '    Create the agent pool ''MyAgentName'' associated with the registry ''MyRegistry'' in VNET subnet.')
            fprintf('%s\n', '        az acr agentpool create -n MyAgentName -r MyRegistry --subnet-id /subscriptions/<Subscriptio')
            fprintf('%s\n', '        nId>/resourceGroups/<ResourceGroupName>/providers/Microsoft.ClassicNetwork/virtualNetworks/<')
            fprintf('%s\n', '        myNetwork>/subnets/<subNet>')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr agentpool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
