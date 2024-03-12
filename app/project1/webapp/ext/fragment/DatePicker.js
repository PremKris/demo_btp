sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onPress: function(oEvent) {
            debugger
            let a = oEvent.oSource.oParent.mAggregations.items[1].mProperties.value;
            var admid = sap.ui.getCore().byId("project1::school_school_to_student_student_to_admissionObjectPage--fe::FormContainer::admissiondetails::FormElement::DataField::admission_id::Field-content").mAggregations.contentDisplay.mProperties.text;
            var stdid = sap.ui.getCore().byId("project1::school_school_to_student_student_to_admissionObjectPage--fe::FormContainer::admissiondetails::FormElement::DataField::stud_id::Field-content").mAggregations.contentDisplay.mProperties.text;
            var schid = sap.ui.getCore().byId("project1::school_school_to_student_student_to_admissionObjectPage--fe::FormContainer::admissiondetails::FormElement::DataField::school_id::Field-content").mAggregations.contentDisplay.mProperties.text;  
            sap.ui.getCore().byId("project1::school_school_to_student_student_to_admissionObjectPage--fe::FormContainer::admissiondetails::FormElement::DataField::admission_day::Field-content").mAggregations.contentDisplay.setText(a);
            let edittestdata = JSON.stringify({ admission_id:admid, stud_id:stdid, school_id:schid});
            var url = `/odata/v4/service1/admission(admission_id='${admid}',stud_id='${stdid}',school_id='${schid}',IsActiveEntity=true)`;
            $.ajax({
                url: url,
                type: 'PUT',
                contentType: 'application/json',
                data: edittestdata, 
                success: function(data) {
                    debugger
                    // Handle success
                    console.log(data);
                    oEvent.oSource.getParent().getParent().getParent().close()
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // Handle error
                    console.error(textStatus, errorThrown);
                }
            })
        }
    };
});
