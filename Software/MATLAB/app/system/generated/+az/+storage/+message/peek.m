classdef peek < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = peek()
            % az storage message peek : Retrieves one or more messages from the front of the queue, but does
            % not alter the visibility of the message.
            % Only messages that are visible may be retrieved. When a message is retrieved  for the first
            % time with a call to get_messages, its dequeue_count property  is set to 1. If it is not
            % deleted and is subsequently retrieved again, the  dequeue_count property is incremented. The
            % client may use this value to  determine how many times a message has been retrieved. Note
            % that a call  to peek_messages does not increment the value of DequeueCount, but returns
            % this value for the client to read.  If the key-encryption-key or resolver field is set on
            % the local service object, the messages will be decrypted before being returned.
            this.BaseCmd = 'az storage message peek ';
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
            % A nonzero integer value that specifies the number of messages to peek from the queue, up to a maximum of 32. By default, a single message is peeked from the queue with this operation.
            this.Options = [this.Options, '--num-messages', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Storage Account Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage message peek"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage message peek : Retrieves one or more messages from the front of the queue, but does')
            fprintf('%s\n', '    not alter the visibility of the message.')
            fprintf('%s\n', '        Only messages that are visible may be retrieved. When a message is retrieved  for the first')
            fprintf('%s\n', '        time with a call to get_messages, its dequeue_count property  is set to 1. If it is not')
            fprintf('%s\n', '        deleted and is subsequently retrieved again, the  dequeue_count property is incremented. The')
            fprintf('%s\n', '        client may use this value to  determine how many times a message has been retrieved. Note')
            fprintf('%s\n', '        that a call  to peek_messages does not increment the value of DequeueCount, but returns')
            fprintf('%s\n', '        this value for the client to read.  If the key-encryption-key or resolver field is set on')
            fprintf('%s\n', '        the local service object, the messages will be decrypted before being returned.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --queue-name -q [Required] : The queue name.')
            fprintf('%s\n', '    --auth-mode                : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                 use your login credentials for the authentication. The legacy "key"')
            fprintf('%s\n', '                                 mode will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                 parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --num-messages             : A nonzero integer value that specifies the number of messages to')
            fprintf('%s\n', '                                 peek from the queue, up to a maximum of 32. By default, a single')
            fprintf('%s\n', '                                 message is peeked from the queue with this operation.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage message peek"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class peek 
