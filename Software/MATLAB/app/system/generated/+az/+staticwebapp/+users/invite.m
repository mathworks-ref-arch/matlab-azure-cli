classdef invite < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = invite()
            % az staticwebapp users invite : Create invitation link for specified user to the static app.
            % Command group 'staticwebapp users' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az staticwebapp users invite ';
        end
        function this = authentication_provider(this, varargin)
            % Authentication provider of the user identity such as AAD, Facebook, GitHub, Google, Twitter.
            this.Options = [this.Options, '--authentication-provider', varargin{:}];
        end

        function this = domain(this, varargin)
            % A domain added to the static app in quotes.
            this.Options = [this.Options, '--domain', varargin{:}];
        end

        function this = invitation_expiration_in_hours(this, varargin)
            % This value sets when the link will expire in hours. The maximum is 168 (7 days).
            this.Options = [this.Options, '--invitation-expiration-in-hours', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the static site.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = roles(this, varargin)
            % Comma-separated default or user-defined role names. Roles that can be assigned to a user are comma separated and case-insensitive (at most 50 roles up to 25 characters each and restricted to 0-9,A-Z,a-z, and _). Define roles in routes.json during root directory of your GitHub repo.
            this.Options = [this.Options, '--roles', varargin{:}];
        end

        function this = user_details(this, varargin)
            % Email for AAD, Facebook, and Google. Account name (handle) for GitHub and Twitter.
            this.Options = [this.Options, '--user-details', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az staticwebapp users invite : Create invitation link for specified user to the static app.')
            fprintf('%s\n', '        Command group ''staticwebapp users'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --authentication-provider        [Required] : Authentication provider of the user identity such')
            fprintf('%s\n', '                                                  as AAD, Facebook, GitHub, Google, Twitter.')
            fprintf('%s\n', '    --domain                         [Required] : A domain added to the static app in quotes.')
            fprintf('%s\n', '    --invitation-expiration-in-hours [Required] : This value sets when the link will expire in')
            fprintf('%s\n', '                                                  hours. The maximum is 168 (7 days).')
            fprintf('%s\n', '    --name -n                        [Required] : Name of the static site.')
            fprintf('%s\n', '    --roles                          [Required] : Comma-separated default or user-defined role')
            fprintf('%s\n', '                                                  names. Roles that can be assigned to a user are')
            fprintf('%s\n', '                                                  comma separated and case-insensitive (at most 50')
            fprintf('%s\n', '                                                  roles up to 25 characters each and restricted to')
            fprintf('%s\n', '                                                  0-9,A-Z,a-z, and _). Define roles in routes.json')
            fprintf('%s\n', '                                                  during root directory of your GitHub repo.')
            fprintf('%s\n', '    --user-details                   [Required] : Email for AAD, Facebook, and Google. Account name')
            fprintf('%s\n', '                                                  (handle) for GitHub and Twitter.')
            fprintf('%s\n', '    --resource-group -g                         : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create invitation link for specified user to the static app.')
            fprintf('%s\n', '        az staticwebapp users invite -n MyStaticAppName --authentication-provider GitHub --user-')
            fprintf('%s\n', '        details JohnDoe --role Contributor --domain static-app-001.azurestaticapps.net --invitation-')
            fprintf('%s\n', '        expiration-in-hours 1')
            fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp users invite"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class invite 
