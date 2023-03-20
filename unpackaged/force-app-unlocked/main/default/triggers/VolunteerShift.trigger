/**
 * Created by robertwright on 2/4/23.
 */

/*trigger VolunteerShift on GW_Volunteers__Volunteer_Shift__c (before insert, before update) {*/
    /**Only Use if NPSP Installed**/
trigger VolunteerShift on GW_Volunteers__Volunteer_Shift__c (after delete, after insert, after undelete,after update, before delete, before insert, before update) {
    npsp.TDTM_Config_API.run(Trigger.isBefore, Trigger.isAfter, Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUndelete, Trigger.new, Trigger.old, Schema.SObjectType.GW_Volunteers__Volunteer_Shift__c);
    /*cUnite.CombineDateTime.process(Trigger.new,Trigger.old,GW_Volunteers__Volunteer_Shift__c.getSObjectType().getDescribe());*/
}