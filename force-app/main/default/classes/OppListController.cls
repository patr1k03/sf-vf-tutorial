public class OppListController {
  public ApexPages.StandardSetController opps {
    get {
      if (opps == null) {
        opps = new ApexPages.StandardSetController(
          Database.getQueryLocator(
            [SELECT Name, StageName, CloseDate, Amount FROM Opportunity]
          )
        );
      }
      return opps;
    }
    set;
  }

  public List<Opportunity> getOpportunities() {
    return (List<Opportunity>) opps.getRecords();
  }
}