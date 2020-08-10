classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az acr replication create : Create a replicated region for an Azure Container Registry.
            this.BaseCmd = 'az acr replication create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = registry(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--registry', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the replication. Default to the location name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = region_endpoint_enabled(this, varargin)
            % Allow routing to this replication. Requests will not be routed to a disabled replication. Data syncing will continue regardless of the region endpoint status. Default: true.  Allowed values: false, true. Argument '--region-endpoint-enabled' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--region-endpoint-enabled', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az acr replication create : Create a replicated region for an Azure Container Registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l            [Required] : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                          can configure the default location using `az configure')
            fprintf('%s\n', '                                          --defaults location=<location>`.')
            fprintf('%s\n', '    --registry -r            [Required] : The name of the container registry. You can configure the')
            fprintf('%s\n', '                                          default registry name using `az configure --defaults')
            fprintf('%s\n', '                                          acr=<registry name>`.')
            fprintf('%s\n', '    --name -n                           : The name of the replication. Default to the location name.')
            fprintf('%s\n', '    --region-endpoint-enabled [Preview] : Allow routing to this replication. Requests will')
            fprintf('%s\n', '                                          not be routed to a disabled replication. Data syncing will')
            fprintf('%s\n', '                                          continue regardless of the region endpoint status.')
            fprintf('%s\n', '                                          Default: true.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--region-endpoint-enabled'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --resource-group -g                 : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a replicated region for an Azure Container Registry.')
            fprintf('%s\n', '        az acr replication create -r MyRegistry -l westus')
            fprintf('%s\n', '    Create a replicated region for an Azure Container Registry. (autogenerated)')
            fprintf('%s\n', '        az acr replication create --location westus --registry MyRegistry --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr replication create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
