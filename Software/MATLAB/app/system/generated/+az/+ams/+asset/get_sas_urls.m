classdef get_sas_urls < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_sas_urls()
            % az ams asset get-sas-urls : Lists storage container URLs with shared access signatures (SAS) for
            % uploading and downloading Asset content. The signatures are derived from the storage account
            % keys.
            this.BaseCmd = 'az ams asset get-sas-urls ';
        end
        function this = expiry(this, varargin)
            % Specifies the UTC datetime (Y-m-d'T'H:M:S'Z') at which the SAS becomes invalid. This must be less than 24 hours from the current time.  Default: 2020-08-11 09:09:02.465154.
            this.Options = [this.Options, '--expiry', varargin{:}];
        end

        function this = permissions(this, varargin)
            % The permissions to set on the SAS URL.  Allowed values: Read, ReadWrite, ReadWriteDelete.  Default: Read.
            this.Options = [this.Options, '--permissions', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams asset get-sas-urls"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the asset.
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
            fprintf('%s\n', '    az ams asset get-sas-urls : Lists storage container URLs with shared access signatures (SAS) for')
            fprintf('%s\n', '    uploading and downloading Asset content. The signatures are derived from the storage account')
            fprintf('%s\n', '    keys.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --expiry            : Specifies the UTC datetime (Y-m-d''T''H:M:S''Z'') at which the SAS becomes')
            fprintf('%s\n', '                          invalid. This must be less than 24 hours from the current time.  Default:')
            fprintf('%s\n', '                          2020-08-11 09:09:02.465154.')
            fprintf('%s\n', '    --permissions       : The permissions to set on the SAS URL.  Allowed values: Read, ReadWrite,')
            fprintf('%s\n', '                          ReadWriteDelete.  Default: Read.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a   : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the asset.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams asset get-sas-urls"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_sas_urls 
