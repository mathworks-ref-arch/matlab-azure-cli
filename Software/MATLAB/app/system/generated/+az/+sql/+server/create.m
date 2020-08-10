classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql server create : Create a server.
            this.BaseCmd = 'az sql server create ';
        end
        function this = admin_password(this, varargin)
            % The administrator login password (required for server creation).
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_user(this, varargin)
            % Administrator username for the server. Once created it cannot be changed.
            this.Options = [this.Options, '--admin-user', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql- server=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign an Azure Active Directory Identity for this serverfor use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = enable_public_network(this, varargin)
            % Set whether public network access to server is allowed or not. When false,only connections made through Private Links can reach this server.  Allowed values: false, true. Argument '--enable-public-network' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-public-network', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = minimal_tls_version(this, varargin)
            % The minimal TLS version enforced by the sql server for inbound connections.  Allowed values: 1.0, 1.1, 1.2.
            this.Options = [this.Options, '--minimal-tls-version', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az sql server create : Create a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-password -p       [Required] : The administrator login password (required for server')
            fprintf('%s\n', '                                           creation).')
            fprintf('%s\n', '    --admin-user -u           [Required] : Administrator username for the server. Once created it')
            fprintf('%s\n', '                                           cannot be changed.')
            fprintf('%s\n', '    --name -n                 [Required] : Name of the Azure SQL server. You can configure the')
            fprintf('%s\n', '                                           default using `az configure --defaults sql-')
            fprintf('%s\n', '                                           server=<name>`.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --assign-identity -i                 : Generate and assign an Azure Active Directory Identity')
            fprintf('%s\n', '                                           for this serverfor use with key management services like')
            fprintf('%s\n', '                                           Azure KeyVault.')
            fprintf('%s\n', '    --enable-public-network -e [Preview] : Set whether public network access to server is')
            fprintf('%s\n', '                                           allowed or not. When false,only connections made through')
            fprintf('%s\n', '                                           Private Links can reach this server.  Allowed values:')
            fprintf('%s\n', '                                           false, true.')
            fprintf('%s\n', '        Argument ''--enable-public-network'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --location -l                        : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --minimal-tls-version                : The minimal TLS version enforced by the sql server for')
            fprintf('%s\n', '                                           inbound connections.  Allowed values: 1.0, 1.1, 1.2.')
            fprintf('%s\n', '    --no-wait                            : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a server.')
            fprintf('%s\n', '        az sql server create -l westus -g mygroup -n myserver -u myadminuser -p myadminpassword')
            fprintf('%s\n', '    Create a server with disabled public network access to server.')
            fprintf('%s\n', '        az sql server create -l westus -g mygroup -n myserver -u myadminuser -p myadminpassword -e')
            fprintf('%s\n', '        false')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql server create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
