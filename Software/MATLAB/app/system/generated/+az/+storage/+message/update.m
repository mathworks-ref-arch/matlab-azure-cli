classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage message update : Updates the visibility timeout of a message.
            % You can also use this operation to update the contents of a message.  This operation can be
            % used to continually extend the invisibility of a  queue message. This functionality can be
            % useful if you want a worker role  to "lease" a queue message. For example, if a worker role
            % calls get_messages  and recognizes that it needs more time to process a message, it can
            % continually extend the message's invisibility until it is processed. If  the worker role
            % were to fail during processing, eventually the message  would become visible again and
            % another worker role could process it.  If the key-encryption-key field is set on the local
            % service object, this method will encrypt the content before uploading.
            this.BaseCmd = 'az storage message update ';
        end
        function this = id(this, varargin)
            % The message id identifying the message to update.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = pop_receipt(this, varargin)
            % A valid pop receipt value returned from an earlier call to the :func:`~get_messages` or :func:`~update_message` operation.
            this.Options = [this.Options, '--pop-receipt', varargin{:}];
        end

        function this = queue_name(this, varargin)
            % The queue name.
            this.Options = [this.Options, '--queue-name', varargin{:}];
        end

        function this = visibility_timeout(this, varargin)
            % Specifies the new visibility timeout value, in seconds, relative to server time. The new value must be larger than or equal to 0, and cannot be larger than 7 days. The visibility timeout of a message cannot be set to a value later than the expiry time. A message can be updated until it has been deleted or has expired.
            this.Options = [this.Options, '--visibility-timeout', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = content(this, varargin)
            % Message content, up to 64KB in size.
            this.Options = [this.Options, '--content', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage message update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage message update : Updates the visibility timeout of a message.')
            fprintf('%s\n', '        You can also use this operation to update the contents of a message.  This operation can be')
            fprintf('%s\n', '        used to continually extend the invisibility of a  queue message. This functionality can be')
            fprintf('%s\n', '        useful if you want a worker role  to "lease" a queue message. For example, if a worker role')
            fprintf('%s\n', '        calls get_messages  and recognizes that it needs more time to process a message, it can')
            fprintf('%s\n', '        continually extend the message''s invisibility until it is processed. If  the worker role')
            fprintf('%s\n', '        were to fail during processing, eventually the message  would become visible again and')
            fprintf('%s\n', '        another worker role could process it.  If the key-encryption-key field is set on the local')
            fprintf('%s\n', '        service object, this method will encrypt the content before uploading.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --id                 [Required] : The message id identifying the message to update.')
            fprintf('%s\n', '    --pop-receipt        [Required] : A valid pop receipt value returned from an earlier call to the')
            fprintf('%s\n', '                                      :func:`~get_messages` or :func:`~update_message` operation.')
            fprintf('%s\n', '    --queue-name -q      [Required] : The queue name.')
            fprintf('%s\n', '    --visibility-timeout [Required] : Specifies the new visibility timeout value, in seconds,')
            fprintf('%s\n', '                                      relative to server time. The new value must be larger than or')
            fprintf('%s\n', '                                      equal to 0, and cannot be larger than 7 days. The visibility')
            fprintf('%s\n', '                                      timeout of a message cannot be set to a value later than the')
            fprintf('%s\n', '                                      expiry time. A message can be updated until it has been')
            fprintf('%s\n', '                                      deleted or has expired.')
            fprintf('%s\n', '    --auth-mode                     : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                      directly use your login credentials for the authentication.')
            fprintf('%s\n', '                                      The legacy "key" mode will attempt to query for an account key')
            fprintf('%s\n', '                                      if no authentication parameters for the account are provided.')
            fprintf('%s\n', '                                      Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed')
            fprintf('%s\n', '                                      values: key, login.')
            fprintf('%s\n', '    --content                       : Message content, up to 64KB in size.')
            fprintf('%s\n', '    --timeout                       : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                      service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                   : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                      account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                  : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                      AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                      storage account key or a SAS token. If neither are present,')
            fprintf('%s\n', '                                      the command will try to query the storage account key using')
            fprintf('%s\n', '                                      the authenticated Azure account. If a large number of storage')
            fprintf('%s\n', '                                      commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string             : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                      AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                     : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                      with storage account name. Environment variable:')
            fprintf('%s\n', '                                      AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage message update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
