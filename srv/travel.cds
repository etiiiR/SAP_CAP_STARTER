using my.Travel as my from '../db/data-model';

service TravelService {
    @readonly entity Travel as projection on my.Data;
}

annotate CatalogService.Travel with @(
    UI: {
        HeaderInfo: {
            TypeName: 'Book',
            TypeNamePlural: 'Books',
            Title: { Value: ID },
            Description: { Value: title }
        },
        SelectionFields: [ ID, title, author.name ],
        LineItem: [
            { Value: ID },
            { Value: title },
            { Value: author.name },
            { Value: price },
            { Value: currency_code }               
        ],
        Facets: [
            {
                $Type: 'UI.CollectionFacet',
                Label: 'Book Info',
                Facets: [
                    {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Main Facet'}
                ]
            }
        ],        
        FieldGroup#Main: {
            Data: [
                { Value: ID },
                { Value: title },
                { Value: author_ID },
                { Value: price },
                { Value: currency_code }               
            ]
        }
    }
);

annotate service.Travel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'client',
            Value : client,
        },
        {
            $Type : 'UI.DataField',
            Label : 'travel_id',
            Value : travel_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'agency_id',
            Value : agency_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customer_id',
            Value : customer_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'begin_date',
            Value : begin_date,
        },
    ]
);
annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'client',
                Value : client,
            },
            {
                $Type : 'UI.DataField',
                Label : 'travel_id',
                Value : travel_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'agency_id',
                Value : agency_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customer_id',
                Value : customer_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'begin_date',
                Value : begin_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'end_date',
                Value : end_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'booking_fee',
                Value : booking_fee,
            },
            {
                $Type : 'UI.DataField',
                Label : 'total_price',
                Value : total_price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'overall_status',
                Value : overall_status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'created_at',
                Value : created_at,
            },
            {
                $Type : 'UI.DataField',
                Label : 'created_by',
                Value : created_by,
            },
            {
                $Type : 'UI.DataField',
                Label : 'last_changed_by',
                Value : last_changed_by,
            },
            {
                $Type : 'UI.DataField',
                Label : 'last_changed_at',
                Value : last_changed_at,
            },
            {
                $Type : 'UI.DataField',
                Label : 'local_last_changed_at',
                Value : local_last_changed_at,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
