classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az maps account create : Create a maps account.
            this.BaseCmd = 'az maps account create ';
        end
        function this = name(this, varargin)
            % The name of the maps account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Resource group name.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = accept_tos(this, varargin)
            % Accept the Terms of Service, and do not prompt for confirmation. By creating an Azure Maps account, you agree that you have read and agree to the License (https://azure.microsoft.com/support/legal/) and Privacy Statement (https://privacy.microsoft.com/privacystatement).
            this.Options = [this.Options, '--accept-tos', varargin{:}];
        end

        function this = sku(this, varargin)
            % The name of the SKU.  Allowed values: S0, S1.  Default: S0.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            fprintf('%s\n', '    az maps account create : Create a maps account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the maps account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Resource group name.')
            fprintf('%s\n', '    --accept-tos                   : Accept the Terms of Service, and do not prompt for')
            fprintf('%s\n', '                                     confirmation.')
            fprintf('%s\n', '        By creating an Azure Maps account, you agree that you have read and agree to the')
            fprintf('%s\n', '        License (https://azure.microsoft.com/support/legal/) and')
            fprintf('%s\n', '        Privacy Statement (https://privacy.microsoft.com/privacystatement).')
            fprintf('%s\n', '    --sku -s                       : The name of the SKU.  Allowed values: S0, S1.  Default: S0.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create a maps account. (autogenerated)')
            fprintf('%s\n', '        az maps account create --name MyMapsAccount --resource-group MyResourceGroup --sku S0')
            fprintf('%s\n', '        --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az maps account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
