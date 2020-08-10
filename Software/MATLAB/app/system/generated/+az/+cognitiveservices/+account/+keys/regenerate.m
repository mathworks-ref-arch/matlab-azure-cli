classdef regenerate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = regenerate()
            % az cognitiveservices account keys regenerate : Manage Azure Cognitive Services accounts.
            % This article lists the Azure CLI commands for Azure Cognitive Services account and
            % subscription management only. Refer to the documentation at
            % https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to
            % use the APIs and supported SDKs.
            this.BaseCmd = 'az cognitiveservices account keys regenerate ';
        end
        function this = key_name(this, varargin)
            % Key name to generate.  Allowed values: key1, key2.
            this.Options = [this.Options, '--key-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Cognitive service account name.
            this.Options = [this.Options, '--name', varargin{:}];
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
            fprintf('%s\n', '    az cognitiveservices account keys regenerate : Manage Azure Cognitive Services accounts.')
            fprintf('%s\n', '        This article lists the Azure CLI commands for Azure Cognitive Services account and')
            fprintf('%s\n', '        subscription management only. Refer to the documentation at')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to')
            fprintf('%s\n', '        use the APIs and supported SDKs.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key-name          [Required] : Key name to generate.  Allowed values: key1, key2.')
            fprintf('%s\n', '    --name -n           [Required] : Cognitive service account name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
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
            fprintf('%s\n', '    Get new keys for resource.')
            fprintf('%s\n', '        az cognitiveservices account keys regenerate --name myresource -g cognitive-services-')
            fprintf('%s\n', '        resource-group --key-name key1')
            fprintf('%s\n', 'For more specific examples, use: az find "az cognitiveservices account keys regenerate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class regenerate 
