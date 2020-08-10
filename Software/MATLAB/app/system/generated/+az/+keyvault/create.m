classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az keyvault create : Create a key vault.
            % If `--enable-rbac-authorization` is not specified, then default permissions are created for
            % the current user or service principal unless the `--no-self-perms` flag is specified.
            this.BaseCmd = 'az keyvault create ';
        end
        function this = name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = enable_purge_protection(this, varargin)
            % Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-purge-protection', varargin{:}];
        end

        function this = enable_rbac_authorization(this, varargin)
            % Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored (warning: this is a preview feature). When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the vault is created with the default value of false. Note that management actions are always authorized with RBAC. Default value: False .  Allowed values: false, true. Argument '--enable-rbac-authorization' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-rbac-authorization', varargin{:}];
        end

        function this = enable_soft_delete(this, varargin)
            % Property to specify whether the 'soft delete' functionality is enabled for this key vault. If it's not set to any value(true or false) when creating new key vault, it will be set to true by default. Once set to true, it cannot be reverted to false. Default value: True .  Allowed values: false, true. Argument 'enable_soft_delete' has been deprecated and will be removed in version '2.11.0'.
            this.Options = [this.Options, '--enable-soft-delete', varargin{:}];
        end

        function this = enabled_for_deployment(this, varargin)
            % Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled-for-deployment', varargin{:}];
        end

        function this = enabled_for_disk_encryption(this, varargin)
            % Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled-for-disk-encryption', varargin{:}];
        end

        function this = enabled_for_template_deployment(this, varargin)
            % Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. Allowed values: false, true.
            this.Options = [this.Options, '--enabled-for-template-deployment', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_self_perms(this, varargin)
            % Don't add permissions for the current user/service principal in the new vault.  Allowed values: false, true.
            this.Options = [this.Options, '--no-self-perms', varargin{:}];
        end

        function this = retention_days(this, varargin)
            % Soft delete data retention days. It accepts >=7 and <=90.  Default: 90.
            this.Options = [this.Options, '--retention-days', varargin{:}];
        end

        function this = sku(this, varargin)
            % Required. SKU details.  Allowed values: premium, standard.  Default: standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Network Rule Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = bypass(this, varargin)
            % Bypass traffic for space-separated uses.  Allowed values: AzureServices, None.
            this.Options = [this.Options, '--bypass', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default action to apply when no rule matches.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--default-action', varargin{:}];
        end

        function this = network_acls(this, varargin)
            % Network ACLs. It accepts a JSON filename or a JSON string. JSON format: `{\"ip\":[<ip1>, <ip2>...],\"vnet\" :[<vnet_name_1>/<subnet_name_1>,<subnet_id2>...]}`.
            this.Options = [this.Options, '--network-acls', varargin{:}];
        end

        function this = network_acls_ips(this, varargin)
            % Network ACLs IP rules. Space-separated list of IP addresses.
            this.Options = [this.Options, '--network-acls-ips', varargin{:}];
        end

        function this = network_acls_vnets(this, varargin)
            % Network ACLS VNet rules. Space-separated list of Vnet/subnet pairs or subnet resource ids.
            this.Options = [this.Options, '--network-acls-vnets', varargin{:}];
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
            fprintf('%s\n', '    az keyvault create : Create a key vault.')
            fprintf('%s\n', '        If `--enable-rbac-authorization` is not specified, then default permissions are created for')
            fprintf('%s\n', '        the current user or service principal unless the `--no-self-perms` flag is specified.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                  [Required] : Name of the key vault.')
            fprintf('%s\n', '    --resource-group -g        [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                            group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-purge-protection             : Property specifying whether protection against purge is')
            fprintf('%s\n', '                                            enabled for this vault. Setting this property to true')
            fprintf('%s\n', '                                            activates protection against purge for this vault and')
            fprintf('%s\n', '                                            its content - only the Key Vault service may initiate a')
            fprintf('%s\n', '                                            hard, irrecoverable deletion. The setting is effective')
            fprintf('%s\n', '                                            only if soft delete is also enabled. Enabling this')
            fprintf('%s\n', '                                            functionality is irreversible - that is, the property')
            fprintf('%s\n', '                                            does not accept false as its value.  Allowed values:')
            fprintf('%s\n', '                                            false, true.')
            fprintf('%s\n', '    --enable-rbac-authorization [Preview] : Property that controls how data actions are')
            fprintf('%s\n', '                                            authorized. When true, the key vault will use Role Based')
            fprintf('%s\n', '                                            Access Control (RBAC) for authorization of data actions,')
            fprintf('%s\n', '                                            and the access policies specified in vault properties')
            fprintf('%s\n', '                                            will be  ignored (warning: this is a preview feature).')
            fprintf('%s\n', '                                            When false, the key vault will use the access policies')
            fprintf('%s\n', '                                            specified in vault properties, and any policy stored on')
            fprintf('%s\n', '                                            Azure Resource Manager will be ignored. If null or not')
            fprintf('%s\n', '                                            specified, the vault is created with the default value')
            fprintf('%s\n', '                                            of false. Note that management actions are always')
            fprintf('%s\n', '                                            authorized with RBAC. Default value: False .  Allowed')
            fprintf('%s\n', '                                            values: false, true.')
            fprintf('%s\n', '        Argument ''--enable-rbac-authorization'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --enable-soft-delete     [Deprecated] : Property to specify whether the ''soft delete''')
            fprintf('%s\n', '                                            functionality is enabled for this key vault. If it''s not')
            fprintf('%s\n', '                                            set to any value(true or false) when creating new key')
            fprintf('%s\n', '                                            vault, it will be set to true by default. Once set to')
            fprintf('%s\n', '                                            true, it cannot be reverted to false. Default value:')
            fprintf('%s\n', '                                            True .  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''enable_soft_delete'' has been deprecated and will be removed in version')
            fprintf('%s\n', '        ''2.11.0''.')
            fprintf('%s\n', '    --enabled-for-deployment              : Property to specify whether Azure Virtual Machines are')
            fprintf('%s\n', '                                            permitted to retrieve certificates stored as secrets')
            fprintf('%s\n', '                                            from the key vault.  Allowed values: false, true.')
            fprintf('%s\n', '    --enabled-for-disk-encryption         : Property to specify whether Azure Disk Encryption is')
            fprintf('%s\n', '                                            permitted to retrieve secrets from the vault and unwrap')
            fprintf('%s\n', '                                            keys.  Allowed values: false, true.')
            fprintf('%s\n', '    --enabled-for-template-deployment     : Property to specify whether Azure Resource Manager is')
            fprintf('%s\n', '                                            permitted to retrieve secrets from the key vault.')
            fprintf('%s\n', '                                            Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                         : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                            can configure the default location using `az configure')
            fprintf('%s\n', '                                            --defaults location=<location>`.')
            fprintf('%s\n', '    --no-self-perms                       : Don''t add permissions for the current user/service')
            fprintf('%s\n', '                                            principal in the new vault.  Allowed values: false,')
            fprintf('%s\n', '                                            true.')
            fprintf('%s\n', '    --retention-days                      : Soft delete data retention days. It accepts >=7 and')
            fprintf('%s\n', '                                            <=90.  Default: 90.')
            fprintf('%s\n', '    --sku                                 : Required. SKU details.  Allowed values: premium,')
            fprintf('%s\n', '                                            standard.  Default: standard.')
            fprintf('%s\n', '    --tags                                : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                            '''' to clear existing tags.')
            fprintf('%s\n', 'Network Rule Arguments')
            fprintf('%s\n', '    --bypass                              : Bypass traffic for space-separated uses.  Allowed')
            fprintf('%s\n', '                                            values: AzureServices, None.')
            fprintf('%s\n', '    --default-action                      : Default action to apply when no rule matches.  Allowed')
            fprintf('%s\n', '                                            values: Allow, Deny.')
            fprintf('%s\n', '    --network-acls                        : Network ACLs. It accepts a JSON filename or a JSON')
            fprintf('%s\n', '                                            string. JSON format: `{\"ip\":[<ip1>, <ip2>...],\"vnet\"')
            fprintf('%s\n', '                                            :[<vnet_name_1>/<subnet_name_1>,<subnet_id2>...]}`.')
            fprintf('%s\n', '    --network-acls-ips                    : Network ACLs IP rules. Space-separated list of IP')
            fprintf('%s\n', '                                            addresses.')
            fprintf('%s\n', '    --network-acls-vnets                  : Network ACLS VNet rules. Space-separated list of')
            fprintf('%s\n', '                                            Vnet/subnet pairs or subnet resource ids.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a key vault with network ACLs specified (use --network-acls to specify IP and VNet rules')
            fprintf('%s\n', '    by using a JSON string).')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', '        --network-acls "{\"ip\": [\"1.2.3.4\", \"2.3.4.0/24\"], \"vnet\":')
            fprintf('%s\n', '        [\"vnet_name_1/subnet_name1\", \"vnet_name_2/subnet_name2\", \"/subscriptions/000000-0000-00')
            fprintf('%s\n', '        00/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNetworks/MyVNet/subnets')
            fprintf('%s\n', '        /MySubnet\"]}"')
            fprintf('%s\n', '    Create a key vault with network ACLs specified (use --network-acls to specify IP and VNet rules')
            fprintf('%s\n', '    by using a JSON file).')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', '        --network-acls network-acls-example.json')
            fprintf('%s\n', '    Create a key vault with network ACLs specified (use --network-acls-ips to specify IP rules).')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', '        --network-acls-ips 3.4.5.0/24 4.5.6.0/24')
            fprintf('%s\n', '    Create a key vault with network ACLs specified (use --network-acls-vnets to specify VNet rules).')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', '        --network-acls-vnets vnet_name_2/subnet_name_2 vnet_name_3/subnet_name_3 /subscriptions/0000')
            fprintf('%s\n', '        00-0000-0000/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet')
            fprintf('%s\n', '        _name_4/subnets/subnet_name_4')
            fprintf('%s\n', '    Create a key vault with network ACLs specified (use --network-acls, --network-acls-ips and')
            fprintf('%s\n', '    --network-acls-vnets together, redundant rules will be removed, finally there will be 4 IP rules')
            fprintf('%s\n', '    and 3 VNet rules).')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', '        --network-acls "{\"ip\": [\"1.2.3.4\", \"2.3.4.0/24\"], \"vnet\":')
            fprintf('%s\n', '        [\"vnet_name_1/subnet_name1\", \"vnet_name_2/subnet_name2\"]}" --network-acls-ips 3.4.5.0/24')
            fprintf('%s\n', '        4.5.6.0/24 --network-acls-vnets vnet_name_2/subnet_name_2 vnet_name_3/subnet_name_3 /subscri')
            fprintf('%s\n', '        ptions/000000-0000-0000/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNe')
            fprintf('%s\n', '        tworks/vnet_name_4/subnets/subnet_name_4')
            fprintf('%s\n', '    Create a key vault. (autogenerated)')
            fprintf('%s\n', '        az keyvault create --location westus2 --name MyKeyVault --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
