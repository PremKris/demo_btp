namespace ns1;

entity school_info {    //parent
    key school_id : String;
    school_name : String;
    schhol_address : String;
    schhol_branch_code : String;
    school_to_student : Composition of many student_info on school_to_student.school_id = school_id; 
};

entity student_info {     //child
    key stud_id : String;
    key school_id : String;
    stud_name : String;
    stud_address : String;
    stud_age : String;
    schoolid_field : Association to one school_info on schoolid_field.school_id = school_id;
    student_to_admission : Composition of many admission_details on student_to_admission.stud_id = stud_id;
    // student_to_admission : Association to many admission_details on student_to_admission.stud_id = stud_id;
};

entity admission_details{
    key admission_id : String;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    key stud_id : String;
    key school_id : String;
    admission_day : String;
    adm_field : Association to one student_info on adm_field.stud_id = stud_id;

};
