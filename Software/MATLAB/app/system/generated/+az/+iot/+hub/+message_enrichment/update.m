classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az iot hub message-enrichment update : Update a message enrichment in your IoT hub (by key).
            % Update a message enrichment in your IoT hub (by key).
            this.BaseCmd = 'az iot hub message-enrichment update ';
        end
        function this = endpoints(this, varargin)
            % Endpoint(s) to apply enrichments to. Use a space-separated list for multiple endpoints.
            this.Options = [this.Options, '--endpoints', varargin{:}];
        end

        function this = key(this, varargin)
            % The enrichment's key.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = value(this, varargin)
            % The enrichment's value.
            this.Options = [this.Options, '--value', varargin{:}];
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
            % IoT Hub name.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az iot hub message-enrichment update : Update a message enrichment in your IoT hub (by key).')
            fprintf('%s\n', '        Update a message enrichment in your IoT hub (by key).')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --endpoints -e [Required] : Endpoint(s) to apply enrichments to. Use a space-separated list for')
            fprintf('%s\n', '                                multiple endpoints.')
            fprintf('%s\n', '    --key -k       [Required] : The enrichment''s key.')
            fprintf('%s\n', '    --value -v     [Required] : The enrichment''s value.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                 : IoT Hub name.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a message enrichment in your IoT hub to apply to a new set of endpoints')
            fprintf('%s\n', '        az iot hub message-enrichment update --key {key} --value {value} --endpoints NewEndpoint1')
            fprintf('%s\n', '        NewEndpoint2 -n {iothub_name}')
            fprintf('%s\n', 'For more specific examples, use: az find "az iot hub message-enrichment update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
