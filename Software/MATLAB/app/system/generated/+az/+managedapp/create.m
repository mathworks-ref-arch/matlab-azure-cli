classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az managedapp create : Create a managed application.
            this.BaseCmd = 'az managedapp create ';
        end
        function this = kind(this, varargin)
            % The managed application kind. can be marketplace or servicecatalog.
            this.Options = [this.Options, '--kind', varargin{:}];
        end

        function this = managed_rg_id(this, varargin)
            % The resource group managed by the managed application.
            this.Options = [this.Options, '--managed-rg-id', varargin{:}];
        end

        function this = name(this, varargin)
            % The managed application name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group of the managed application.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % The managed application location.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = managedapp_definition_id(this, varargin)
            % The full qualified managed application definition id.
            this.Options = [this.Options, '--managedapp-definition-id', varargin{:}];
        end

        function this = parameters(this, varargin)
            % JSON formatted string or a path to a file with such content.
            this.Options = [this.Options, '--parameters', varargin{:}];
        end

        function this = plan_name(this, varargin)
            % The managed application package plan name.
            this.Options = [this.Options, '--plan-name', varargin{:}];
        end

        function this = plan_product(this, varargin)
            % The managed application package plan product.
            this.Options = [this.Options, '--plan-product', varargin{:}];
        end

        function this = plan_publisher(this, varargin)
            % The managed application package plan publisher.
            this.Options = [this.Options, '--plan-publisher', varargin{:}];
        end

        function this = plan_version(this, varargin)
            % The managed application package plan version.
            this.Options = [this.Options, '--plan-version', varargin{:}];
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
            fprintf('%s\n', '    az managedapp create : Create a managed application.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --kind              [Required] : The managed application kind. can be marketplace or')
            fprintf('%s\n', '                                     servicecatalog.')
            fprintf('%s\n', '    --managed-rg-id -m  [Required] : The resource group managed by the managed application.')
            fprintf('%s\n', '    --name -n           [Required] : The managed application name.')
            fprintf('%s\n', '    --resource-group -g [Required] : The resource group of the managed application.')
            fprintf('%s\n', '    --location -l                  : The managed application location.')
            fprintf('%s\n', '    --managedapp-definition-id -d  : The full qualified managed application definition id.')
            fprintf('%s\n', '    --parameters                   : JSON formatted string or a path to a file with such content.')
            fprintf('%s\n', '    --plan-name                    : The managed application package plan name.')
            fprintf('%s\n', '    --plan-product                 : The managed application package plan product.')
            fprintf('%s\n', '    --plan-publisher               : The managed application package plan publisher.')
            fprintf('%s\n', '    --plan-version                 : The managed application package plan version.')
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
            fprintf('%s\n', '    Create a managed application of kind ''ServiceCatalog''. This requires a valid managed application')
            fprintf('%s\n', '    definition ID.')
            fprintf('%s\n', '        az managedapp create -g MyResourceGroup -n MyManagedApp -l westcentralus --kind')
            fprintf('%s\n', '        ServiceCatalog \')
            fprintf('%s\n', '            -m "/subscriptions/{SubID}/resourceGroups/{ManagedResourceGroup}" \')
            fprintf('%s\n', '            -d "/subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/Microsoft.Solutions/')
            fprintf('%s\n', '        applianceDefinitions/{ApplianceDefinition}"')
            fprintf('%s\n', '    Create a managed application of kind ''MarketPlace''. This requires a valid plan, containing')
            fprintf('%s\n', '    details about existing marketplace package like plan name, version, publisher and product.')
            fprintf('%s\n', '        az managedapp create -g MyResourceGroup -n MyManagedApp -l westcentralus --kind MarketPlace')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            -m "/subscriptions/{SubID}/resourceGroups/{ManagedResourceGroup}" \')
            fprintf('%s\n', '            --plan-name ContosoAppliance --plan-version "1.0" --plan-product "contoso-appliance"')
            fprintf('%s\n', '        --plan-publisher Contoso')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedapp create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
