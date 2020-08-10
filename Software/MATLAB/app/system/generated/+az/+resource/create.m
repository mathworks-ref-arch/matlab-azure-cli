classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az resource create : Create a resource.
            this.BaseCmd = 'az resource create ';
        end
        function this = properties(this, varargin)
            % A JSON-formatted string containing resource properties.
            this.Options = [this.Options, '--properties', varargin{:}];
        end

        function this = id(this, varargin)
            % Resource ID.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = is_full_object(this, varargin)
            % Indicates that the properties object includes other options such as location, tags, sku, and/or plan.
            this.Options = [this.Options, '--is-full-object', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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

        function this = api_version(this, varargin)
            % The api version of the resource (omit for latest).
            this.Options = [this.Options, '--api-version', varargin{:}];
        end

        function this = name(this, varargin)
            % The resource name. (Ex: myC).
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Provider namespace (Ex: 'Microsoft.Provider').
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path (Ex: 'resA/myA/resB/myB').
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % The resource type (Ex: 'resC'). Can also accept namespace/type format (Ex: 'Microsoft.Provider/resC').
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az resource create : Create a resource.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --properties -p [Required] : A JSON-formatted string containing resource properties.')
            fprintf('%s\n', '    --id                       : Resource ID.')
            fprintf('%s\n', '    --is-full-object           : Indicates that the properties object includes other options such as')
            fprintf('%s\n', '                                 location, tags, sku, and/or plan.')
            fprintf('%s\n', '    --location -l              : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                 configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                 location=<location>`.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --api-version              : The api version of the resource (omit for latest).')
            fprintf('%s\n', '    --name -n                  : The resource name. (Ex: myC).')
            fprintf('%s\n', '    --namespace                : Provider namespace (Ex: ''Microsoft.Provider'').')
            fprintf('%s\n', '    --parent                   : The parent path (Ex: ''resA/myA/resB/myB'').')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type            : The resource type (Ex: ''resC''). Can also accept namespace/type')
            fprintf('%s\n', '                                 format (Ex: ''Microsoft.Provider/resC'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an API app by providing a full JSON configuration.')
            fprintf('%s\n', '        az resource create -g myRG -n myApiApp --resource-type Microsoft.web/sites \')
            fprintf('%s\n', '            --is-full-object --properties "{ \"kind\": \"api\", \"location\": \')
            fprintf('%s\n', '                \"West US\", \"properties\": { \"serverFarmId\": \')
            fprintf('%s\n', '                    \"/subscriptions/{SubID}/resourcegroups/{ResourceGroup} \')
            fprintf('%s\n', '                        /providers/Microsoft.Web/serverfarms/{ServicePlan}\" } }"')
            fprintf('%s\n', '    Create a resource by loading JSON configuration from a file.')
            fprintf('%s\n', '        az resource create -g myRG -n myApiApp --resource-type Microsoft.web/sites --is-full-object')
            fprintf('%s\n', '        --properties @jsonConfigFile')
            fprintf('%s\n', '    Create a web app with the minimum required configuration information.')
            fprintf('%s\n', '        az resource create -g myRG -n myWeb --resource-type Microsoft.web/sites \')
            fprintf('%s\n', '            --properties "{ \"serverFarmId\":\"/subscriptions/{SubID}/resourcegroups/ \')
            fprintf('%s\n', '                {ResourceGroup}/providers/Microsoft.Web/serverfarms/{ServicePlan}\" }"')
            fprintf('%s\n', 'For more specific examples, use: az find "az resource create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
