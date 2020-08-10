classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventgrid partner namespace event-channel create : Create an event channel under a partner
            % namespace.
            % Command group 'eventgrid partner namespace event-channel' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az eventgrid partner namespace event-channel create ';
        end
        function this = desination_topic_name(this, varargin)
            % Name of the partner topic associated with the event channel.
            this.Options = [this.Options, '--desination-topic-name', varargin{:}];
        end

        function this = destination_resource_group_name(this, varargin)
            % Azure Resource Group of the customer creating the event channel. The partner topic associated with the event channel will be created under this resource group.
            this.Options = [this.Options, '--destination-resource-group-name', varargin{:}];
        end

        function this = destination_subscription_id(this, varargin)
            % Azure subscription Id of the customer creating the event channel. The partner topic associated with the event channel will be created under this Azure subscription.
            this.Options = [this.Options, '--destination-subscription-id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the event channel.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_namespace_name(this, varargin)
            % Name of the partner namespace.
            this.Options = [this.Options, '--partner-namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source(this, varargin)
            % The identifier of the resource that forms the partner source of the events. This represents a unique resource in the partner's resource model.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = activation_expiration_date(this, varargin)
            % Date or datetime in UTC ISO 8601 format (e.g., '2022-02-17T01:59:59+00:00' or '2022-02-17') after which the event channel and corresponding partner topic would expire and get auto deleted. If this time is not specified, the expiration date is set to seven days by default.
            this.Options = [this.Options, '--activation-expiration-date', varargin{:}];
        end

        function this = partner_topic_description(this, varargin)
            % Friendly description of the corresponding partner topic. This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
            this.Options = [this.Options, '--partner-topic-description', varargin{:}];
        end

        function this = publisher_filter(this, varargin)
            % A publisher filter that is used to enable filtering of events based on a specific event property. This set of filters that are specified by the publisher in order to determine which events to be received by the subscriber. Usage:                     --publisher-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE ...] StringIn:                  --publisher-filter data.Color StringIn Blue Red Orange Yellow StringNotIn:               --publisher-filter data.Color StringNotIn Blue Red Orange Yellow StringContains:            --publisher-filter subject StringContains Blue Red StringBeginsWith:          --publisher-filter subject StringBeginsWith Blue Red StringEndsWith:            --publisher-filter subject StringEndsWith img png jpg NumberIn:                  --publisher-filter data.property1 NumberIn 5 10 20 NumberNotIn:               --publisher-filter data.property2 NumberNotIn 100 200 300 NumberLessThan:            --publisher-filter data.property3 NumberLessThan 100 NumberLessThanOrEquals:    --publisher-filter data.property2 NumberLessThanOrEquals 100 NumberGreaterThan:         --publisher-filter data.property3 NumberGreaterThan 100 NumberGreaterThanOrEquals: --publisher-filter data.property2 NumberGreaterThanOrEquals 100 BoolEquals:                --publisher-filter data.property3 BoolEquals true Multiple publisher filters can be specified by using more than one `--publisher-filter` argument.
            this.Options = [this.Options, '--publisher-filter', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid partner namespace event-channel create : Create an event channel under a partner')
            fprintf('%s\n', '    namespace.')
            fprintf('%s\n', '        Command group ''eventgrid partner namespace event-channel'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --desination-topic-name           [Required] : Name of the partner topic associated with the')
            fprintf('%s\n', '                                                   event channel.')
            fprintf('%s\n', '    --destination-resource-group-name [Required] : Azure Resource Group of the customer creating the')
            fprintf('%s\n', '                                                   event channel. The partner topic associated with')
            fprintf('%s\n', '                                                   the event channel will be created under this')
            fprintf('%s\n', '                                                   resource group.')
            fprintf('%s\n', '    --destination-subscription-id     [Required] : Azure subscription Id of the customer creating')
            fprintf('%s\n', '                                                   the event channel. The partner topic associated')
            fprintf('%s\n', '                                                   with the event channel will be created under this')
            fprintf('%s\n', '                                                   Azure subscription.')
            fprintf('%s\n', '    --name -n                         [Required] : Name of the event channel.')
            fprintf('%s\n', '    --partner-namespace-name          [Required] : Name of the partner namespace.')
            fprintf('%s\n', '    --resource-group -g               [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                   default group using `az configure --defaults')
            fprintf('%s\n', '                                                   group=<name>`.')
            fprintf('%s\n', '    --source                          [Required] : The identifier of the resource that forms the')
            fprintf('%s\n', '                                                   partner source of the events. This represents a')
            fprintf('%s\n', '                                                   unique resource in the partner''s resource model.')
            fprintf('%s\n', '    --activation-expiration-date                 : Date or datetime in UTC ISO 8601 format (e.g.,')
            fprintf('%s\n', '                                                   ''2022-02-17T01:59:59+00:00'' or ''2022-02-17'')')
            fprintf('%s\n', '                                                   after which the event channel and corresponding')
            fprintf('%s\n', '                                                   partner topic would expire and get auto deleted.')
            fprintf('%s\n', '                                                   If this time is not specified, the expiration')
            fprintf('%s\n', '                                                   date is set to seven days by default.')
            fprintf('%s\n', '    --partner-topic-description                  : Friendly description of the corresponding partner')
            fprintf('%s\n', '                                                   topic. This will be helpful to remove any')
            fprintf('%s\n', '                                                   ambiguity of the origin of creation of the')
            fprintf('%s\n', '                                                   partner topic for the customer.')
            fprintf('%s\n', '    --publisher-filter                           : A publisher filter that is used to enable')
            fprintf('%s\n', '                                                   filtering of events based on a specific event')
            fprintf('%s\n', '                                                   property. This set of filters that are specified')
            fprintf('%s\n', '                                                   by the publisher in order to determine which')
            fprintf('%s\n', '                                                   events to be received by the subscriber.')
            fprintf('%s\n', '        Usage:                     --publisher-filter KEY[.INNERKEY] FILTEROPERATOR VALUE [VALUE')
            fprintf('%s\n', '        ...]')
            fprintf('%s\n', '        StringIn:                  --publisher-filter data.Color StringIn Blue Red Orange Yellow')
            fprintf('%s\n', '        StringNotIn:               --publisher-filter data.Color StringNotIn Blue Red Orange Yellow')
            fprintf('%s\n', '        StringContains:            --publisher-filter subject StringContains Blue Red')
            fprintf('%s\n', '        StringBeginsWith:          --publisher-filter subject StringBeginsWith Blue Red')
            fprintf('%s\n', '        StringEndsWith:            --publisher-filter subject StringEndsWith img png jpg')
            fprintf('%s\n', '        NumberIn:                  --publisher-filter data.property1 NumberIn 5 10 20')
            fprintf('%s\n', '        NumberNotIn:               --publisher-filter data.property2 NumberNotIn 100 200 300')
            fprintf('%s\n', '        NumberLessThan:            --publisher-filter data.property3 NumberLessThan 100')
            fprintf('%s\n', '        NumberLessThanOrEquals:    --publisher-filter data.property2 NumberLessThanOrEquals 100')
            fprintf('%s\n', '        NumberGreaterThan:         --publisher-filter data.property3 NumberGreaterThan 100')
            fprintf('%s\n', '        NumberGreaterThanOrEquals: --publisher-filter data.property2 NumberGreaterThanOrEquals 100')
            fprintf('%s\n', '        BoolEquals:                --publisher-filter data.property3 BoolEquals true')
            fprintf('%s\n', '        Multiple publisher filters can be specified by using more than one `--publisher-filter`')
            fprintf('%s\n', '        argument.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                      : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                   logs.')
            fprintf('%s\n', '    --help -h                                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                  : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                   none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                      : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                   for more information and examples.')
            fprintf('%s\n', '    --subscription                               : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                   default subscription using `az account set -s')
            fprintf('%s\n', '                                                   NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                    : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                   debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a specific event channel.')
            fprintf('%s\n', '        az eventgrid partner namespace event-channel create -g rg1 --partner-namespace-name')
            fprintf('%s\n', '        partnernamespace1 -n eventChannelName1 --source SourceExample1 --destination-subscription-id')
            fprintf('%s\n', '        61f7c265-374d-499e-866d-5f4cc302b888 --destination-resource-group-name rg2 --desination-')
            fprintf('%s\n', '        topic-name topicName1')
            fprintf('%s\n', '    Create a specific event channel with an activation expiration time and partner topic friendly')
            fprintf('%s\n', '    description.')
            fprintf('%s\n', '        az eventgrid partner namespace event-channel create -g rg1 --partner-namespace-name')
            fprintf('%s\n', '        partnernamespace1 -n eventChannelName1 --source SourceExample1 --destination-subscription-id')
            fprintf('%s\n', '        61f7c265-374d-499e-866d-5f4cc302b888 --destination-resource-group-name rg2 --desination-')
            fprintf('%s\n', '        topic-name topicName1 --activation-expiration-date ''2020-05-20T10:00'' --partner-topic-')
            fprintf('%s\n', '        description ''This topic is created by Costoco corp on user behavior.''')
            fprintf('%s\n', '    Create a specific event channel with publisher filters.')
            fprintf('%s\n', '        az eventgrid partner namespace event-channel create -g rg1 --partner-namespace-name')
            fprintf('%s\n', '        partnernamespace1 -n eventChannelName1 --source SourceExample1 --destination-subscription-id')
            fprintf('%s\n', '        61f7c265-374d-499e-866d-5f4cc302b888 --destination-resource-group-name rg2 --desination-')
            fprintf('%s\n', '        topic-name topicName1 --publisher-filter data.key1 NumberIn 2 3 4 100 200 --publisher-filter')
            fprintf('%s\n', '        data.key2 StringIn 2 3 4 100 200')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace event-channel')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
