classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az security contact create : Creates a security contact.
            % Command group 'security' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az security contact create ';
        end
        function this = email(this, varargin)
            % E-mail of the security contact.
            this.Options = [this.Options, '--email', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the resource to be fetched.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = alert_notifications(this, varargin)
            % Whether to send mail notifications to the security contacts.
            this.Options = [this.Options, '--alert-notifications', varargin{:}];
        end

        function this = alerts_admins(this, varargin)
            % Whether to send mail notifications to the subscription administrators.
            this.Options = [this.Options, '--alerts-admins', varargin{:}];
        end

        function this = phone(this, varargin)
            % Phone of the security contact.
            this.Options = [this.Options, '--phone', varargin{:}];
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
            fprintf('%s\n', '    az security contact create : Creates a security contact.')
            fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --email    [Required] : E-mail of the security contact.')
            fprintf('%s\n', '    --name -n  [Required] : Name of the resource to be fetched.')
            fprintf('%s\n', '    --alert-notifications : Whether to send mail notifications to the security contacts.')
            fprintf('%s\n', '    --alerts-admins       : Whether to send mail notifications to the subscription administrators.')
            fprintf('%s\n', '    --phone               : Phone of the security contact.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Creates a security contact.')
            fprintf('%s\n', '        az security contact create -n "default1" --email ''john@contoso.com'' --phone ''(214)275-4038''')
            fprintf('%s\n', '        --alert-notifications ''on'' --alerts-admins ''on''')
            fprintf('%s\n', 'For more specific examples, use: az find "az security contact create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
