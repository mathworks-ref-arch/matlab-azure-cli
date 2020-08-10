classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az appconfig create : Create an App Configuration.
            this.BaseCmd = 'az appconfig create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Accept system or user assigned identities separated by spaces. Use '[system]' to refer system assigned identity or a resource id to refer user assigned identity. Use system assigned identity if not specified. Argument '--assign-identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = enable_public_network(this, varargin)
            % When true, requests coming from public networks have permission to access this store while private endpoint is enabled. When false, only requests made through Private Links can reach this store.  Allowed values: false, true. Argument '--enable-public-network' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-public-network', varargin{:}];
        end

        function this = sku(this, varargin)
            % The sku of App Configuration.  Allowed values: Free, Standard.  Default: Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            fprintf('%s\n', '    az appconfig create : Create an App Configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l             [Required] : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --name -n                 [Required] : Name of the App Configuration. You can configure the')
            fprintf('%s\n', '                                           default name using `az configure --defaults')
            fprintf('%s\n', '                                           app_configuration_store=<name>`.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --assign-identity          [Preview] : Accept system or user assigned identities')
            fprintf('%s\n', '                                           separated by spaces. Use ''[system]'' to refer system')
            fprintf('%s\n', '                                           assigned identity or a resource id to refer user assigned')
            fprintf('%s\n', '                                           identity. Use system assigned identity if not specified.')
            fprintf('%s\n', '        Argument ''--assign-identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --enable-public-network -e [Preview] : When true, requests coming from public networks')
            fprintf('%s\n', '                                           have permission to access this store while private')
            fprintf('%s\n', '                                           endpoint is enabled. When false, only requests made')
            fprintf('%s\n', '                                           through Private Links can reach this store.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '        Argument ''--enable-public-network'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --sku                                : The sku of App Configuration.  Allowed values: Free,')
            fprintf('%s\n', '                                           Standard.  Default: Standard.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an App Configuration with name, location, sku and resource group.')
            fprintf('%s\n', '        az appconfig create -g MyResourceGroup -n MyAppConfiguration -l westus --sku Standard')
            fprintf('%s\n', '    Create an App Configuration with name, location, sku and resource group with system assigned')
            fprintf('%s\n', '    identity.')
            fprintf('%s\n', '        az appconfig create -g MyResourceGroup -n MyAppConfiguration -l westus --sku Standard')
            fprintf('%s\n', '        --assign-identity')
            fprintf('%s\n', '    Create an App Configuration with name, location, sku and resource group with user assigned')
            fprintf('%s\n', '    identity.')
            fprintf('%s\n', '        az appconfig create -g MyResourceGroup -n MyAppConfiguration -l westus --sku Standard')
            fprintf('%s\n', '        --assign-identity /subscriptions/<SUBSCRIPTON ID>/resourcegroups/<RESOURCEGROUP>/providers/M')
            fprintf('%s\n', '        icrosoft.ManagedIdentity/userAssignedIdentities/myUserAssignedIdentity')
            fprintf('%s\n', '    Create an App Configuration with name, location and resource group and enable public network')
            fprintf('%s\n', '    access.')
            fprintf('%s\n', '        az appconfig create -g MyResourceGroup -n MyAppConfiguration -l westus --enable-public-')
            fprintf('%s\n', '        network')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
