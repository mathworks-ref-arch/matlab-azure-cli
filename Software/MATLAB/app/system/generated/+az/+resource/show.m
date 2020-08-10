classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az resource show : Get the details of a resource.
            this.BaseCmd = 'az resource show ';
        end
        function this = include_response_body(this, varargin)
            % Use if the default command output doesn't capture all of the property data.  Allowed values: false, true.
            this.Options = [this.Options, '--include-response-body', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified.
            this.Options = [this.Options, '--ids', varargin{:}];
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
            fprintf('%s\n', '    az resource show : Get the details of a resource.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --include-response-body : Use if the default command output doesn''t capture all of the property')
            fprintf('%s\n', '                              data.  Allowed values: false, true.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --api-version           : The api version of the resource (omit for latest).')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). If provided, no other')
            fprintf('%s\n', '                              "Resource Id" arguments should be specified.')
            fprintf('%s\n', '    --name -n               : The resource name. (Ex: myC).')
            fprintf('%s\n', '    --namespace             : Provider namespace (Ex: ''Microsoft.Provider'').')
            fprintf('%s\n', '    --parent                : The parent path (Ex: ''resA/myA/resB/myB'').')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type         : The resource type (Ex: ''resC''). Can also accept namespace/type format')
            fprintf('%s\n', '                              (Ex: ''Microsoft.Provider/resC'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show a virtual machine resource named ''MyVm''.')
            fprintf('%s\n', '        az resource show -g MyResourceGroup -n MyVm --resource-type')
            fprintf('%s\n', '        "Microsoft.Compute/virtualMachines"')
            fprintf('%s\n', '    Show a web app using a resource identifier.')
            fprintf('%s\n', '        az resource show --ids /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '        aec3-111111111111/resourceGroups/MyResourceGroup/providers/Microsoft.Web/sites/MyWebapp')
            fprintf('%s\n', '    Show a subnet.')
            fprintf('%s\n', '        az resource show -g MyResourceGroup -n MySubnet --namespace Microsoft.Network --parent')
            fprintf('%s\n', '        virtualnetworks/MyVnet --resource-type subnets')
            fprintf('%s\n', '    Show a subnet using a resource identifier.')
            fprintf('%s\n', '        az resource show --ids /subscriptions/0b1f6471-1bf0-4dda-aec3-111111111111/resourceGroups/My')
            fprintf('%s\n', '        ResourceGroup/providers/Microsoft.Network/virtualNetworks/MyVnet/subnets/MySubnet')
            fprintf('%s\n', '    Show an application gateway path rule.')
            fprintf('%s\n', '        az resource show -g MyResourceGroup --namespace Microsoft.Network --parent')
            fprintf('%s\n', '        applicationGateways/ag1/urlPathMaps/map1 --resource-type pathRules -n rule1')
            fprintf('%s\n', 'For more specific examples, use: az find "az resource show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
