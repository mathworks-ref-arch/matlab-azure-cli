classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az staticwebapp users update : Updates a user entry with the listed roles. Either user details
            % or user id is required.
            % Command group 'staticwebapp users' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az staticwebapp users update ';
        end
        function this = name(this, varargin)
            % Name of the static site.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = roles(this, varargin)
            % Comma-separated default or user-defined role names. Roles that can be assigned to a user are comma separated and case-insensitive (at most 50 roles up to 25 characters each and restricted to 0-9,A-Z,a-z, and _). Define roles in routes.json during root directory of your GitHub repo.
            this.Options = [this.Options, '--roles', varargin{:}];
        end

        function this = authentication_provider(this, varargin)
            % Authentication provider of the user identity such as AAD, Facebook, GitHub, Google, Twitter.
            this.Options = [this.Options, '--authentication-provider', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = user_details(this, varargin)
            % Email for AAD, Facebook, and Google. Account name (handle) for GitHub and Twitter.
            this.Options = [this.Options, '--user-details', varargin{:}];
        end

        function this = user_id(this, varargin)
            % Given id of registered user.
            this.Options = [this.Options, '--user-id', varargin{:}];
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
            fprintf('%s\n', '    az staticwebapp users update : Updates a user entry with the listed roles. Either user details')
            fprintf('%s\n', '    or user id is required.')
            fprintf('%s\n', '        Command group ''staticwebapp users'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n      [Required] : Name of the static site.')
            fprintf('%s\n', '    --roles        [Required] : Comma-separated default or user-defined role names. Roles that can')
            fprintf('%s\n', '                                be assigned to a user are comma separated and case-insensitive (at')
            fprintf('%s\n', '                                most 50 roles up to 25 characters each and restricted to')
            fprintf('%s\n', '                                0-9,A-Z,a-z, and _). Define roles in routes.json during root')
            fprintf('%s\n', '                                directory of your GitHub repo.')
            fprintf('%s\n', '    --authentication-provider : Authentication provider of the user identity such as AAD, Facebook,')
            fprintf('%s\n', '                                GitHub, Google, Twitter.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --user-details            : Email for AAD, Facebook, and Google. Account name (handle) for')
            fprintf('%s\n', '                                GitHub and Twitter.')
            fprintf('%s\n', '    --user-id                 : Given id of registered user.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates a user entry with the listed roles.')
            fprintf('%s\n', '        az staticwebapp users update -n MyStaticAppName --user-details JohnDoe --role Contributor')
            fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp users update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
