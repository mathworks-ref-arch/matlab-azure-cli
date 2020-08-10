classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az storage message delete : Deletes the specified message.
            % Normally after a client retrieves a message with the get_messages operation,  the client is
            % expected to process and delete the message. To delete the  message, you must have two items
            % of data: id and pop_receipt. The  id is returned from the previous get_messages operation.
            % The  pop_receipt is returned from the most recent :func:`~get_messages` or
            % :func:`~update_message` operation. In order for the delete_message operation  to succeed,
            % the pop_receipt specified on the request must match the  pop_receipt returned from the
            % :func:`~get_messages` or :func:`~update_message`  operation.
            this.BaseCmd = 'az storage message delete ';
        end
        function this = id(this, varargin)
            % The message id identifying the message to delete.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = pop_receipt(this, varargin)
            % A valid pop receipt value returned from an earlier call to the :func:`~get_messages` or :func:`~update_message`.
            this.Options = [this.Options, '--pop-receipt', varargin{:}];
        end

        function this = queue_name(this, varargin)
            % The queue name.
            this.Options = [this.Options, '--queue-name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage message delete"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage message delete : Deletes the specified message.')
            fprintf('%s\n', '        Normally after a client retrieves a message with the get_messages operation,  the client is')
            fprintf('%s\n', '        expected to process and delete the message. To delete the  message, you must have two items')
            fprintf('%s\n', '        of data: id and pop_receipt. The  id is returned from the previous get_messages operation.')
            fprintf('%s\n', '        The  pop_receipt is returned from the most recent :func:`~get_messages` or')
            fprintf('%s\n', '        :func:`~update_message` operation. In order for the delete_message operation  to succeed,')
            fprintf('%s\n', '        the pop_receipt specified on the request must match the  pop_receipt returned from the')
            fprintf('%s\n', '        :func:`~get_messages` or :func:`~update_message`  operation.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --id            [Required] : The message id identifying the message to delete.')
            fprintf('%s\n', '    --pop-receipt   [Required] : A valid pop receipt value returned from an earlier call to the')
            fprintf('%s\n', '                                 :func:`~get_messages` or :func:`~update_message`.')
            fprintf('%s\n', '    --queue-name -q [Required] : The queue name.')
            fprintf('%s\n', '    --auth-mode                : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                 use your login credentials for the authentication. The legacy "key"')
            fprintf('%s\n', '                                 mode will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                 parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage message delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
