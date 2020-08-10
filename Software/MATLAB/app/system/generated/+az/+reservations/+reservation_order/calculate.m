classdef calculate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = calculate()
            % az reservations reservation-order calculate : Calculate price for a reservation order.
            % Calculate price for placing a reservation order.
            % Command group 'reservations' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az reservations reservation-order calculate ';
        end
        function this = applied_scope_type(this, varargin)
            % Type of the Applied Scope to update the reservation with. Allowed values: Shared, Single.
            this.Options = [this.Options, '--applied-scope-type', varargin{:}];
        end

        function this = billing_scope(this, varargin)
            % Subscription that will be charged for purchasing Reservation.
            this.Options = [this.Options, '--billing-scope', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Friendly name for user to easily identified the reservation.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = quantity(this, varargin)
            % Quantity of product for calculating price or purchasing.
            this.Options = [this.Options, '--quantity', varargin{:}];
        end

        function this = reserved_resource_type(this, varargin)
            % Type of the resource for which the skus should be provided.  Allowed values: CosmosDb, RedHat, RedHatOsa, SqlDataWarehouse, SqlDatabases, SuseLinux, VMwareCloudSimple, VirtualMachines.
            this.Options = [this.Options, '--reserved-resource-type', varargin{:}];
        end

        function this = sku(this, varargin)
            % Sku name, get the sku list by using command az reservations catalog show.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = term(this, varargin)
            % Available reservation terms for this resource.  Allowed values: P1Y, P3Y.
            this.Options = [this.Options, '--term', varargin{:}];
        end

        function this = applied_scope(this, varargin)
            % Subscription that the benefit will be applied. Required if --applied-scope-type is Single. Do not specify if --applied-scope-type is Shared.
            this.Options = [this.Options, '--applied-scope', varargin{:}];
        end

        function this = billing_plan(this, varargin)
            % The billing plan options available for this SKU.  Allowed values: Monthly, Upfront.
            this.Options = [this.Options, '--billing-plan', varargin{:}];
        end

        function this = instance_flexibility(this, varargin)
            % Type of the Instance Flexibility to update the reservation with.
            this.Options = [this.Options, '--instance-flexibility', varargin{:}];
        end

        function this = location(this, varargin)
            % Values from: `az account list-locations`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = renew(this, varargin)
            % Set this to true will automatically purchase a new reservation on the expiration date time.  Allowed values: false, true.
            this.Options = [this.Options, '--renew', varargin{:}];
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
            fprintf('%s\n', '    az reservations reservation-order calculate : Calculate price for a reservation order.')
            fprintf('%s\n', '        Calculate price for placing a reservation order.')
            fprintf('%s\n', '        Command group ''reservations'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --applied-scope-type     [Required] : Type of the Applied Scope to update the reservation with.')
            fprintf('%s\n', '                                          Allowed values: Shared, Single.')
            fprintf('%s\n', '    --billing-scope          [Required] : Subscription that will be charged for purchasing')
            fprintf('%s\n', '                                          Reservation.')
            fprintf('%s\n', '    --display-name           [Required] : Friendly name for user to easily identified the')
            fprintf('%s\n', '                                          reservation.')
            fprintf('%s\n', '    --quantity               [Required] : Quantity of product for calculating price or purchasing.')
            fprintf('%s\n', '    --reserved-resource-type [Required] : Type of the resource for which the skus should be')
            fprintf('%s\n', '                                          provided.  Allowed values: CosmosDb, RedHat, RedHatOsa,')
            fprintf('%s\n', '                                          SqlDataWarehouse, SqlDatabases, SuseLinux,')
            fprintf('%s\n', '                                          VMwareCloudSimple, VirtualMachines.')
            fprintf('%s\n', '    --sku                    [Required] : Sku name, get the sku list by using command az')
            fprintf('%s\n', '                                          reservations catalog show.')
            fprintf('%s\n', '    --term                   [Required] : Available reservation terms for this resource.  Allowed')
            fprintf('%s\n', '                                          values: P1Y, P3Y.')
            fprintf('%s\n', '    --applied-scope                     : Subscription that the benefit will be applied. Required if')
            fprintf('%s\n', '                                          --applied-scope-type is Single. Do not specify if')
            fprintf('%s\n', '                                          --applied-scope-type is Shared.')
            fprintf('%s\n', '    --billing-plan                      : The billing plan options available for this SKU.  Allowed')
            fprintf('%s\n', '                                          values: Monthly, Upfront.')
            fprintf('%s\n', '    --instance-flexibility              : Type of the Instance Flexibility to update the reservation')
            fprintf('%s\n', '                                          with.')
            fprintf('%s\n', '    --location                          : Values from: `az account list-locations`.')
            fprintf('%s\n', '    --renew                             : Set this to true will automatically purchase a new')
            fprintf('%s\n', '                                          reservation on the expiration date time.  Allowed values:')
            fprintf('%s\n', '                                          false, true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Calculate price and get quote for specific resource type.')
            fprintf('%s\n', '        az reservations reservation-order calculate --sku standard_b1ls --location westus')
            fprintf('%s\n', '        --reserved-resource-type VirtualMachines --billing-scope {SubId} --term P1Y --billing-plan')
            fprintf('%s\n', '        Upfront --quantity 1 --applied-scope-type Single --applied-scope SubId --display-name test')
            fprintf('%s\n', 'For more specific examples, use: az find "az reservations reservation-order calculate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class calculate 
