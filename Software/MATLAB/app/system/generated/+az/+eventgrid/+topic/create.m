classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventgrid topic create : Create a topic.
            this.BaseCmd = 'az eventgrid topic create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the topic.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = identity(this, varargin)
            % The identity type of the resource (e.g., topic or domain).  Allowed values: noidentity, systemassigned. Argument '--identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--identity', varargin{:}];
        end

        function this = inbound_ip_rules(this, varargin)
            % List of inbound IP rules. List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with corresponding Action to perform based on the match or no match of the IpMask. Possible values include - Allow.
            this.Options = [this.Options, '--inbound-ip-rules', varargin{:}];
        end

        function this = input_mapping_default_values(this, varargin)
            % When input-schema is specified as customeventschema, this parameter can be used to specify input mappings based on default values. You can use this parameter when your custom schema does not include a field that corresponds to one of the three fields supported by this parameter. Specify space separated mappings in 'key=value' format. Allowed key names are 'subject', 'eventtype', 'dataversion'. The corresponding value names should specify the default values to be used for the mapping and they will be used only when the published event doesn't have a valid mapping for a particular field.
            this.Options = [this.Options, '--input-mapping-default-values', varargin{:}];
        end

        function this = input_mapping_fields(this, varargin)
            % When input-schema is specified as customeventschema, this parameter is used to specify input mappings based on field names. Specify space separated mappings in 'key=value' format. Allowed key names are 'id', 'topic', 'eventtime', 'subject', 'eventtype', 'dataversion'. The corresponding value names should specify the names of the fields in the custom input schema. If a mapping for either 'id' or 'eventtime' is not provided, Event Grid will auto-generate a default value for these two fields.
            this.Options = [this.Options, '--input-mapping-fields', varargin{:}];
        end

        function this = input_schema(this, varargin)
            % Schema in which incoming events will be published to this topic/domain. If you specify customeventschema as the value for this parameter, you must also provide values for at least one of --input_mapping_default_values / --input_mapping_fields. Allowed values: cloudeventschemav1_0, customeventschema, eventgridschema.  Default: eventgridschema.
            this.Options = [this.Options, '--input-schema', varargin{:}];
        end

        function this = public_network_access(this, varargin)
            % This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring.  Allowed values: disabled, enabled.
            this.Options = [this.Options, '--public-network-access', varargin{:}];
        end

        function this = sku(this, varargin)
            % The Sku name of the resource.  Allowed values: basic, premium.  Default: Basic. Argument '--sku' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid topic create : Create a topic.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the topic.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --identity           [Preview] : The identity type of the resource (e.g., topic or')
            fprintf('%s\n', '                                     domain).  Allowed values: noidentity, systemassigned.')
            fprintf('%s\n', '        Argument ''--identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --inbound-ip-rules             : List of inbound IP rules.')
            fprintf('%s\n', '        List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with')
            fprintf('%s\n', '        corresponding Action to perform based on the match or no match of the IpMask. Possible')
            fprintf('%s\n', '        values include - Allow.')
            fprintf('%s\n', '    --input-mapping-default-values : When input-schema is specified as customeventschema, this')
            fprintf('%s\n', '                                     parameter can be used to specify input mappings based on')
            fprintf('%s\n', '                                     default values. You can use this parameter when your custom')
            fprintf('%s\n', '                                     schema does not include a field that corresponds to one of the')
            fprintf('%s\n', '                                     three fields supported by this parameter. Specify space')
            fprintf('%s\n', '                                     separated mappings in ''key=value'' format. Allowed key names are')
            fprintf('%s\n', '                                     ''subject'', ''eventtype'', ''dataversion''. The corresponding value')
            fprintf('%s\n', '                                     names should specify the default values to be used for the')
            fprintf('%s\n', '                                     mapping and they will be used only when the published event')
            fprintf('%s\n', '                                     doesn''t have a valid mapping for a particular field.')
            fprintf('%s\n', '    --input-mapping-fields         : When input-schema is specified as customeventschema, this')
            fprintf('%s\n', '                                     parameter is used to specify input mappings based on field')
            fprintf('%s\n', '                                     names. Specify space separated mappings in ''key=value'' format.')
            fprintf('%s\n', '                                     Allowed key names are ''id'', ''topic'', ''eventtime'', ''subject'',')
            fprintf('%s\n', '                                     ''eventtype'', ''dataversion''. The corresponding value names')
            fprintf('%s\n', '                                     should specify the names of the fields in the custom input')
            fprintf('%s\n', '                                     schema. If a mapping for either ''id'' or ''eventtime'' is not')
            fprintf('%s\n', '                                     provided, Event Grid will auto-generate a default value for')
            fprintf('%s\n', '                                     these two fields.')
            fprintf('%s\n', '    --input-schema                 : Schema in which incoming events will be published to this')
            fprintf('%s\n', '                                     topic/domain. If you specify customeventschema as the value for')
            fprintf('%s\n', '                                     this parameter, you must also provide values for at least one')
            fprintf('%s\n', '                                     of --input_mapping_default_values / --input_mapping_fields.')
            fprintf('%s\n', '                                     Allowed values: cloudeventschemav1_0, customeventschema,')
            fprintf('%s\n', '                                     eventgridschema.  Default: eventgridschema.')
            fprintf('%s\n', '    --public-network-access        : This determines if traffic is allowed over public network. By')
            fprintf('%s\n', '                                     default it is enabled. You can further restrict to specific IPs')
            fprintf('%s\n', '                                     by configuring.  Allowed values: disabled, enabled.')
            fprintf('%s\n', '    --sku                [Preview] : The Sku name of the resource.  Allowed values: basic,')
            fprintf('%s\n', '                                     premium.  Default: Basic.')
            fprintf('%s\n', '        Argument ''--sku'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create a new topic.')
            fprintf('%s\n', '        az eventgrid topic create -g rg1 --name topic1 -l westus2')
            fprintf('%s\n', '    Create a new topic with custom input mappings.')
            fprintf('%s\n', '        az eventgrid topic create -g rg1 --name topic1 -l westus2 --input-schema customeventschema')
            fprintf('%s\n', '        --input-mapping-fields topic=myTopicField eventType=myEventTypeField --input-mapping-')
            fprintf('%s\n', '        default-values subject=DefaultSubject dataVersion=1.0')
            fprintf('%s\n', '    Create a new topic that accepts events published in CloudEvents V1.0 schema.')
            fprintf('%s\n', '        az eventgrid topic create -g rg1 --name topic1 -l westus2 --input-schema')
            fprintf('%s\n', '        cloudeventschemav1_0')
            fprintf('%s\n', '    Create a new topic which allows specific inbound ip rules with Basic Sku and system assigned')
            fprintf('%s\n', '    identity')
            fprintf('%s\n', '        az eventgrid topic create -g rg1 --name topic1 -l westus2 --public-network-access enabled')
            fprintf('%s\n', '        --inbound-ip-rules 10.0.0.0/8 Allow --inbound-ip-rules 10.2.0.0/8 Allow --sku Basic')
            fprintf('%s\n', '        --identity systemassigned')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid topic create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
