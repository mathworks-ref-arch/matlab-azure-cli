classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az functionapp config ssl import : Import an SSL certificate to a function app from Key Vault.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az functionapp config ssl import ';
        end
        function this = key_vault(this, varargin)
            % The name or resource ID of the Key Vault.
            this.Options = [this.Options, '--key-vault', varargin{:}];
        end

        function this = key_vault_certificate_name(this, varargin)
            % The name of the certificate in Key Vault.
            this.Options = [this.Options, '--key-vault-certificate-name', varargin{:}];
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
            % Name of the function app.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az functionapp config ssl import : Import an SSL certificate to a function app from Key Vault.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key-vault                  [Required] : The name or resource ID of the Key Vault.')
            fprintf('%s\n', '    --key-vault-certificate-name [Required] : The name of the certificate in Key Vault.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                   : One or more resource IDs (space-delimited). It should')
            fprintf('%s\n', '                                              be a complete resource ID containing all information')
            fprintf('%s\n', '                                              of ''Resource Id'' arguments. You should provide either')
            fprintf('%s\n', '                                              --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                               : Name of the function app.')
            fprintf('%s\n', '    --resource-group -g                     : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Import an SSL certificate to a function app from Key Vault.')
            fprintf('%s\n', '        az functionapp config ssl import --resource-group MyResourceGroup --name MyFunctionApp')
            fprintf('%s\n', '        --key-vault MyKeyVault --key-vault-certificate-name MyCertificateName')
            fprintf('%s\n', '    Import an SSL certificate to a function app from Key Vault using resource id (typically if Key')
            fprintf('%s\n', '    Vault is in another subscription).')
            fprintf('%s\n', '        az functionapp config ssl import --resource-group MyResourceGroup --name MyFunctionApp')
            fprintf('%s\n', '        --key-vault ''/subscriptions/[sub')
            fprintf('%s\n', '        id]/resourceGroups/[rg]/providers/Microsoft.KeyVault/vaults/[vault name]'' --key-vault-')
            fprintf('%s\n', '        certificate-name MyCertificateName')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp config ssl import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
