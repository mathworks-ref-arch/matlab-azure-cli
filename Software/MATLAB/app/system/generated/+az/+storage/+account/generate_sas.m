classdef generate_sas < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate_sas()
            % az storage account generate-sas : Generates a shared access signature for the account.
            this.BaseCmd = 'az storage account generate-sas ';
        end
        function this = expiry(this, varargin)
            % Specifies the UTC datetime (Y-m-d'T'H:M'Z') at which the SAS becomes invalid.
            this.Options = [this.Options, '--expiry', varargin{:}];
        end

        function this = permissions(this, varargin)
            % The permissions the SAS grants. Allowed values: (a)dd (c)reate (d)elete (l)ist (p)rocess (r)ead (u)pdate (w)rite. Can be combined.
            this.Options = [this.Options, '--permissions', varargin{:}];
        end

        function this = resource_types(this, varargin)
            % The resource types the SAS is applicable for. Allowed values: (s)ervice (c)ontainer (o)bject. Can be combined.
            this.Options = [this.Options, '--resource-types', varargin{:}];
        end

        function this = services(this, varargin)
            % The storage services the SAS is applicable for. Allowed values: (b)lob (f)ile (q)ueue (t)able. Can be combined.
            this.Options = [this.Options, '--services', varargin{:}];
        end

        function this = https_only(this, varargin)
            % Only permit requests made with the HTTPS protocol. If omitted, requests from both the HTTP and HTTPS protocol are permitted.
            this.Options = [this.Options, '--https-only', varargin{:}];
        end

        function this = ip(this, varargin)
            % Specifies the IP address or range of IP addresses from which to accept requests. Supports only IPv4 style addresses.
            this.Options = [this.Options, '--ip', varargin{:}];
        end

        function this = start(this, varargin)
            % Specifies the UTC datetime (Y-m-d'T'H:M'Z') at which the SAS becomes valid. Defaults to the time of the request.
            this.Options = [this.Options, '--start', varargin{:}];
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

        function this = account_name(this, varargin)
            % Storage account name. Must be used in conjunction with either storage account key or a SAS token. Environment Variable: AZURE_STORAGE_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Storage Account Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Storage account connection string. Environment variable: AZURE_STORAGE_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage account generate-sas : Generates a shared access signature for the account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --expiry         [Required] : Specifies the UTC datetime (Y-m-d''T''H:M''Z'') at which the SAS')
            fprintf('%s\n', '                                  becomes invalid.')
            fprintf('%s\n', '    --permissions    [Required] : The permissions the SAS grants. Allowed values: (a)dd (c)reate')
            fprintf('%s\n', '                                  (d)elete (l)ist (p)rocess (r)ead (u)pdate (w)rite. Can be')
            fprintf('%s\n', '                                  combined.')
            fprintf('%s\n', '    --resource-types [Required] : The resource types the SAS is applicable for. Allowed values:')
            fprintf('%s\n', '                                  (s)ervice (c)ontainer (o)bject. Can be combined.')
            fprintf('%s\n', '    --services       [Required] : The storage services the SAS is applicable for. Allowed values:')
            fprintf('%s\n', '                                  (b)lob (f)ile (q)ueue (t)able. Can be combined.')
            fprintf('%s\n', '    --https-only                : Only permit requests made with the HTTPS protocol. If omitted,')
            fprintf('%s\n', '                                  requests from both the HTTP and HTTPS protocol are permitted.')
            fprintf('%s\n', '    --ip                        : Specifies the IP address or range of IP addresses from which to')
            fprintf('%s\n', '                                  accept requests. Supports only IPv4 style addresses.')
            fprintf('%s\n', '    --start                     : Specifies the UTC datetime (Y-m-d''T''H:M''Z'') at which the SAS')
            fprintf('%s\n', '                                  becomes valid. Defaults to the time of the request.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name              : Storage account name. Must be used in conjunction with either')
            fprintf('%s\n', '                                  storage account key or a SAS token. Environment Variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_ACCOUNT.')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key               : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                  account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --connection-string         : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Generate a sas token for the account that is valid for queue and table services on Linux.')
            fprintf('%s\n', '        end=`date -u -d "30 minutes" ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        az storage account generate-sas --permissions cdlruwap --account-name MyStorageAccount')
            fprintf('%s\n', '        --services qt --resource-types sco --expiry $end -o tsv')
            fprintf('%s\n', '    Generate a sas token for the account that is valid for queue and table services on MacOS.')
            fprintf('%s\n', '        end=`date -v+30M ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        az storage account generate-sas --permissions cdlruwap --account-name MyStorageAccount')
            fprintf('%s\n', '        --services qt --resource-types sco --expiry $end -o tsv')
            fprintf('%s\n', '    Generate a shared access signature for the account (autogenerated)')
            fprintf('%s\n', '        az storage account generate-sas --account-key 00000000 --account-name MyStorageAccount')
            fprintf('%s\n', '        --expiry 2020-01-01 --https-only --permissions acuw --resource-types co --services bfqt')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account generate-sas"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate_sas 
