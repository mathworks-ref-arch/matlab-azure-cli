classdef release < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = release()
            % az storage blob lease release : Release the lease.
            % The lease may be released if the client lease id specified matches that associated with the
            % container or blob. Releasing the lease allows another client to immediately acquire the
            % lease for the container or blob as soon as the release is complete.  :keyword
            % ~datetime.datetime if_modified_since:     A DateTime value. Azure expects the date value
            % passed in to be UTC.     If timezone is included, any non-UTC datetimes will be converted to
            % UTC.     If a date is passed in without timezone info, it is assumed to be UTC.     Specify
            % this header to perform the operation only     if the resource has been modified since the
            % specified time. :keyword ~datetime.datetime if_unmodified_since:     A DateTime value. Azure
            % expects the date value passed in to be UTC.     If timezone is included, any non-UTC
            % datetimes will be converted to UTC.     If a date is passed in without timezone info, it is
            % assumed to be UTC.     Specify this header to perform the operation only if     the resource
            % has not been modified since the specified date/time. :keyword str etag:     An ETag value,
            % or the wildcard character (*). Used to check if the resource has changed,     and act
            % according to the condition specified by the `match_condition` parameter. :keyword
            % ~azure.core.MatchConditions match_condition:     The match condition to use upon the etag.
            % :keyword int timeout:     The timeout parameter is expressed in seconds. :return: None.
            this.BaseCmd = 'az storage blob lease release ';
        end
        function this = blob_name(this, varargin)
            % The blob name.
            this.Options = [this.Options, '--blob-name', varargin{:}];
        end

        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % Required if the blob has an active lease.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Precondition Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag matches the value specified.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % Commence only if modified since supplied UTC datetime (Y-m-d'T'H:M'Z').
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag does not match the value specified. Specify the wildcard character (*) to perform the operation only if the resource does not exist, and fail the operation if it does exist.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % Commence only if unmodified since supplied UTC datetime (Y-m-d'T'H:M'Z'). Storage Account Arguments
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
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

        function this = sas_token(this, varargin)
            % A Shared Access Signature (SAS). Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.
            this.Options = [this.Options, '--sas-token', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage blob lease release"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage blob lease release : Release the lease.')
            fprintf('%s\n', '        The lease may be released if the client lease id specified matches that associated with the')
            fprintf('%s\n', '        container or blob. Releasing the lease allows another client to immediately acquire the')
            fprintf('%s\n', '        lease for the container or blob as soon as the release is complete.  :keyword')
            fprintf('%s\n', '        ~datetime.datetime if_modified_since:     A DateTime value. Azure expects the date value')
            fprintf('%s\n', '        passed in to be UTC.     If timezone is included, any non-UTC datetimes will be converted to')
            fprintf('%s\n', '        UTC.     If a date is passed in without timezone info, it is assumed to be UTC.     Specify')
            fprintf('%s\n', '        this header to perform the operation only     if the resource has been modified since the')
            fprintf('%s\n', '        specified time. :keyword ~datetime.datetime if_unmodified_since:     A DateTime value. Azure')
            fprintf('%s\n', '        expects the date value passed in to be UTC.     If timezone is included, any non-UTC')
            fprintf('%s\n', '        datetimes will be converted to UTC.     If a date is passed in without timezone info, it is')
            fprintf('%s\n', '        assumed to be UTC.     Specify this header to perform the operation only if     the resource')
            fprintf('%s\n', '        has not been modified since the specified date/time. :keyword str etag:     An ETag value,')
            fprintf('%s\n', '        or the wildcard character (*). Used to check if the resource has changed,     and act')
            fprintf('%s\n', '        according to the condition specified by the `match_condition` parameter. :keyword')
            fprintf('%s\n', '        ~azure.core.MatchConditions match_condition:     The match condition to use upon the etag.')
            fprintf('%s\n', '        :keyword int timeout:     The timeout parameter is expressed in seconds. :return: None.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --blob-name -b      [Required] : The blob name.')
            fprintf('%s\n', '    --container-name -c [Required] : The container name.')
            fprintf('%s\n', '    --lease-id          [Required] : Required if the blob has an active lease.')
            fprintf('%s\n', '    --auth-mode                    : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                     directly use your login credentials for the authentication. The')
            fprintf('%s\n', '                                     legacy "key" mode will attempt to query for an account key if')
            fprintf('%s\n', '                                     no authentication parameters for the account are provided.')
            fprintf('%s\n', '                                     Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                     key, login.')
            fprintf('%s\n', '    --timeout                      : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                     service.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                     : An ETag value, or the wildcard character (*). Specify this')
            fprintf('%s\n', '                                     header to perform the operation only if the resource''s ETag')
            fprintf('%s\n', '                                     matches the value specified.')
            fprintf('%s\n', '    --if-modified-since            : Commence only if modified since supplied UTC datetime')
            fprintf('%s\n', '                                     (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-none-match                : An ETag value, or the wildcard character (*). Specify this')
            fprintf('%s\n', '                                     header to perform the operation only if the resource''s ETag')
            fprintf('%s\n', '                                     does not match the value specified. Specify the wildcard')
            fprintf('%s\n', '                                     character (*) to perform the operation only if the resource')
            fprintf('%s\n', '                                     does not exist, and fail the operation if it does exist.')
            fprintf('%s\n', '    --if-unmodified-since          : Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                                     (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                  : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                     account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                 : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                     storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                     command will try to query the storage account key using the')
            fprintf('%s\n', '                                     authenticated Azure account. If a large number of storage')
            fprintf('%s\n', '                                     commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string            : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                    : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                     with storage account name. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_SAS_TOKEN.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob lease release"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class release 
