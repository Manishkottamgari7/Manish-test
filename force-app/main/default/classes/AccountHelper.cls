/**
 * @description Utility class for Account-related operations.
 * @author      Copado AI
 */
public with sharing class AccountHelper {

    /**
     * @description Categorises a list of Accounts by their AnnualRevenue:
     *              - 'High Value'  : AnnualRevenue >= 1,000,000
     *              - 'Mid Value'   : AnnualRevenue >= 100,000 and < 1,000,000
     *              - 'Low Value'   : AnnualRevenue < 100,000 or null
     *
     * @param  accounts  List of Account records to categorise.
     * @return           Map of category label → list of matching Accounts.
     */
    public static Map<String, List<Account>> categoriseByRevenue(List<Account> accounts) {

        Map<String, List<Account>> result = new Map<String, List<Account>>{
            'High Value' => new List<Account>(),
            'Mid Value'  => new List<Account>(),
            'Low Value'  => new List<Account>()
        };

        if (accounts == null || accounts.isEmpty()) {
            return result;
        }

        for (Account acc : accounts) {
            Decimal revenue = acc.AnnualRevenue != null ? acc.AnnualRevenue : 0;

            if (revenue >= 1000000) {
                result.get('High Value').add(acc);
            } else if (revenue >= 100000) {
                result.get('Mid Value').add(acc);
            } else {
                result.get('Low Value').add(acc);
            }
        }

        return result;
    }
}