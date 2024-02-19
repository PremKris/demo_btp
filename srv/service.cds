using {ns1} from '../db/schema';

service service1{
   
    entity student as projection on ns1.student_info;
    @odata.draft.enabled
  entity school as projection on ns1.school_info;
    entity admission as projection on ns1.admission_details;   
    entity Amount as projection on ns1.Amount;  
    entity Books as projection on ns1.Books; 
    entity pincode as projection on ns1.pincode; 
      //  entity hhh as projection on ns1.school_info;
}
service seee {
  @odata.draft.enabled
   entity school as projection on ns1.school_info;
}