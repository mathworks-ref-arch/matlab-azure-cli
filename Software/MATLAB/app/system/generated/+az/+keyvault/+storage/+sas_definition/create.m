classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az keyvault storage sas-definition create : Creates or updates a new SAS definition for the
            % specified storage account.
            this.BaseCmd = 'az keyvault storage sas-definition create ';
        end
        function this = sas_type(this, varargin)
            % The type of SAS token the SAS definition will create.  Allowed values: account, service.
            this.Options = [this.Options, '--sas-type', varargin{:}];
        end

        function this = template_uri(this, varargin)
            % The SAS definition token template signed with the key 00000000. In the case of an account token this is only the sas token itself, for service tokens, the full service endpoint url along with the sas token.  Tokens created according to the SAS definition will have the same properties as the template.
            this.Options = [this.Options, '--template-uri', varargin{:}];
        end

        function this = validity_period(this, varargin)
            % The validity period of SAS tokens created according to the SAS definition in ISO-8601, such as "PT12H" for 12 hour tokens.
            this.Options = [this.Options, '--validity-period', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Add the storage account in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
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

        function this = account_name(this, varargin)
            % Name to identify the storage account in the vault.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name to identify the SAS definition in the vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault storage sas-definition create : Creates or updates a new SAS definition for the')
            fprintf('%s\n', '    specified storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --sas-type        [Required] : The type of SAS token the SAS definition will create.  Allowed')
            fprintf('%s\n', '                                   values: account, service.')
            fprintf('%s\n', '    --template-uri    [Required] : The SAS definition token template signed with the key 00000000.')
            fprintf('%s\n', '                                   In the case of an account token this is only the sas token')
            fprintf('%s\n', '                                   itself, for service tokens, the full service endpoint url along')
            fprintf('%s\n', '                                   with the sas token.  Tokens created according to the SAS')
            fprintf('%s\n', '                                   definition will have the same properties as the template.')
            fprintf('%s\n', '    --validity-period [Required] : The validity period of SAS tokens created according to the SAS')
            fprintf('%s\n', '                                   definition in ISO-8601, such as "PT12H" for 12 hour tokens.')
            fprintf('%s\n', '    --disabled                   : Add the storage account in a disabled state.  Allowed values:')
            fprintf('%s\n', '                                   false, true.')
            fprintf('%s\n', '    --tags                       : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                   clear existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --account-name    [Required] : Name to identify the storage account in the vault.')
            fprintf('%s\n', '    --name -n         [Required] : Name to identify the SAS definition in the vault.')
            fprintf('%s\n', '    --vault-name      [Required] : Name of the key vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a sas-definition for an account sas-token')
            fprintf('%s\n', '        $sastoken = az storage account generate-sas --expiry 2020-01-01 --permissions rw --resource-')
            fprintf('%s\n', '        types sco --services bfqt --https-only --account-name storageacct --account-key 00000000')
            fprintf('%s\n', '        az keyvault storage sas-definition create --vault-name vault --account-name storageacct -n')
            fprintf('%s\n', '        rwallserviceaccess --validity-period P2D --sas-type account --template-uri $sastoken')
            fprintf('%s\n', '    Add a sas-definition for a blob sas-token')
            fprintf('%s\n', '        $sastoken = az storage blob generate-sas --account-name storageacct --account-key 00000000')
            fprintf('%s\n', '        -c container1 -n blob1 --https-only --permissions rw')
            fprintf('%s\n', '        $url = az storage blob url --account-name storageacct -c container1 -n blob1')
            fprintf('%s\n', '        az keyvault storage sas-definition create --vault-name vault --account-name storageacct -n')
            fprintf('%s\n', '        rwblobaccess --validity-period P2D --sas-type service --template-uri $url?$sastoken')
            fprintf('%s\n', '    Add a sas-definition for a container sas-token')
            fprintf('%s\n', '        $sastoken = az storage container generate-sas --account-name storageacct --account-key')
            fprintf('%s\n', '        00000000 -n container1 --https-only --permissions rw')
            fprintf('%s\n', '        $url = "https://{storage-account-name}.blob.core.windows.net/{container-name}"  # The prefix')
            fprintf('%s\n', '        of your blob url')
            fprintf('%s\n', '        az keyvault storage sas-definition create --vault-name vault --account-name storageacct -n')
            fprintf('%s\n', '        rwcontaineraccess --validity-period P2D --sas-type service --template-uri $url?$sastoken')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage sas-definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
