classdef put < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = put()
            % az storage message put : Adds a new message to the back of the message queue.
            % The visibility timeout specifies the time that the message will be  invisible. After the
            % timeout expires, the message will become visible.  If a visibility timeout is not specified,
            % the default value of 0 is used.  The message time-to-live specifies how long a message will
            % remain in the  queue. The message will be deleted from the queue when the time-to-live
            % period expires.  If the key-encryption-key field is set on the local service object, this
            % method will encrypt the content before uploading.
            this.BaseCmd = 'az storage message put ';
        end
        function this = content(this, varargin)
            % Message content, up to 64KB in size.
            this.Options = [this.Options, '--content', varargin{:}];
        end

        function this = queue_name(this, varargin)
            % The queue name.
            this.Options = [this.Options, '--queue-name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = time_to_live(this, varargin)
            % Specifies the time-to-live interval for the message, in seconds. The time-to-live may be any positive number or -1 for infinity. If this parameter is omitted, the default time-to-live is 7 days.
            this.Options = [this.Options, '--time-to-live', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = visibility_timeout(this, varargin)
            % If not specified, the default value is 0. Specifies the new visibility timeout value, in seconds, relative to server time. The value must be larger than or equal to 0, and cannot be larger than 7 days. The visibility timeout of a message cannot be set to a value later than the expiry time. visibility_timeout should be set to a value smaller than the time-to-live value. Storage Account Arguments
            this.Options = [this.Options, '--visibility-timeout', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage message put"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage message put : Adds a new message to the back of the message queue.')
            fprintf('%s\n', '        The visibility timeout specifies the time that the message will be  invisible. After the')
            fprintf('%s\n', '        timeout expires, the message will become visible.  If a visibility timeout is not specified,')
            fprintf('%s\n', '        the default value of 0 is used.  The message time-to-live specifies how long a message will')
            fprintf('%s\n', '        remain in the  queue. The message will be deleted from the queue when the time-to-live')
            fprintf('%s\n', '        period expires.  If the key-encryption-key field is set on the local service object, this')
            fprintf('%s\n', '        method will encrypt the content before uploading.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --content       [Required] : Message content, up to 64KB in size.')
            fprintf('%s\n', '    --queue-name -q [Required] : The queue name.')
            fprintf('%s\n', '    --auth-mode                : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                 use your login credentials for the authentication. The legacy "key"')
            fprintf('%s\n', '                                 mode will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                 parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --time-to-live             : Specifies the time-to-live interval for the message, in seconds.')
            fprintf('%s\n', '                                 The time-to-live may be any positive number or -1 for infinity. If')
            fprintf('%s\n', '                                 this parameter is omitted, the default time-to-live is 7 days.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --visibility-timeout       : If not specified, the default value is 0. Specifies the new')
            fprintf('%s\n', '                                 visibility timeout value, in seconds, relative to server time. The')
            fprintf('%s\n', '                                 value must be larger than or equal to 0, and cannot be larger than')
            fprintf('%s\n', '                                 7 days. The visibility timeout of a message cannot be set to a')
            fprintf('%s\n', '                                 value later than the expiry time. visibility_timeout should be set')
            fprintf('%s\n', '                                 to a value smaller than the time-to-live value.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key              : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                 account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name             : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                 storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                 command will try to query the storage account key using the')
            fprintf('%s\n', '                                 authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                 are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string        : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                 storage account name. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage message put"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class put 
