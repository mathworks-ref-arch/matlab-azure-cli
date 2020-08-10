classdef get_member_groups < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_member_groups()
            % az ad group get-member-groups : Gets a collection of object IDs of groups of which the specified
            % group is a member.
            this.BaseCmd = 'az ad group get-member-groups ';
        end
        function this = group(this, varargin)
            % Group's object id or display name(prefix also works if there is a unique match).
            this.Options = [this.Options, '--group', varargin{:}];
        end

        function this = additional_properties(this, varargin)
            % Unmatched properties from the message are deserialized this collection.
            this.Options = [this.Options, '--additional-properties', varargin{:}];
        end

        function this = security_enabled_only(this, varargin)
            % If true, only membership in security-enabled groups should be checked. Otherwise, membership in all groups should be checked.  Allowed values: false, true.
            this.Options = [this.Options, '--security-enabled-only', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ad group get-member-groups"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad group get-member-groups : Gets a collection of object IDs of groups of which the specified')
            fprintf('%s\n', '    group is a member.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --group -g   [Required] : Group''s object id or display name(prefix also works if there is a')
            fprintf('%s\n', '                              unique match).')
            fprintf('%s\n', '    --additional-properties : Unmatched properties from the message are deserialized this')
            fprintf('%s\n', '                              collection.')
            fprintf('%s\n', '    --security-enabled-only : If true, only membership in security-enabled groups should be checked.')
            fprintf('%s\n', '                              Otherwise, membership in all groups should be checked.  Allowed')
            fprintf('%s\n', '                              values: false, true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad group get-member-groups"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_member_groups 
