classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventgrid partner registration create : Create a new partner registration.
            % Command group 'eventgrid partner registration' is in preview. It may be changed/removed
            % in a future release.
            this.BaseCmd = 'az eventgrid partner registration create ';
        end
        function this = name(this, varargin)
            % Name of the partner registration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_name(this, varargin)
            % Official name of the partner.
            this.Options = [this.Options, '--partner-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_type_name(this, varargin)
            % Name of the partner topic resource type. This name should be unique among all partner topic types names.
            this.Options = [this.Options, '--resource-type-name', varargin{:}];
        end

        function this = authorized_subscription_ids(this, varargin)
            % A space-separated list of Azure subscription Ids that are authorized to create a partner namespace associated with this partner registration. This is an optional property. Creating partner namespaces is always permitted under the same Azure subscription as the one used for creating the partner registration.
            this.Options = [this.Options, '--authorized-subscription-ids', varargin{:}];
        end

        function this = customer_service_extension(this, varargin)
            % The extension of the customer service number of the publisher. Only digits are allowed and number of digits should not exceed 10.
            this.Options = [this.Options, '--customer-service-extension', varargin{:}];
        end

        function this = customer_service_number(this, varargin)
            % The customer service number of the publisher. The expected phone format should start with a '+' sign followed by the country code. The remaining digits are then followed. Only digits and spaces are allowed and its length cannot exceed 16 digits including country code. Examples of valid phone numbers are: +1 515 123 4567 and +966 7 5115 2471. Examples of invalid phone numbers are: +1 (515) 123-4567, 1 515 123 4567 and +966 121 5115 24 7 551 1234 43.
            this.Options = [this.Options, '--customer-service-number', varargin{:}];
        end

        function this = customer_service_uri(this, varargin)
            % The customer service URI of the publisher.
            this.Options = [this.Options, '--customer-service-uri', varargin{:}];
        end

        function this = description(this, varargin)
            % Description of the partner topic type.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Display name for the partner topic type.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = logo_uri(this, varargin)
            % URI of the partner logo.
            this.Options = [this.Options, '--logo-uri', varargin{:}];
        end

        function this = long_description(this, varargin)
            % Description of the custom scenarios and integration. Length of this description should not exceed 2048 characters.
            this.Options = [this.Options, '--long-description', varargin{:}];
        end

        function this = setup_uri(this, varargin)
            % URI of the partner website that can be used by Azure customers to setup Event Grid integration on an event source.
            this.Options = [this.Options, '--setup-uri', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid partner registration create : Create a new partner registration.')
            fprintf('%s\n', '        Command group ''eventgrid partner registration'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the partner registration.')
            fprintf('%s\n', '    --partner-name       [Required] : Official name of the partner.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type-name [Required] : Name of the partner topic resource type. This name should be')
            fprintf('%s\n', '                                      unique among all partner topic types names.')
            fprintf('%s\n', '    --authorized-subscription-ids   : A space-separated list of Azure subscription Ids that are')
            fprintf('%s\n', '                                      authorized to create a partner namespace associated with this')
            fprintf('%s\n', '                                      partner registration. This is an optional property. Creating')
            fprintf('%s\n', '                                      partner namespaces is always permitted under the same Azure')
            fprintf('%s\n', '                                      subscription as the one used for creating the partner')
            fprintf('%s\n', '                                      registration.')
            fprintf('%s\n', '    --customer-service-extension    : The extension of the customer service number of the publisher.')
            fprintf('%s\n', '                                      Only digits are allowed and number of digits should not exceed')
            fprintf('%s\n', '                                      10.')
            fprintf('%s\n', '    --customer-service-number       : The customer service number of the publisher. The expected')
            fprintf('%s\n', '                                      phone format should start with a ''+'' sign followed by the')
            fprintf('%s\n', '                                      country code. The remaining digits are then followed. Only')
            fprintf('%s\n', '                                      digits and spaces are allowed and its length cannot exceed 16')
            fprintf('%s\n', '                                      digits including country code. Examples of valid phone numbers')
            fprintf('%s\n', '                                      are: +1 515 123 4567 and +966 7 5115 2471. Examples of invalid')
            fprintf('%s\n', '                                      phone numbers are: +1 (515) 123-4567, 1 515 123 4567 and +966')
            fprintf('%s\n', '                                      121 5115 24 7 551 1234 43.')
            fprintf('%s\n', '    --customer-service-uri          : The customer service URI of the publisher.')
            fprintf('%s\n', '    --description                   : Description of the partner topic type.')
            fprintf('%s\n', '    --display-name                  : Display name for the partner topic type.')
            fprintf('%s\n', '    --logo-uri                      : URI of the partner logo.')
            fprintf('%s\n', '    --long-description              : Description of the custom scenarios and integration. Length of')
            fprintf('%s\n', '                                      this description should not exceed 2048 characters.')
            fprintf('%s\n', '    --setup-uri                     : URI of the partner website that can be used by Azure customers')
            fprintf('%s\n', '                                      to setup Event Grid integration on an event source.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new partner registration with basic information.')
            fprintf('%s\n', '        az eventgrid partner registration create -g rg1 --name partnerRegistrationName1 --partner-')
            fprintf('%s\n', '        name Contoso --resource-type-name Accounts --authorized-subscription-ids')
            fprintf('%s\n', '        533ad9de-25db-46e2-b94a-d00c37cf022b 05aa2228-7d34-4635-922d-2b582c422445')
            fprintf('%s\n', '    Create a new partner registration with partner information.')
            fprintf('%s\n', '        az eventgrid partner registration create -g rg1 --name partnerRegistrationName1 --partner-')
            fprintf('%s\n', '        name Contoso --resource-type-name Accounts --authorized-subscription-ids')
            fprintf('%s\n', '        533ad9de-25db-46e2-b94a-d00c37cf022b 05aa2228-7d34-4635-922d-2b582c422445 --description')
            fprintf('%s\n', '        ExampleDescription --display-name ExampleDisplayName1 --logo-uri')
            fprintf('%s\n', '        ''https://www.example.com/logo.png'' --setup-uri ''https://www.example.com'' --long-description')
            fprintf('%s\n', '        ''This is sample description}'' --customer-service-number ''+1 800 123 4567'' --customer-')
            fprintf('%s\n', '        service-extension ''125'' --customer-service-uri ''https://www.example.com/customerservice''')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner registration create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
