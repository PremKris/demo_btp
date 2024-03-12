using {ns1} from '../db/schema';

service service1{

    entity student as projection on ns1.student_info;
    @odata.draft.enabled
    entity school as projection on ns1.school_info;
    entity admission as projection on ns1.admission_details;   
}
