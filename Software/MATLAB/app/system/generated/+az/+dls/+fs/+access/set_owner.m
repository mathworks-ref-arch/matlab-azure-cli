classdef set_owner < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_owner()
            % az dls fs access set-owner : Set the owner information for a file or folder in a Data Lake Store
            % account.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls fs access set-owner ';
        end
        function this = path(this, varargin)
            % The path in the specified Data Lake Store account where the action should take place. In the format '/folder/file.txt', where the first '/' after the DNS indicates the root of the file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = group(this, varargin)
            % The group Azure Active Directory object ID or user principal name to set as the owning group.
            this.Options = [this.Options, '--group', varargin{:}];
        end

        function this = owner(this, varargin)
            % The user Azure Active Directory object ID or user principal name to set as the owner.
            this.Options = [this.Options, '--owner', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dls fs access set-owner"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dls fs access set-owner : Set the owner information for a file or folder in a Data Lake Store')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --path  [Required] : The path in the specified Data Lake Store account where the action should')
            fprintf('%s\n', '                         take place. In the format ''/folder/file.txt'', where the first ''/'' after the')
            fprintf('%s\n', '                         DNS indicates the root of the file system.')
            fprintf('%s\n', '    --group            : The group Azure Active Directory object ID or user principal name to set as')
            fprintf('%s\n', '                         the owning group.')
            fprintf('%s\n', '    --owner            : The user Azure Active Directory object ID or user principal name to set as')
            fprintf('%s\n', '                         the owner.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n       : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --ids              : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                         resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                         should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls fs access set-owner"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_owner 
