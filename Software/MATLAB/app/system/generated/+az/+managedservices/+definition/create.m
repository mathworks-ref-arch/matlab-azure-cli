classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az managedservices definition create : Creates a new registration definition.
            this.BaseCmd = 'az managedservices definition create ';
        end
        function this = name(this, varargin)
            % The name of the registration definition.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = principal_id(this, varargin)
            % The principal id.
            this.Options = [this.Options, '--principal-id', varargin{:}];
        end

        function this = role_definition_id(this, varargin)
            % The role definition id.
            this.Options = [this.Options, '--role-definition-id', varargin{:}];
        end

        function this = tenant_id(this, varargin)
            % The managed by tenant id.
            this.Options = [this.Options, '--tenant-id', varargin{:}];
        end

        function this = definition_id(this, varargin)
            % Can be used to override the generated registration definition id.
            this.Options = [this.Options, '--definition-id', varargin{:}];
        end

        function this = description(this, varargin)
            % The friendly description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = plan_name(this, varargin)
            % The plan name.
            this.Options = [this.Options, '--plan-name', varargin{:}];
        end

        function this = plan_product(this, varargin)
            % The plan product.
            this.Options = [this.Options, '--plan-product', varargin{:}];
        end

        function this = plan_publisher(this, varargin)
            % The plan publisher.
            this.Options = [this.Options, '--plan-publisher', varargin{:}];
        end

        function this = plan_version(this, varargin)
            % The plan version.
            this.Options = [this.Options, '--plan-version', varargin{:}];
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
            fprintf('%s\n', '    az managedservices definition create : Creates a new registration definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name               [Required] : The name of the registration definition.')
            fprintf('%s\n', '    --principal-id       [Required] : The principal id.')
            fprintf('%s\n', '    --role-definition-id [Required] : The role definition id.')
            fprintf('%s\n', '    --tenant-id          [Required] : The managed by tenant id.')
            fprintf('%s\n', '    --definition-id                 : Can be used to override the generated registration definition')
            fprintf('%s\n', '                                      id.')
            fprintf('%s\n', '    --description                   : The friendly description.')
            fprintf('%s\n', '    --plan-name                     : The plan name.')
            fprintf('%s\n', '    --plan-product                  : The plan product.')
            fprintf('%s\n', '    --plan-publisher                : The plan publisher.')
            fprintf('%s\n', '    --plan-version                  : The plan version.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Creates a registration definition under the default subscription scope with the required')
            fprintf('%s\n', '    parameters.')
            fprintf('%s\n', '        az managedservices definition create --name mydef --tenant-id')
            fprintf('%s\n', '        dab3375b-6197-4a15-a44b-16c41faa91d7 --principal-id b6f6c88a-5b7a-455e-ba40-ce146d4d3671')
            fprintf('%s\n', '        --role-definition-id ccdd72a7-3385-48ef-bd42-f606fba81ae7')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedservices definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
