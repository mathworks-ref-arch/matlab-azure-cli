classdef get < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get()
            % az storage message get : Retrieves one or more messages from the front of the queue.
            % When a message is retrieved from the queue, the response includes the message  content and a
            % pop_receipt value, which is required to delete the message.  The message is not
            % automatically deleted from the queue, but after it has  been retrieved, it is not visible to
            % other clients for the time interval  specified by the visibility_timeout parameter.  If the
            % key-encryption-key or resolver field is set on the local service object, the messages will
            % be decrypted before being returned.
            this.BaseCmd = 'az storage message get ';
        end
        function this = queue_name(this, varargin)
            % The queue name.
            this.Options = [this.Options, '--queue-name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = num_messages(this, varargin)
            % A nonzero integer value that specifies the number of messages to retrieve from the queue, up to a maximum of 32. If fewer are visible, the visible messages are returned. By default, a single message is retrieved from the queue with this operation.
            this.Options = [this.Options, '--num-messages', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = visibility_timeout(this, varargin)
            % Specifies the new visibility timeout value, in seconds, relative to server time. The new value must be larger than or equal to 1 second, and cannot be larger than 7 days. The visibility timeout of a message can be set to a value later than the expiry time. Storage Account Arguments
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage message get"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage message get : Retrieves one or more messages from the front of the queue.')
            fprintf('%s\n', '        When a message is retrieved from the queue, the response includes the message  content and a')
            fprintf('%s\n', '        pop_receipt value, which is required to delete the message.  The message is not')
            fprintf('%s\n', '        automatically deleted from the queue, but after it has  been retrieved, it is not visible to')
            fprintf('%s\n', '        other clients for the time interval  specified by the visibility_timeout parameter.  If the')
            fprintf('%s\n', '        key-encryption-key or resolver field is set on the local service object, the messages will')
            fprintf('%s\n', '        be decrypted before being returned.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --queue-name -q [Required] : The queue name.')
            fprintf('%s\n', '    --auth-mode                : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                 use your login credentials for the authentication. The legacy "key"')
            fprintf('%s\n', '                                 mode will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                 parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --num-messages             : A nonzero integer value that specifies the number of messages to')
            fprintf('%s\n', '                                 retrieve from the queue, up to a maximum of 32. If fewer are')
            fprintf('%s\n', '                                 visible, the visible messages are returned. By default, a single')
            fprintf('%s\n', '                                 message is retrieved from the queue with this operation.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --visibility-timeout       : Specifies the new visibility timeout value, in seconds, relative to')
            fprintf('%s\n', '                                 server time. The new value must be larger than or equal to 1')
            fprintf('%s\n', '                                 second, and cannot be larger than 7 days. The visibility timeout of')
            fprintf('%s\n', '                                 a message can be set to a value later than the expiry time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage message get"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get 
