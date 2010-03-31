package bowlerhat.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="locations")]
  [Bindable]
  public class Location extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var notes:String = "";

    [BelongsTo]
    public var user:User;

    [HasMany]
    public var tasks:ModelsCollection;
    
    public function Location() {
      super(LABEL);
    }
  }
}
