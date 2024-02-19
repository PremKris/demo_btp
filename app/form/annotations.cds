using seee as service from '../../srv/service';

annotate service.school with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'school_id',
                Value : school_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'school_name',
                Value : school_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'schhol_address',
                Value : schhol_address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'schhol_branch_code',
                Value : schhol_branch_code,
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
annotate service.school with {
    school_name @(Common.Text : {
            $value : schhol_address,
            ![@UI.TextArrangement] : #TextFirst,
        }
)};
annotate service.school with {
    school_name @Common.FieldControl : #Mandatory
};
annotate service.school with {
    school_name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'school',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : school_name,
                    ValueListProperty : 'school_name',
                },
                {
                    $Type : 'Common.ValueListParameterOut',
                    ValueListProperty : 'admissionid',
                    LocalDataProperty : admissionid,
                },
            ],
            Label : 's_name',
        },
        Common.ValueListWithFixedValues : true
)};
