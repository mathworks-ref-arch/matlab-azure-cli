classdef approve < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = approve()
            % az monitor private-link-scope private-endpoint-connection approve : Approve a private endpoint
            % connection of a private link scope resource.
            % Command group 'monitor private-link-scope private-endpoint-connection' is in preview.
            % It may be changed/removed in a future release.
            this.BaseCmd = 'az monitor private-link-scope private-endpoint-connection approve ';
        end
        function this = description(this, varargin)
            % Comments for approve operation.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = id(this, varargin)
            % The ID of the private endpoint connection associated with the private link scope. You can get it using `az monitor private-link-scope show`.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the private endpoint connection.  Values from: az monitor private- link-scope show.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group name of specified private link scope.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope_name(this, varargin)
            % Name of the Azure Monitor Private Link Scope.
            this.Options = [this.Options, '--scope-name', varargin{:}];
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
            fprintf('%s\n', '    az monitor private-link-scope private-endpoint-connection approve : Approve a private endpoint')
            fprintf('%s\n', '    connection of a private link scope resource.')
            fprintf('%s\n', '        Command group ''monitor private-link-scope private-endpoint-connection'' is in preview.')
            fprintf('%s\n', '        It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description       : Comments for approve operation.')
            fprintf('%s\n', '    --id                : The ID of the private endpoint connection associated with the private link')
            fprintf('%s\n', '                          scope. You can get it using `az monitor private-link-scope show`.')
            fprintf('%s\n', '    --name -n           : Name of the private endpoint connection.  Values from: az monitor private-')
            fprintf('%s\n', '                          link-scope show.')
            fprintf('%s\n', '    --resource-group -g : The resource group name of specified private link scope.')
            fprintf('%s\n', '    --scope-name        : Name of the Azure Monitor Private Link Scope.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Approve a private endpoint connection of a private link scope resource. (autogenerated)')
            fprintf('%s\n', '        az monitor private-link-scope private-endpoint-connection approve --name')
            fprintf('%s\n', '        MyPrivateEndpointConnection --resource-group MyResourceGroup --scope-name MyScope')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor private-link-scope private-endpoint-')
            fprintf('%s\n', 'connection approve"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class approve 
