classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dls account trusted-provider create : Creates or updates the specified trusted identity
            % provider.
            % During update, the trusted identity provider with the specified name will be replaced with
            % this new provider.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls account trusted-provider create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = id_provider(this, varargin)
            % The URL of this trusted identity provider.
            this.Options = [this.Options, '--id-provider', varargin{:}];
        end

        function this = trusted_id_provider_name(this, varargin)
            % The name of the trusted identity provider. This is used for differentiation of providers in the account.
            this.Options = [this.Options, '--trusted-id-provider-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Store account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dls account trusted-provider create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dls account trusted-provider create : Creates or updates the specified trusted identity')
            fprintf('%s\n', '    provider.')
            fprintf('%s\n', '        During update, the trusted identity provider with the specified name will be replaced with')
            fprintf('%s\n', '        this new provider.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n               [Required] : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --id-provider              [Required] : The URL of this trusted identity provider.')
            fprintf('%s\n', '    --trusted-id-provider-name [Required] : The name of the trusted identity provider. This is used')
            fprintf('%s\n', '                                            for differentiation of providers in the account.')
            fprintf('%s\n', '    --resource-group -g                   : If not specified, will attempt to discover the resource')
            fprintf('%s\n', '                                            group for the specified Data Lake Store account.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az dls account trusted-provider create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
