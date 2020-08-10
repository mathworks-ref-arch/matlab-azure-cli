classdef generate_sas < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate_sas()
            % az storage container generate-sas : Generate a SAS token for a storage container.
            this.BaseCmd = 'az storage container generate-sas ';
        end
        function this = name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = as_user(this, varargin)
            % Indicates that this command return the SAS signed with the user delegation key. The expiry parameter and '--auth-mode login' are required if this argument is specified.
            this.Options = [this.Options, '--as-user', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = cache_control(this, varargin)
            % Response header value for Cache-Control when resource is accessedusing this shared access signature.
            this.Options = [this.Options, '--cache-control', varargin{:}];
        end

        function this = content_disposition(this, varargin)
            % Response header value for Content-Disposition when resource is accessedusing this shared access signature.
            this.Options = [this.Options, '--content-disposition', varargin{:}];
        end

        function this = content_encoding(this, varargin)
            % Response header value for Content-Encoding when resource is accessedusing this shared access signature.
            this.Options = [this.Options, '--content-encoding', varargin{:}];
        end

        function this = content_language(this, varargin)
            % Response header value for Content-Language when resource is accessedusing this shared access signature.
            this.Options = [this.Options, '--content-language', varargin{:}];
        end

        function this = content_type(this, varargin)
            % Response header value for Content-Type when resource is accessedusing this shared access signature.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = expiry(this, varargin)
            % Specifies the UTC datetime (Y-m-d'T'H:M'Z') at which the SAS becomes invalid. Do not use if a stored access policy is referenced with --id that specifies this value.
            this.Options = [this.Options, '--expiry', varargin{:}];
        end

        function this = https_only(this, varargin)
            % Only permit requests made with the HTTPS protocol. If omitted, requests from both the HTTP and HTTPS protocol are permitted.
            this.Options = [this.Options, '--https-only', varargin{:}];
        end

        function this = ip(this, varargin)
            % Specifies the IP address or range of IP addresses from which to accept requests. Supports only IPv4 style addresses.
            this.Options = [this.Options, '--ip', varargin{:}];
        end

        function this = permissions(this, varargin)
            % The permissions the SAS grants. Allowed values: (a)dd (c)reate (d)elete (l)ist (r)ead (w)rite. Do not use if a stored access policy is referenced with --id that specifies this value. Can be combined.
            this.Options = [this.Options, '--permissions', varargin{:}];
        end

        function this = policy_name(this, varargin)
            % The name of a stored access policy within the container's ACL.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = start(this, varargin)
            % Specifies the UTC datetime (Y-m-d'T'H:M'Z') at which the SAS becomes valid. Do not use if a stored access policy is referenced with --id that specifies this value. Defaults to the time of the request. Storage Account Arguments
            this.Options = [this.Options, '--start', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage account key or a SAS token. If neither are present, the command will try to query the storage account key using the authenticated Azure account. If a large number of storage commands are executed the API quota may be hit.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Storage account connection string. Environment variable: AZURE_STORAGE_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
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
            fprintf('%s\n', '    az storage container generate-sas : Generate a SAS token for a storage container.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n  [Required] : The container name.')
            fprintf('%s\n', '    --as-user             : Indicates that this command return the SAS signed with the user')
            fprintf('%s\n', '                            delegation key. The expiry parameter and ''--auth-mode login'' are')
            fprintf('%s\n', '                            required if this argument is specified.')
            fprintf('%s\n', '    --auth-mode           : The mode in which to run the command. "login" mode will directly use')
            fprintf('%s\n', '                            your login credentials for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                            will attempt to query for an account key if no authentication parameters')
            fprintf('%s\n', '                            for the account are provided. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --cache-control       : Response header value for Cache-Control when resource is accessedusing')
            fprintf('%s\n', '                            this shared access signature.')
            fprintf('%s\n', '    --content-disposition : Response header value for Content-Disposition when resource is')
            fprintf('%s\n', '                            accessedusing this shared access signature.')
            fprintf('%s\n', '    --content-encoding    : Response header value for Content-Encoding when resource is')
            fprintf('%s\n', '                            accessedusing this shared access signature.')
            fprintf('%s\n', '    --content-language    : Response header value for Content-Language when resource is')
            fprintf('%s\n', '                            accessedusing this shared access signature.')
            fprintf('%s\n', '    --content-type        : Response header value for Content-Type when resource is accessedusing')
            fprintf('%s\n', '                            this shared access signature.')
            fprintf('%s\n', '    --expiry              : Specifies the UTC datetime (Y-m-d''T''H:M''Z'') at which the SAS becomes')
            fprintf('%s\n', '                            invalid. Do not use if a stored access policy is referenced with --id')
            fprintf('%s\n', '                            that specifies this value.')
            fprintf('%s\n', '    --https-only          : Only permit requests made with the HTTPS protocol. If omitted, requests')
            fprintf('%s\n', '                            from both the HTTP and HTTPS protocol are permitted.')
            fprintf('%s\n', '    --ip                  : Specifies the IP address or range of IP addresses from which to accept')
            fprintf('%s\n', '                            requests. Supports only IPv4 style addresses.')
            fprintf('%s\n', '    --permissions         : The permissions the SAS grants. Allowed values: (a)dd (c)reate (d)elete')
            fprintf('%s\n', '                            (l)ist (r)ead (w)rite. Do not use if a stored access policy is')
            fprintf('%s\n', '                            referenced with --id that specifies this value. Can be combined.')
            fprintf('%s\n', '    --policy-name         : The name of a stored access policy within the container''s ACL.')
            fprintf('%s\n', '    --start               : Specifies the UTC datetime (Y-m-d''T''H:M''Z'') at which the SAS becomes')
            fprintf('%s\n', '                            valid. Do not use if a stored access policy is referenced with --id that')
            fprintf('%s\n', '                            specifies this value. Defaults to the time of the request.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key         : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                            name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                            account key or a SAS token. If neither are present, the command will try')
            fprintf('%s\n', '                            to query the storage account key using the authenticated Azure account.')
            fprintf('%s\n', '                            If a large number of storage commands are executed the API quota may be')
            fprintf('%s\n', '                            hit.')
            fprintf('%s\n', '    --connection-string   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Generate a sas token for blob container and use it to upload a blob.')
            fprintf('%s\n', '        end=`date -u -d "30 minutes" ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        sas=`az storage container generate-sas -n mycontainer --https-only --permissions dlrw')
            fprintf('%s\n', '        --expiry $end -o tsv`')
            fprintf('%s\n', '        az storage blob upload -n MyBlob -c mycontainer -f file.txt --sas-token $sas')
            fprintf('%s\n', '    Generate a shared access signature for the container (autogenerated)')
            fprintf('%s\n', '        az storage container generate-sas --account-key 00000000 --account-name mystorageaccount')
            fprintf('%s\n', '        --expiry 2020-01-01 --name mycontainer --permissions dlrw')
            fprintf('%s\n', '    Generate a SAS token for a storage container. (autogenerated)')
            fprintf('%s\n', '        az storage container generate-sas --account-name mystorageaccount --as-user --auth-mode')
            fprintf('%s\n', '        login --expiry 2020-01-01 --name container1 --permissions dlrw')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage container generate-sas"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate_sas 
