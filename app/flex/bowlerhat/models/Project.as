package bowlerhat.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="projects")]
  [Bindable]
  public class Project extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var notes:String = "";

    public var startDate:Date = new Date;

    public var endDate:Date = new Date;

    public var completed:Boolean = false;

    [BelongsTo]
    public var user:User;

    [HasMany]
    public var tasks:ModelsCollection;
    
    public function Project() {
      super(LABEL);
    }
  }
}
