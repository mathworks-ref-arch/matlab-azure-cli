classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az postgres db create : Create a PostgreSQL database.
            this.BaseCmd = 'az postgres db create ';
        end
        function this = name(this, varargin)
            % The name of the database.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server_name(this, varargin)
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--server-name', varargin{:}];
        end

        function this = charset(this, varargin)
            % The charset of the database.
            this.Options = [this.Options, '--charset', varargin{:}];
        end

        function this = collation(this, varargin)
            % The collation of the database.
            this.Options = [this.Options, '--collation', varargin{:}];
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
            fprintf('%s\n', '    az postgres db create : Create a PostgreSQL database.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the database.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server-name -s    [Required] : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                     letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                     characters and maximum 63 characters.')
            fprintf('%s\n', '    --charset                      : The charset of the database.')
            fprintf('%s\n', '    --collation                    : The collation of the database.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create database ''testdb'' in the server ''testsvr'' with the default parameters.')
            fprintf('%s\n', '        az postgres db create -g testgroup -s testsvr -n testdb')
            fprintf('%s\n', '    Create database ''testdb'' in server ''testsvr'' with a given character set and collation rules.')
            fprintf('%s\n', '        az postgres db create -g testgroup -s testsvr -n testdb --charset {valid_charset}')
            fprintf('%s\n', '        --collation {valid_collation}')
            fprintf('%s\n', 'For more specific examples, use: az find "az postgres db create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
