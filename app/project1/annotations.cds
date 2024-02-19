using service1 as service from '../../srv/service';

annotate service.student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'stud_name',
            Value : stud_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stud_address',
            Value : stud_address,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stud_age',
            Value : stud_age,
        },
    ]
);
annotate service.student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'stud_name',
                Value : stud_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stud_address',
                Value : stud_address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stud_age',
                Value : stud_age,
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
