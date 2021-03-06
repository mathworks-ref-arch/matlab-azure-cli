classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az ad group owner remove : Remove a group owner.
            this.BaseCmd = 'az ad group owner remove ';
        end
        function this = group(this, varargin)
            % Group's object id or display name(prefix also works if there is a unique match).
            this.Options = [this.Options, '--group', varargin{:}];
        end

        function this = owner_object_id(this, varargin)
            % Owner's object id.
            this.Options = [this.Options, '--owner-object-id', varargin{:}];
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
            fprintf('%s\n', '    az ad group owner remove : Remove a group owner.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --group -g        [Required] : Group''s object id or display name(prefix also works if there is a')
            fprintf('%s\n', '                                   unique match).')
            fprintf('%s\n', '    --owner-object-id [Required] : Owner''s object id.')
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
            fprintf('%s\n', '    remove a group owner. (autogenerated)')
            fprintf('%s\n', '        az ad group owner remove --group MyGroupDisplayName --owner-object-id xxxxxxxx-xxxx-xxxx-')
            fprintf('%s\n', '        xxxx-xxxxxxxxxxxx')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad group owner remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
