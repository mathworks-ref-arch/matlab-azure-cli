classdef reset < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset()
            % az batch node user reset : Update the properties of a user account on a Batch compute node.
            % Unspecified properties which can be updated are reset to their defaults.
            this.BaseCmd = 'az batch node user reset ';
        end
        function this = node_id(this, varargin)
            % The ID of the machine on which you want to update a user Account.
            this.Options = [this.Options, '--node-id', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool that contains the Compute Node.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = user_name(this, varargin)
            % The name of the user Account to update.
            this.Options = [this.Options, '--user-name', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the node update user parameter specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Node Update User Arguments' are ignored.
            this.Options = [this.Options, '--json-file', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node user reset"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Node Update User Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = expiry_time(this, varargin)
            % The time at which the Account should expire. If omitted, the default is 1 day from the current time. For Linux Compute Nodes, the expiryTime has a precision up to a day. Expected format is an ISO-8601 timestamp.
            this.Options = [this.Options, '--expiry-time', varargin{:}];
        end

        function this = password(this, varargin)
            % The password of the Account. The password is required for Windows Compute Nodes (those created with 'cloudServiceConfiguration', or created with 'virtualMachineConfiguration' using a Windows Image reference). For Linux Compute Nodes, the password can optionally be specified along with the sshPublicKey property. If omitted, any existing password is removed.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = ssh_public_key(this, varargin)
            % The SSH public key that can be used for remote login to the Compute Node. The public key should be compatible with OpenSSH encoding and should be base 64 encoded. This property can be specified only for Linux Compute Nodes. If this is specified for a Windows Compute Node, then the Batch service rejects the request; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request). If omitted, any existing SSH public key is removed.
            this.Options = [this.Options, '--ssh-public-key', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch node user reset : Update the properties of a user account on a Batch compute node.')
            fprintf('%s\n', '    Unspecified properties which can be updated are reset to their defaults.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --node-id   [Required] : The ID of the machine on which you want to update a user Account.')
            fprintf('%s\n', '    --pool-id   [Required] : The ID of the Pool that contains the Compute Node.')
            fprintf('%s\n', '    --user-name [Required] : The name of the user Account to update.')
            fprintf('%s\n', '    --json-file            : A file containing the node update user parameter specification in JSON')
            fprintf('%s\n', '                             (formatted to match the respective REST API body). If this parameter is')
            fprintf('%s\n', '                             specified, all ''Node Update User Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint     : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key          : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name         : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                             AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Node Update User Arguments')
            fprintf('%s\n', '    --expiry-time          : The time at which the Account should expire. If omitted, the default is')
            fprintf('%s\n', '                             1 day from the current time. For Linux Compute Nodes, the expiryTime')
            fprintf('%s\n', '                             has a precision up to a day. Expected format is an ISO-8601 timestamp.')
            fprintf('%s\n', '    --password             : The password of the Account. The password is required for Windows')
            fprintf('%s\n', '                             Compute Nodes (those created with ''cloudServiceConfiguration'', or')
            fprintf('%s\n', '                             created with ''virtualMachineConfiguration'' using a Windows Image')
            fprintf('%s\n', '                             reference). For Linux Compute Nodes, the password can optionally be')
            fprintf('%s\n', '                             specified along with the sshPublicKey property. If omitted, any')
            fprintf('%s\n', '                             existing password is removed.')
            fprintf('%s\n', '    --ssh-public-key       : The SSH public key that can be used for remote login to the Compute')
            fprintf('%s\n', '                             Node. The public key should be compatible with OpenSSH encoding and')
            fprintf('%s\n', '                             should be base 64 encoded. This property can be specified only for')
            fprintf('%s\n', '                             Linux Compute Nodes. If this is specified for a Windows Compute Node,')
            fprintf('%s\n', '                             then the Batch service rejects the request; if you are calling the REST')
            fprintf('%s\n', '                             API directly, the HTTP status code is 400 (Bad Request). If omitted,')
            fprintf('%s\n', '                             any existing SSH public key is removed.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node user reset"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset 
