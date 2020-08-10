classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az ad app credential delete : Delete an application's password or certificate credentials.
            this.BaseCmd = 'az ad app credential delete ';
        end
        function this = id(this, varargin)
            % Identifier uri, application id, or object id.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = key_id(this, varargin)
            % Credential key id.
            this.Options = [this.Options, '--key-id', varargin{:}];
        end

        function this = cert(this, varargin)
            % A certificate based credential.
            this.Options = [this.Options, '--cert', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad app credential delete : Delete an application''s password or certificate credentials.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --id     [Required] : Identifier uri, application id, or object id.')
            fprintf('%s\n', '    --key-id [Required] : Credential key id.')
            fprintf('%s\n', '    --cert              : A certificate based credential.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    delete an application''s password or certificate credentials (autogenerated)')
            fprintf('%s\n', '        az ad app credential delete --id 00000000-0000-0000-0000-000000000000 --key-id xxxxxxxx-')
            fprintf('%s\n', '        xxxx-xxxx-xxxx-xxxxxxxxxxxx')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app credential delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
