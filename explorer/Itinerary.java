
public class Itinerary {
    
  private int itinerary_id;
  private String itinerary_desc;
  private double latd;
  private double longd;
  private int owner_id;
  private date creation_date;
  private date visited_date;

  public Itinerary(){
      
  } 
    
  public Itinerary(int itinerary_id, String itinerary_desc,
                     String latd, String longd, String owner_id, String creation_date,String visited_date) {
    setitinerary_id(itinerary_id);
    setitinerary_desc(itinerary_desc);
    setlatd(latd);
    setlongd(longd);
    setowner_id(owner_id);
    setccreation_date(creation_date);
    setvisited_date(visited_date);
  }
    
  public int getitinerary_id() {
    return(itinerary_id);
  }

  protected void setitinerary_id(int itinerary_id) {
    this.itinerary_id = itinerary_id;
  }

  public String getitinerary_desc() {
    return(itinerary_desc);
  }

  protected void setitinerary_desc(String itinerary_desc) {
    this.itinerary_desc = itinerary_desc;
  }

  public double getlatd() {
    return(latd);
  }

  protected void setlatd(double latd) {
    this.latd = latd;
  }
    
  public double getlongd() {
    return(longd);
  }

  protected void setlongd(double longd) {
    this.longd = longd;
  }

  public int getowner_id() {
    return(owner_id);
  }

  protected void setowner_id(int owner_id) {
    this.owner_id = owner_ids;
  }
    
  public date getcreation_date() {
    return(creation_date);
  }

  protected void setcreation_date(date creation_date) {
    this.creation_date = creation_date;
  }
    
  public date getvisited_date() {
    return(visited_date);
  }

  protected void setvisited_date(date visited_date) {
    this.visited_date = visited_date;
  }
    
}
