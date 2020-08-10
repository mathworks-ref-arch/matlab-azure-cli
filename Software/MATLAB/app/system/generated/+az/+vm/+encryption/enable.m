classdef enable < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable()
            % az vm encryption enable : Enable disk encryption on the OS disk and/or data disks. Encrypt
            % mounted disks.
            % Note that Azure Active Directory / service principal arguments are unnecessary for vm
            % encryption. The older version of Azure Disk Encryption required AAD arguments.
            % For more information, see:
            % https://docs.microsoft.com/azure/security/azure-security-disk-encryption-overview.
            this.BaseCmd = 'az vm encryption enable ';
        end
        function this = disk_encryption_keyvault(this, varargin)
            % Name or ID of the key vault where the generated encryption key will be placed.
            this.Options = [this.Options, '--disk-encryption-keyvault', varargin{:}];
        end

        function this = encrypt_format_all(this, varargin)
            % Encrypts-formats data disks instead of encrypting them. Encrypt-formatting is a lot faster than in-place encryption but wipes out the partition getting encrypt- formatted.
            this.Options = [this.Options, '--encrypt-format-all', varargin{:}];
        end

        function this = force(this, varargin)
            % Continue by ignoring client side validation errors.
            this.Options = [this.Options, '--force', varargin{:}];
        end

        function this = key_encryption_algorithm(this, varargin)
            % Default: RSA-OAEP.
            this.Options = [this.Options, '--key-encryption-algorithm', varargin{:}];
        end

        function this = key_encryption_key(this, varargin)
            % Key vault key name or URL used to encrypt the disk encryption key.
            this.Options = [this.Options, '--key-encryption-key', varargin{:}];
        end

        function this = key_encryption_keyvault(this, varargin)
            % Name or ID of the key vault containing the key encryption key used to encrypt the disk encryption key. If missing, CLI will use `--disk-encryption-keyvault`.
            this.Options = [this.Options, '--key-encryption-keyvault', varargin{:}];
        end

        function this = volume_type(this, varargin)
            % Type of volume that the encryption operation is performed on.  Allowed values: ALL, DATA, OS. Azure Active Directory Arguments
            this.Options = [this.Options, '--volume-type', varargin{:}];
        end

        function this = aad_client_cert_thumbprint(this, varargin)
            % Thumbprint of the AAD app certificate with permissions to write secrets to the key vault.
            this.Options = [this.Options, '--aad-client-cert-thumbprint', varargin{:}];
        end

        function this = aad_client_id(this, varargin)
            % Client ID of an AAD app with permissions to write secrets to the key vault.
            this.Options = [this.Options, '--aad-client-id', varargin{:}];
        end

        function this = aad_client_secret(this, varargin)
            % Client secret of the AAD app with permissions to write secrets to the key vault.
            this.Options = [this.Options, '--aad-client-secret', varargin{:}];
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
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
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
            fprintf('%s\n', '    az vm encryption enable : Enable disk encryption on the OS disk and/or data disks. Encrypt')
            fprintf('%s\n', '    mounted disks.')
            fprintf('%s\n', '        Note that Azure Active Directory / service principal arguments are unnecessary for vm')
            fprintf('%s\n', '        encryption. The older version of Azure Disk Encryption required AAD arguments.')
            fprintf('%s\n', '        For more information, see:')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/security/azure-security-disk-encryption-overview.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disk-encryption-keyvault [Required] : Name or ID of the key vault where the generated')
            fprintf('%s\n', '                                            encryption key will be placed.')
            fprintf('%s\n', '    --encrypt-format-all                  : Encrypts-formats data disks instead of encrypting them.')
            fprintf('%s\n', '                                            Encrypt-formatting is a lot faster than in-place')
            fprintf('%s\n', '                                            encryption but wipes out the partition getting encrypt-')
            fprintf('%s\n', '                                            formatted.')
            fprintf('%s\n', '    --force                               : Continue by ignoring client side validation errors.')
            fprintf('%s\n', '    --key-encryption-algorithm            : Default: RSA-OAEP.')
            fprintf('%s\n', '    --key-encryption-key                  : Key vault key name or URL used to encrypt the disk')
            fprintf('%s\n', '                                            encryption key.')
            fprintf('%s\n', '    --key-encryption-keyvault             : Name or ID of the key vault containing the key')
            fprintf('%s\n', '                                            encryption key used to encrypt the disk encryption key.')
            fprintf('%s\n', '                                            If missing, CLI will use `--disk-encryption-keyvault`.')
            fprintf('%s\n', '    --volume-type                         : Type of volume that the encryption operation is')
            fprintf('%s\n', '                                            performed on.  Allowed values: ALL, DATA, OS.')
            fprintf('%s\n', 'Azure Active Directory Arguments')
            fprintf('%s\n', '    --aad-client-cert-thumbprint          : Thumbprint of the AAD app certificate with permissions')
            fprintf('%s\n', '                                            to write secrets to the key vault.')
            fprintf('%s\n', '    --aad-client-id                       : Client ID of an AAD app with permissions to write')
            fprintf('%s\n', '                                            secrets to the key vault.')
            fprintf('%s\n', '    --aad-client-secret                   : Client secret of the AAD app with permissions to write')
            fprintf('%s\n', '                                            secrets to the key vault.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                 : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                            a complete resource ID containing all information of')
            fprintf('%s\n', '                                            ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                            or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                             : The name of the Virtual Machine. You can configure the')
            fprintf('%s\n', '                                            default using `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g                   : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                            group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    encrypt a VM using a key vault in the same resource group')
            fprintf('%s\n', '        az vm encryption enable -g MyResourceGroup -n MyVm --disk-encryption-keyvault MyVault')
            fprintf('%s\n', '    Enable disk encryption on the OS disk and/or data disks. Encrypt mounted disks. (autogenerated)')
            fprintf('%s\n', '        az vm encryption enable --disk-encryption-keyvault MyVault --name MyVm --resource-group')
            fprintf('%s\n', '        MyResourceGroup --volume-type DATA')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm encryption enable"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable 
