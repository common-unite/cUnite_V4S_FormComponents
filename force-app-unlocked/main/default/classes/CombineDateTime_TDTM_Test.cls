/**
 * Created by bobbywright on 4/17/20.
 */

@IsTest
private class CombineDateTime_TDTM_Test {
    @IsTest
    static void testBehavior() {
        CombineDateTime_TDTM controller = new CombineDateTime_TDTM();

        try {
            controller.run(
                    new List<Account>(),
                    new List<Account>(),
                    npsp.TDTM_Runnable.Action.BeforeInsert,
                    Account.getSObjectType().getDescribe(),
                    null
            );
        } catch(Exception ex) {

        }


    }
}
