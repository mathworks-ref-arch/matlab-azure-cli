classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az postgres server replica create : Create a read replica for a server.
            this.BaseCmd = 'az postgres server replica create ';
        end
        function this = name(this, varargin)
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_server(this, varargin)
            % The name or resource ID of the master server to the create replica for.
            this.Options = [this.Options, '--source-server', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. If not provided, the create replica will be in the same location as the master server.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The name of the sku. Follows the convention {pricing tier}_{compute generation}_{vCores} in shorthand. Examples: B_Gen5_1, GP_Gen5_4, MO_Gen5_16.
            this.Options = [this.Options, '--sku-name', varargin{:}];
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
            fprintf('%s\n', '    az postgres server replica create : Create a read replica for a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                     letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                     characters and maximum 63 characters.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-server -s  [Required] : The name or resource ID of the master server to the create')
            fprintf('%s\n', '                                     replica for.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. If not')
            fprintf('%s\n', '                                     provided, the create replica will be in the same location as')
            fprintf('%s\n', '                                     the master server.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku-name                     : The name of the sku. Follows the convention {pricing')
            fprintf('%s\n', '                                     tier}_{compute generation}_{vCores} in shorthand. Examples:')
            fprintf('%s\n', '                                     B_Gen5_1, GP_Gen5_4, MO_Gen5_16.')
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
            fprintf('%s\n', '    Create a read replica ''testreplsvr'' for ''testsvr''.')
            fprintf('%s\n', '        az postgres server replica create -n testreplsvr -g testgroup -s testsvr')
            fprintf('%s\n', '    Create a read replica ''testreplsvr'' for ''testsvr2'', where ''testreplsvr'' is in a different')
            fprintf('%s\n', '    resource group.')
            fprintf('%s\n', '        az postgres server replica create -n testreplsvr -g testgroup \')
            fprintf('%s\n', '            -s "/subscriptions/${SubID}/resourceGroups/${ResourceGroup}/providers/Microsoft.DBforPos')
            fprintf('%s\n', '        tgreSQL/servers/testsvr2"')
            fprintf('%s\n', 'For more specific examples, use: az find "az postgres server replica create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
