classdef rest < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = rest()
            % az rest : Invoke a custom request.
            % This command automatically authenticates using the logged-in credential: If Authorization
            % header is not set, it attaches header `Authorization: Bearer <token>`, where `<token>` is
            % retrieved from AAD. The target resource of the token is derived from --url if --url starts
            % with an endpoint from `az cloud show --query endpoints`. You may also use --resource for a
            % custom resource.
            % If Content-Type header is not set and --body is a valid JSON string, Content-Type header
            % will default to application/json.
            this.BaseCmd = 'az rest ';
        end
        function this = uri(this, varargin)
            % Request URL. If it doesn't start with a host, CLI assumes it as an Azure resource ID and prefixes it with the ARM endpoint of the current cloud shown by `az cloud show --query endpoints.resourceManager`. Common token {subscriptionId} will be replaced with the current subscription ID specified by `az account set`.
            this.Options = [this.Options, '--uri', varargin{:}];
        end

        function this = body(this, varargin)
            % Request body. Use @{file} to load from a file. For quoting issues in different terminals, see https://github.com/Azure/azure- cli/blob/dev/doc/use_cli_effectively.md#quoting-issues.
            this.Options = [this.Options, '--body', varargin{:}];
        end

        function this = headers(this, varargin)
            % Space-separated headers in KEY=VALUE format or JSON string. Use @{file} to load from a file.
            this.Options = [this.Options, '--headers', varargin{:}];
        end

        function this = method(this, varargin)
            % HTTP request method.  Allowed values: delete, get, head, options, patch, post, put.  Default: get.
            this.Options = [this.Options, '--method', varargin{:}];
        end

        function this = output_file(this, varargin)
            % Save response payload to a file.
            this.Options = [this.Options, '--output-file', varargin{:}];
        end

        function this = resource(this, varargin)
            % Resource url for which CLI should acquire a token from AAD in order to access the service. The token will be placed in the Authorization header. By default, CLI can figure this out based on --url argument, unless you use ones not in the list of "az cloud show --query endpoints".
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = skip_authorization_header(this, varargin)
            % Do not auto-append Authorization header.
            this.Options = [this.Options, '--skip-authorization-header', varargin{:}];
        end

        function this = uri_parameters(this, varargin)
            % Query parameters in the URL. Space-separated queries in KEY=VALUE format or JSON string. Use @{file} to load from a file.
            this.Options = [this.Options, '--uri-parameters', varargin{:}];
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
            fprintf('%s\n', '    az rest : Invoke a custom request.')
            fprintf('%s\n', '        This command automatically authenticates using the logged-in credential: If Authorization')
            fprintf('%s\n', '        header is not set, it attaches header `Authorization: Bearer <token>`, where `<token>` is')
            fprintf('%s\n', '        retrieved from AAD. The target resource of the token is derived from --url if --url starts')
            fprintf('%s\n', '        with an endpoint from `az cloud show --query endpoints`. You may also use --resource for a')
            fprintf('%s\n', '        custom resource.')
            fprintf('%s\n', '        If Content-Type header is not set and --body is a valid JSON string, Content-Type header')
            fprintf('%s\n', '        will default to application/json.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --uri --url -u         [Required] : Request URL. If it doesn''t start with a host, CLI assumes it')
            fprintf('%s\n', '                                        as an Azure resource ID and prefixes it with the ARM')
            fprintf('%s\n', '                                        endpoint of the current cloud shown by `az cloud show')
            fprintf('%s\n', '                                        --query endpoints.resourceManager`. Common token')
            fprintf('%s\n', '                                        {subscriptionId} will be replaced with the current')
            fprintf('%s\n', '                                        subscription ID specified by `az account set`.')
            fprintf('%s\n', '    --body -b                         : Request body. Use @{file} to load from a file. For quoting')
            fprintf('%s\n', '                                        issues in different terminals, see')
            fprintf('%s\n', '                                        https://github.com/Azure/azure-')
            fprintf('%s\n', '                                        cli/blob/dev/doc/use_cli_effectively.md#quoting-issues.')
            fprintf('%s\n', '    --headers                         : Space-separated headers in KEY=VALUE format or JSON string.')
            fprintf('%s\n', '                                        Use @{file} to load from a file.')
            fprintf('%s\n', '    --method -m                       : HTTP request method.  Allowed values: delete, get, head,')
            fprintf('%s\n', '                                        options, patch, post, put.  Default: get.')
            fprintf('%s\n', '    --output-file                     : Save response payload to a file.')
            fprintf('%s\n', '    --resource                        : Resource url for which CLI should acquire a token from AAD')
            fprintf('%s\n', '                                        in order to access the service. The token will be placed in')
            fprintf('%s\n', '                                        the Authorization header. By default, CLI can figure this')
            fprintf('%s\n', '                                        out based on --url argument, unless you use ones not in the')
            fprintf('%s\n', '                                        list of "az cloud show --query endpoints".')
            fprintf('%s\n', '    --skip-authorization-header       : Do not auto-append Authorization header.')
            fprintf('%s\n', '    --uri-parameters --url-parameters : Query parameters in the URL. Space-separated queries in')
            fprintf('%s\n', '                                        KEY=VALUE format or JSON string. Use @{file} to load from a')
            fprintf('%s\n', '                                        file.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get Audit log through Microsoft Graph')
            fprintf('%s\n', '        az rest --method get --url https://graph.microsoft.com/beta/auditLogs/directoryAudits')
            fprintf('%s\n', '    Update a Azure Active Directory Graph User''s display name')
            fprintf('%s\n', '        az rest --method patch --url')
            fprintf('%s\n', '        "https://graph.microsoft.com/v1.0/users/johndoe@azuresdkteam.onmicrosoft.com" --body')
            fprintf('%s\n', '        "{\"displayName\": \"jondoe2\"}"')
            fprintf('%s\n', '    Get a virtual machine')
            fprintf('%s\n', '        az rest --method get --uri /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName')
            fprintf('%s\n', '        }/providers/Microsoft.Compute/virtualMachines/{vmName}?api-version=2019-03-01')
            fprintf('%s\n', '    Create a public IP address from body.json file')
            fprintf('%s\n', '        az rest --method put --url https://management.azure.com/subscriptions/{subscriptionId}/resou')
            fprintf('%s\n', '        rceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddress')
            fprintf('%s\n', '        Name}?api-version=2019-09-01 --body @body.json')
            fprintf('%s\n', '    List the top three resources (Bash)')
            fprintf('%s\n', '        az rest --method get --url')
            fprintf('%s\n', '        https://management.azure.com/subscriptions/{subscriptionId}/resources?api-version=2019-07-01')
            fprintf('%s\n', '        --url-parameters \$top=3')
            fprintf('%s\n', 'For more specific examples, use: az find "az rest"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class rest 
