classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network express-route port link update : Manage MACsec configuration of an ExpressRoute Link.
            this.BaseCmd = 'az network express-route port link update ';
        end
        function this = admin_state(this, varargin)
            % Enable/Disable administrative state of an ExpressRoute Link. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--admin-state', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            % The link name of the ExpressRoute Port.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = port_name(this, varargin)
            % ExpressRoute port name.
            this.Options = [this.Options, '--port-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. MACsec Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = macsec_cak_secret_identifier(this, varargin)
            % The connectivity association key (CAK) ID that stored in the KeyVault.
            this.Options = [this.Options, '--macsec-cak-secret-identifier', varargin{:}];
        end

        function this = macsec_cipher(this, varargin)
            % Cipher Method.  Allowed values: gcm-aes-128, gcm-aes-256.
            this.Options = [this.Options, '--macsec-cipher', varargin{:}];
        end

        function this = macsec_ckn_secret_identifier(this, varargin)
            % The connectivity key name (CKN) that stored in the KeyVault.
            this.Options = [this.Options, '--macsec-ckn-secret-identifier', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network express-route port link update : Manage MACsec configuration of an ExpressRoute Link.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-state                  : Enable/Disable administrative state of an ExpressRoute Link.')
            fprintf('%s\n', '                                     Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                          : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                     value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                     string or JSON string>.')
            fprintf('%s\n', '    --force-string                 : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                     attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                       : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                     property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                          : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                     set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'MACsec Arguments')
            fprintf('%s\n', '    --macsec-cak-secret-identifier : The connectivity association key (CAK) ID that stored in the')
            fprintf('%s\n', '                                     KeyVault.')
            fprintf('%s\n', '    --macsec-cipher                : Cipher Method.  Allowed values: gcm-aes-128, gcm-aes-256.')
            fprintf('%s\n', '    --macsec-ckn-secret-identifier : The connectivity key name (CKN) that stored in the KeyVault.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                      : The link name of the ExpressRoute Port.')
            fprintf('%s\n', '    --port-name                    : ExpressRoute port name.')
            fprintf('%s\n', '    --resource-group -g            : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable MACsec on ExpressRoute Direct Ports once at a time.')
            fprintf('%s\n', '        az network express-route port link update \')
            fprintf('%s\n', '        --resource-group MyResourceGroup \')
            fprintf('%s\n', '        --port-name MyExpressRoutePort \')
            fprintf('%s\n', '        --name link1 \')
            fprintf('%s\n', '        --macsec-ckn-secret-identifier MacSecCKNSecretID \')
            fprintf('%s\n', '        --macsec-cak-secret-identifier MacSecCAKSecretID \')
            fprintf('%s\n', '        --macsec-cipher gcm-aes-128')
            fprintf('%s\n', '    Enable administrative state of an ExpressRoute Link.')
            fprintf('%s\n', '        az network express-route port link update \')
            fprintf('%s\n', '        --resource-group MyResourceGroup \')
            fprintf('%s\n', '        --port-name MyExpressRoutePort \')
            fprintf('%s\n', '        --name link2 \')
            fprintf('%s\n', '        --admin-state Enabled')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route port link update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
