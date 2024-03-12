using service1 as service from '../../srv/service';

annotate service.school with @(
    UI.LineItem : [
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
            Label : 'student',
            ID : 'student',
            Target : 'school_to_student/@UI.LineItem#student',
        },
    ]
);
annotate service.student with @(
    UI.LineItem #student : [
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
annotate service.student with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'admission',
            ID : 'admission',
            Target : 'student_to_admission/@UI.LineItem#admission1',
        },]
);
annotate service.admission with @(
    UI.LineItem #admission : [
    ]
);
annotate service.student with @(
    UI.FieldGroup #admission_info : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.admission with @(
    UI.LineItem #admission1 : [
        {
            $Type : 'UI.DataField',
            Value : stud_id,
            Label : 'stud_id',
        },{
            $Type : 'UI.DataField',
            Value : school_id,
            Label : 'school_id',
        },{
            $Type : 'UI.DataField',
            Value : admission_id,
            Label : 'admission_id',
        },{
            $Type : 'UI.DataField',
            Value : admission_day,
            Label : 'admission_day',
        },]
);
annotate service.admission with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'admission details',
            ID : 'admissiondetails',
            Target : '@UI.FieldGroup#admissiondetails',
        },
    ],
    UI.FieldGroup #admissiondetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : admission_id,
                Label : 'admission_id',
            },{
                $Type : 'UI.DataField',
                Value : school_id,
                Label : 'school_id',
            },{
                $Type : 'UI.DataField',
                Value : stud_id,
                Label : 'stud_id',
            },{
                $Type : 'UI.DataField',
                Value : admission_day,
                Label : 'admission_day',
            },],
    }
);
annotate service.admission with @(
    UI.HeaderFacets : [],
    UI.FieldGroup #hggh : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
