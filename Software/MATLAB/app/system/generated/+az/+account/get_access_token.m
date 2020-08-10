classdef get_access_token < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_access_token()
            % az account get-access-token : Get a token for utilities to access Azure.
            % The token will be valid for at least 5 minutes with the maximum at 60 minutes. If the
            % subscription argument isn't specified, the current account is used.
            this.BaseCmd = 'az account get-access-token ';
        end
        function this = resource(this, varargin)
            % Azure resource endpoints. Default to Azure Resource Manager.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Type of well-known resource.  Allowed values: aad-graph, arm, batch, data-lake, media, ms-graph, oss-rdbms.
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = tenant(this, varargin)
            % Tenant ID for which the token is acquired. Only available for user and service principal account, not for MSI or Cloud Shell account. Argument '--tenant' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--tenant', varargin{:}];
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
            fprintf('%s\n', '    az account get-access-token : Get a token for utilities to access Azure.')
            fprintf('%s\n', '        The token will be valid for at least 5 minutes with the maximum at 60 minutes. If the')
            fprintf('%s\n', '        subscription argument isn''t specified, the current account is used.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource            : Azure resource endpoints. Default to Azure Resource Manager.')
            fprintf('%s\n', '    --resource-type       : Type of well-known resource.  Allowed values: aad-graph, arm, batch,')
            fprintf('%s\n', '                            data-lake, media, ms-graph, oss-rdbms.')
            fprintf('%s\n', '    --subscription -s     : Name or ID of subscription.')
            fprintf('%s\n', '    --tenant -t [Preview] : Tenant ID for which the token is acquired. Only available for')
            fprintf('%s\n', '                            user and service principal account, not for MSI or Cloud Shell account.')
            fprintf('%s\n', '        Argument ''--tenant'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get an access token for the current account')
            fprintf('%s\n', '        az account get-access-token')
            fprintf('%s\n', '    Get an access token for a specific subscription')
            fprintf('%s\n', '        az account get-access-token --subscription 00000000-0000-0000-0000-000000000000')
            fprintf('%s\n', '    Get an access token for a specific tenant')
            fprintf('%s\n', '        az account get-access-token --tenant 00000000-0000-0000-0000-000000000000')
            fprintf('%s\n', '    Get an access token to use with MS Graph API')
            fprintf('%s\n', '        az account get-access-token --resource-type ms-graph')
            fprintf('%s\n', 'For more specific examples, use: az find "az account get-access-token"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_access_token 
