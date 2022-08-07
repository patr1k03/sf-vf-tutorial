public class AccountListController {

    public ApexPages.StandardSetController accs{
        get{
            if(accs == null){
                accs = new ApexPages.StandardSetController(Database.getQueryLocator([select Id, Name, AccountNumber, Industry from Account LIMIT 10]));
            }
            return accs;
        }
        set;
    }

    public List<Account> getAccounts(){
        return (List<Account>)accs.getRecords();
    }
}