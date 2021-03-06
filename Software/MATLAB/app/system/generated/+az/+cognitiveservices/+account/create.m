classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az cognitiveservices account create : Manage Azure Cognitive Services accounts.
            % This article lists the Azure CLI commands for Azure Cognitive Services account and
            % subscription management only. Refer to the documentation at
            % https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to
            % use the APIs and supported SDKs.
            this.BaseCmd = 'az cognitiveservices account create ';
        end
        function this = kind(this, varargin)
            % The API name of cognitive services account.  Values from: az cognitiveservices account list-kinds.
            this.Options = [this.Options, '--kind', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Cognitive service account name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % Name of the Sku of cognitive services account.  Values from: az cognitiveservices account list-skus.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = api_properties(this, varargin)
            % Api properties in JSON format or a=b c=d format. Some cognitive services (i.e. QnA Maker) require extra api properties to create the account.
            this.Options = [this.Options, '--api-properties', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign an Azure Active Directory Identity for this account.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = custom_domain(this, varargin)
            % User domain assigned to the account. Name is the CNAME source.
            this.Options = [this.Options, '--custom-domain', varargin{:}];
        end

        function this = encryption(this, varargin)
            % The encryption properties for this resource, in JSON format.
            this.Options = [this.Options, '--encryption', varargin{:}];
        end

        function this = storage(this, varargin)
            % The storage accounts for this resource, in JSON array format.
            this.Options = [this.Options, '--storage', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for terms confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az cognitiveservices account create : Manage Azure Cognitive Services accounts.')
            fprintf('%s\n', '        This article lists the Azure CLI commands for Azure Cognitive Services account and')
            fprintf('%s\n', '        subscription management only. Refer to the documentation at')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/cognitive-services/ for individual services to learn how to')
            fprintf('%s\n', '        use the APIs and supported SDKs.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --kind              [Required] : The API name of cognitive services account.  Values from: az')
            fprintf('%s\n', '                                     cognitiveservices account list-kinds.')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : Cognitive service account name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku               [Required] : Name of the Sku of cognitive services account.  Values from: az')
            fprintf('%s\n', '                                     cognitiveservices account list-skus.')
            fprintf('%s\n', '    --api-properties               : Api properties in JSON format or a=b c=d format. Some cognitive')
            fprintf('%s\n', '                                     services (i.e. QnA Maker) require extra api properties to')
            fprintf('%s\n', '                                     create the account.')
            fprintf('%s\n', '    --assign-identity              : Generate and assign an Azure Active Directory Identity for this')
            fprintf('%s\n', '                                     account.')
            fprintf('%s\n', '    --custom-domain                : User domain assigned to the account. Name is the CNAME source.')
            fprintf('%s\n', '    --encryption                   : The encryption properties for this resource, in JSON format.')
            fprintf('%s\n', '    --storage                      : The storage accounts for this resource, in JSON array format.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --yes                          : Do not prompt for terms confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an S0 face API Cognitive Services account in West Europe without confirmation required.')
            fprintf('%s\n', '        az cognitiveservices account create -n myresource -g myResourceGroup --kind Face --sku S0 -l')
            fprintf('%s\n', '        WestEurope --yes')
            fprintf('%s\n', '    Manage Azure Cognitive Services accounts. (autogenerated)')
            fprintf('%s\n', '        az cognitiveservices account create --kind Face --location WestEurope --name myresource')
            fprintf('%s\n', '        --resource-group myResourceGroup --sku S0 --subscription MySubscription --yes')
            fprintf('%s\n', 'For more specific examples, use: az find "az cognitiveservices account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
