using service1 as service from '../../srv/service';

annotate service.school with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id SChhcv',
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
    ]
);
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'for admission',
            ID : 'foradmission',
            Target : 'school_to_admission/@UI.LineItem#foradmission',
        },
    ]
);
annotate service.student with @(
    UI.LineItem #fdf : [
        {
            $Type : 'UI.DataField',
            Value : school_id,
            Label : 'school_id',
        },{
            $Type : 'UI.DataField',
            Value : stud_address,
            Label : 'stud_address',
        },{
            $Type : 'UI.DataField',
            Value : stud_age,
            Label : 'stud_age',
        },{
            $Type : 'UI.DataField',
            Value : stud_id,
            Label : 'stud_id',
        },{
            $Type : 'UI.DataField',
            Value : stud_name,
            Label : 'stud_name',
        },]
);
annotate service.school with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.school with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.school with @(
    UI.SelectionPresentationVariant #table2 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.admission with @(
    UI.LineItem #foradmission : [
        {
            $Type : 'UI.DataField',
            Value : admission_id,
            Label : 'admission_id',
        },{
            $Type : 'UI.DataField',
            Value : student_id,
            Label : 'student_id',
        },{
            $Type : 'UI.DataField',
            Value : adm_field.school_name,
            Label : 'school_name',
        },]
);
annotate service.school with {
    school_id @Common.Text : schhol_address
};
annotate service.school with @(
    UI.SelectionPresentationVariant #table3 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                ],
        },
    }
);
annotate service.school with {
    schhol_branch_code @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'pincode',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : schhol_branch_code,
                    ValueListProperty : 'country_code',
                },
            ],
            Label : 'country',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.pincode with {
    country_code @Common.Text : country
};
annotate service.school with {
    schhol_address @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'school',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : schhol_address,
                    ValueListProperty : 'schhol_address',
                },
            ],
            Label : 's_address',
        },
        Common.ValueListWithFixedValues : true)};
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
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'admissionid',
                },
            ],
            Label : 'kjkj',
        },
        Common.ValueListWithFixedValues : false
)};
