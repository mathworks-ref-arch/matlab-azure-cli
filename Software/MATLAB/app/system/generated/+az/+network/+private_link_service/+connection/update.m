classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network private-link-service connection update : Update a private link service endpoint
            % connection.
            % To update the connection status, the name of the connection should be provided. Please
            % obtain this name by running 'az network private-link-service show -g MyResourceGroup -n
            % MyPLSName'. The connection name is under the 'privateEndpointConnections' filed.
            this.BaseCmd = 'az network private-link-service connection update ';
        end
        function this = connection_status(this, varargin)
            % Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.  Allowed values: Approved, Rejected, Removed.
            this.Options = [this.Options, '--connection-status', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the private endpoint connection. List them by using "az network private-link-service show".
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % Name of the private link service.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = action_required(this, varargin)
            % A message indicating if changes on the service provider require any updates on the consumer.
            this.Options = [this.Options, '--action-required', varargin{:}];
        end

        function this = description(this, varargin)
            % The reason for approval/rejection of the connection.
            this.Options = [this.Options, '--description', varargin{:}];
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
            fprintf('%s\n', '    az network private-link-service connection update : Update a private link service endpoint')
            fprintf('%s\n', '    connection.')
            fprintf('%s\n', '        To update the connection status, the name of the connection should be provided. Please')
            fprintf('%s\n', '        obtain this name by running ''az network private-link-service show -g MyResourceGroup -n')
            fprintf('%s\n', '        MyPLSName''. The connection name is under the ''privateEndpointConnections'' filed.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-status [Required] : Indicates whether the connection has been')
            fprintf('%s\n', '                                     Approved/Rejected/Removed by the owner of the service.  Allowed')
            fprintf('%s\n', '                                     values: Approved, Rejected, Removed.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the private endpoint connection. List them by using "az')
            fprintf('%s\n', '                                     network private-link-service show".')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name      [Required] : Name of the private link service.')
            fprintf('%s\n', '    --action-required              : A message indicating if changes on the service provider require')
            fprintf('%s\n', '                                     any updates on the consumer.')
            fprintf('%s\n', '    --description                  : The reason for approval/rejection of the connection.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the endpoint connections status of private link service')
            fprintf('%s\n', '        az network private-link-service connection update -g MyResourceGroup -n')
            fprintf('%s\n', '        MyEndpointName.f072a430-2d82-4470-ab30-d23fcfee58d1 --service-name MyPLSName --connection-')
            fprintf('%s\n', '        status Rejected')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-link-service connection update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
