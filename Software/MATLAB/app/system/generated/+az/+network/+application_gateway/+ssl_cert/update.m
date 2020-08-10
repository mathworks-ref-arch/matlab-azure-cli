classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway ssl-cert update : Update an SSL certificate.
            this.BaseCmd = 'az network application-gateway ssl-cert update ';
        end
        function this = cert_file(this, varargin)
            % The path to the PFX certificate file.
            this.Options = [this.Options, '--cert-file', varargin{:}];
        end

        function this = cert_password(this, varargin)
            % Certificate password.
            this.Options = [this.Options, '--cert-password', varargin{:}];
        end

        function this = key_vault_secret_id(this, varargin)
            % Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. Argument '--key-vault-secret-id' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-vault-secret-id', varargin{:}];
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

        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the SSL certificate.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway ssl-cert update : Update an SSL certificate.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cert-file                     : The path to the PFX certificate file.')
            fprintf('%s\n', '    --cert-password                 : Certificate password.')
            fprintf('%s\n', '    --key-vault-secret-id [Preview] : Secret Id of (base-64 encoded unencrypted pfx)')
            fprintf('%s\n', '                                      ''Secret'' or ''Certificate'' object stored in Azure KeyVault.')
            fprintf('%s\n', '        Argument ''--key-vault-secret-id'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                           : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                      key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                      <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                  : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                      attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                        : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                      --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                      propertyToRemove.')
            fprintf('%s\n', '    --set                           : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                      set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name                  : Name of the application gateway.')
            fprintf('%s\n', '    --ids                           : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                      complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                      Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                       : The name of the SSL certificate.')
            fprintf('%s\n', '    --resource-group -g             : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Change a gateway SSL certificate and password.')
            fprintf('%s\n', '        az network application-gateway ssl-cert update -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway -n MySslCert \')
            fprintf('%s\n', '            --cert-file \path\to\new\cert\file --cert-password Abc123Abc123')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway ssl-cert update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
