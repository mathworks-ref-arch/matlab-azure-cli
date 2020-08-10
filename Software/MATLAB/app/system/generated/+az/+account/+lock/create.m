classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az account lock create : Create a subscription lock.
            this.BaseCmd = 'az account lock create ';
        end
        function this = lock_type(this, varargin)
            % The type of lock restriction.  Allowed values: CanNotDelete, ReadOnly.
            this.Options = [this.Options, '--lock-type', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the lock.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = notes(this, varargin)
            % Notes about this lock.
            this.Options = [this.Options, '--notes', varargin{:}];
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
            fprintf('%s\n', '    az account lock create : Create a subscription lock.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lock-type -t [Required] : The type of lock restriction.  Allowed values: CanNotDelete,')
            fprintf('%s\n', '                                ReadOnly.')
            fprintf('%s\n', '    --name -n      [Required] : Name of the lock.')
            fprintf('%s\n', '    --notes                   : Notes about this lock.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a read-only subscription level lock.')
            fprintf('%s\n', '        az account lock create --lock-type ReadOnly -n lockName')
            fprintf('%s\n', 'For more specific examples, use: az find "az account lock create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
