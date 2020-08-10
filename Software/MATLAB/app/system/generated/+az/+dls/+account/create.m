classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dls account create : Creates a Data Lake Store account.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls account create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = default_group(this, varargin)
            % Name of the default group to give permissions to for freshly created files and folders in the Data Lake Store account.
            this.Options = [this.Options, '--default-group', varargin{:}];
        end

        function this = disable_encryption(this, varargin)
            % Indicates that the account will not have any form of encryption applied to it.
            this.Options = [this.Options, '--disable-encryption', varargin{:}];
        end

        function this = encryption_type(this, varargin)
            % Indicates what type of encryption to provision the account with. By default, encryption is ServiceManaged. If no encryption is desired, it must be explicitly set with the --disable-encryption flag.  Allowed values: ServiceManaged, UserManaged.  Default: ServiceManaged.
            this.Options = [this.Options, '--encryption-type', varargin{:}];
        end

        function this = key_name(this, varargin)
            % Key name for the user-assigned encryption type.
            this.Options = [this.Options, '--key-name', varargin{:}];
        end

        function this = key_vault_id(this, varargin)
            % Key vault for the user-assigned encryption type.
            this.Options = [this.Options, '--key-vault-id', varargin{:}];
        end

        function this = key_version(this, varargin)
            % Key version for the user-assigned encryption type.
            this.Options = [this.Options, '--key-version', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = tier(this, varargin)
            % The desired commitment tier for this account to use.  Allowed values: Commitment_100TB, Commitment_10TB, Commitment_1PB, Commitment_1TB, Commitment_500TB, Commitment_5PB, Consumption.
            this.Options = [this.Options, '--tier', varargin{:}];
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
            fprintf('%s\n', '    az dls account create : Creates a Data Lake Store account.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n [Required] : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --default-group         : Name of the default group to give permissions to for freshly created')
            fprintf('%s\n', '                              files and folders in the Data Lake Store account.')
            fprintf('%s\n', '    --disable-encryption    : Indicates that the account will not have any form of encryption')
            fprintf('%s\n', '                              applied to it.')
            fprintf('%s\n', '    --encryption-type       : Indicates what type of encryption to provision the account with. By')
            fprintf('%s\n', '                              default, encryption is ServiceManaged. If no encryption is desired, it')
            fprintf('%s\n', '                              must be explicitly set with the --disable-encryption flag.  Allowed')
            fprintf('%s\n', '                              values: ServiceManaged, UserManaged.  Default: ServiceManaged.')
            fprintf('%s\n', '    --key-name              : Key name for the user-assigned encryption type.')
            fprintf('%s\n', '    --key-vault-id          : Key vault for the user-assigned encryption type.')
            fprintf('%s\n', '    --key-version           : Key version for the user-assigned encryption type.')
            fprintf('%s\n', '    --location -l           : Location. Values from: `az account list-locations`. You can configure')
            fprintf('%s\n', '                              the default location using `az configure --defaults')
            fprintf('%s\n', '                              location=<location>`.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', '    --tier                  : The desired commitment tier for this account to use.  Allowed values:')
            fprintf('%s\n', '                              Commitment_100TB, Commitment_10TB, Commitment_1PB, Commitment_1TB,')
            fprintf('%s\n', '                              Commitment_500TB, Commitment_5PB, Consumption.')
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
            fprintf('%s\n', '    Creates a Data Lake Store account. (autogenerated)')
            fprintf('%s\n', '        az dls account create --account mydatalakestoragegen1 --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
