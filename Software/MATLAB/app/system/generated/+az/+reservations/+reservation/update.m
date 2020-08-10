classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az reservations reservation update : Updates the applied scopes of the reservation.
            % Command group 'reservations' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az reservations reservation update ';
        end
        function this = applied_scope_type(this, varargin)
            % Type of the Applied Scope to update the reservation with. Allowed values: Shared, Single.
            this.Options = [this.Options, '--applied-scope-type', varargin{:}];
        end

        function this = reservation_id(this, varargin)
            % Id of the reservation to update.
            this.Options = [this.Options, '--reservation-id', varargin{:}];
        end

        function this = reservation_order_id(this, varargin)
            % Reservation order id of the reservation to update.
            this.Options = [this.Options, '--reservation-order-id', varargin{:}];
        end

        function this = applied_scopes(this, varargin)
            % Subscription that the benefit will be applied. Do not specify if AppliedScopeType is Shared.
            this.Options = [this.Options, '--applied-scopes', varargin{:}];
        end

        function this = instance_flexibility(this, varargin)
            % Type of the Instance Flexibility to update the reservation with.  Allowed values: Off, On.
            this.Options = [this.Options, '--instance-flexibility', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az reservations reservation update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az reservations reservation update : Updates the applied scopes of the reservation.')
            fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --applied-scope-type -t [Required] : Type of the Applied Scope to update the reservation with.')
            fprintf('%s\n', '                                         Allowed values: Shared, Single.')
            fprintf('%s\n', '    --reservation-id        [Required] : Id of the reservation to update.')
            fprintf('%s\n', '    --reservation-order-id  [Required] : Reservation order id of the reservation to update.')
            fprintf('%s\n', '    --applied-scopes -s                : Subscription that the benefit will be applied. Do not')
            fprintf('%s\n', '                                         specify if AppliedScopeType is Shared.')
            fprintf('%s\n', '    --instance-flexibility -i          : Type of the Instance Flexibility to update the reservation')
            fprintf('%s\n', '                                         with.  Allowed values: Off, On.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az reservations reservation update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
