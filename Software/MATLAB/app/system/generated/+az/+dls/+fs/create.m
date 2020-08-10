classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dls fs create : Creates a file or folder in a Data Lake Store account.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls fs create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = path(this, varargin)
            % The path in the specified Data Lake Store account where the action should take place. In the format '/folder/file.txt', where the first '/' after the DNS indicates the root of the file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = content(this, varargin)
            % Content for the file to contain upon creation.
            this.Options = [this.Options, '--content', varargin{:}];
        end

        function this = folder(this, varargin)
            % Indicates that this new item is a folder and not a file.
            this.Options = [this.Options, '--folder', varargin{:}];
        end

        function this = force(this, varargin)
            % Indicates that, if the file or folder exists, it should be overwritten.
            this.Options = [this.Options, '--force', varargin{:}];
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
            fprintf('%s\n', '    az dls fs create : Creates a file or folder in a Data Lake Store account.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n [Required] : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --path       [Required] : The path in the specified Data Lake Store account where the action')
            fprintf('%s\n', '                              should take place. In the format ''/folder/file.txt'', where the first')
            fprintf('%s\n', '                              ''/'' after the DNS indicates the root of the file system.')
            fprintf('%s\n', '    --content               : Content for the file to contain upon creation.')
            fprintf('%s\n', '    --folder                : Indicates that this new item is a folder and not a file.')
            fprintf('%s\n', '    --force                 : Indicates that, if the file or folder exists, it should be')
            fprintf('%s\n', '                              overwritten.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Creates a file or folder in a Data Lake Store account. (autogenerated)')
            fprintf('%s\n', '        az dls fs create --account {account} --folder  --path {path}')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls fs create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
