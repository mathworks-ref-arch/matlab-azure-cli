classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az relay wcfrelay create : Create the Relay Service WCF Relay.
            this.BaseCmd = 'az relay wcfrelay create ';
        end
        function this = name(this, varargin)
            % Name of WCF Relay.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace_name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--namespace-name', varargin{:}];
        end

        function this = relay_type(this, varargin)
            % Relay type.  Allowed values: Http, NetTcp.  Default: NetTcp.
            this.Options = [this.Options, '--relay-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = requires_client_authorization(this, varargin)
            % Indicates whether client authorization is required.  Allowed values: false, true.
            this.Options = [this.Options, '--requires-client-authorization', varargin{:}];
        end

        function this = requires_transport_security(this, varargin)
            % Indicates whether transport security is required.  Allowed values: false, true.
            this.Options = [this.Options, '--requires-transport-security', varargin{:}];
        end

        function this = user_metadata(this, varargin)
            % Endpoint metadata.
            this.Options = [this.Options, '--user-metadata', varargin{:}];
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
            fprintf('%s\n', '    az relay wcfrelay create : Create the Relay Service WCF Relay.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of WCF Relay.')
            fprintf('%s\n', '    --namespace-name     [Required] : Name of Namespace.')
            fprintf('%s\n', '    --relay-type         [Required] : Relay type.  Allowed values: Http, NetTcp.  Default: NetTcp.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --requires-client-authorization : Indicates whether client authorization is required.  Allowed')
            fprintf('%s\n', '                                      values: false, true.')
            fprintf('%s\n', '    --requires-transport-security   : Indicates whether transport security is required.  Allowed')
            fprintf('%s\n', '                                      values: false, true.')
            fprintf('%s\n', '    --user-metadata                 : Endpoint metadata.')
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
            fprintf('%s\n', '    Create Relay Service WCF Relay.')
            fprintf('%s\n', '        az relay wcfrelay create --resource-group myresourcegroup --namespace-name mynamespace')
            fprintf('%s\n', '        --name myrelay --relay-type NetTcp')
            fprintf('%s\n', 'For more specific examples, use: az find "az relay wcfrelay create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
