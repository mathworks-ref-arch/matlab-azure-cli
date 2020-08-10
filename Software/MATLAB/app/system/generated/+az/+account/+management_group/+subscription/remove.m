classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az account management-group subscription remove : Remove an existing subscription from a
            % management group.
            % Remove an existing subscription from a management group.
            this.BaseCmd = 'az account management-group subscription remove ';
        end
        function this = name(this, varargin)
            % Name of the management group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Subscription Id or Name.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            fprintf('%s\n', '    az account management-group subscription remove : Remove an existing subscription from a')
            fprintf('%s\n', '    management group.')
            fprintf('%s\n', '        Remove an existing subscription from a management group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n         [Required] : Name of the management group.')
            fprintf('%s\n', '    --subscription -s [Required] : Subscription Id or Name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Remove an existing subscription from a management group.')
            fprintf('%s\n', '        az account management-group subscription remove --name GroupName --subscription Subscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az account management-group subscription remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
