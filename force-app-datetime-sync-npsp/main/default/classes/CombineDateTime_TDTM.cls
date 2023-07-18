/**
 * Created by bobbywright on 4/10/20.
 */

global class CombineDateTime_TDTM extends npsp.TDTM_RunnableMutable {
    private static set<npsp.TDTM_Runnable.Action> validActions = new set<npsp.TDTM_Runnable.Action>{npsp.TDTM_Runnable.Action.BeforeInsert, npsp.TDTM_Runnable.Action.BeforeUpdate};

    global override void run(List<SObject> listNew, List<SObject> listOld,
            npsp.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult,
            npsp.TDTM_Runnable.DmlWrapper dmlWrapper) {
        if(validActions.contains(triggerAction) && !Test.isRunningTest()) cUnite.CombineDateTime.process(listNew,listOld,objResult);
    }
}