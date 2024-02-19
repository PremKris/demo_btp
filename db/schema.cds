namespace ns1;

entity school_info {    //parent
    key school_id : Int16;
    key admissionid : UUID;
    school_name : String;
    schhol_address : String;
    schhol_branch_code : String(2);
    sch1 : Association to many student_info on sch1.school_id = school_id;
    school_to_admission : Association to many admission_details on school_to_admission.admission_id = admissionid;
};

entity student_info {     //child
    key stud_id : UUID;
    stud_name : String;
    stud_address : String;
    stud_age : Int16;
    school_id : Int16;
    price : String;
    stu1 : Association to one school_info on stu1.school_id = school_id;
};

entity admission_details{
    key admission_id : UUID;
    student_id : String;
    adm_field : Association to one school_info on adm_field.admissionid = admission_id;
};

entity Amount {
 key value : Decimal(10,3);
//   amt : currency;
}

entity Currencies {
   key  value1 : String(3);
}

entity pincode {
  key country_code : String;
  country : String;
}

entity Books {
  key price : {
    value : String;
    name : String;
  };
}


// define type currency : Association to one Currencies;