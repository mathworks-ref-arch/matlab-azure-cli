classdef split < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = split()
            % az reservations reservation split : Split a reservation.
            % Command group 'reservations' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az reservations reservation split ';
        end
        function this = quantity_1(this, varargin)
            % Quantity of the first reservation that will be created from split operation.
            this.Options = [this.Options, '--quantity-1', varargin{:}];
        end

        function this = quantity_2(this, varargin)
            % Quantity of the second reservation that will be created from split operation.
            this.Options = [this.Options, '--quantity-2', varargin{:}];
        end

        function this = reservation_id(this, varargin)
            % Reservation id of the reservation to split.
            this.Options = [this.Options, '--reservation-id', varargin{:}];
        end

        function this = reservation_order_id(this, varargin)
            % Reservation order id of the reservation to split.
            this.Options = [this.Options, '--reservation-order-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az reservations reservation split"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az reservations reservation split : Split a reservation.')
            fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --quantity-1 -1        [Required] : Quantity of the first reservation that will be created from')
            fprintf('%s\n', '                                        split operation.')
            fprintf('%s\n', '    --quantity-2 -2        [Required] : Quantity of the second reservation that will be created from')
            fprintf('%s\n', '                                        split operation.')
            fprintf('%s\n', '    --reservation-id       [Required] : Reservation id of the reservation to split.')
            fprintf('%s\n', '    --reservation-order-id [Required] : Reservation order id of the reservation to split.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az reservations reservation split"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class split 
