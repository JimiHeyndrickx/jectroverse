/*
 * Fleet.java
 *
 * Created on 17 januari 2007, 16:50
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package webapplication1.Fleet;


/**
 *
 * @author ruben
 */
public class Fleet {
    
   public static final String[] fleetNames = { 
                                    "Bombers", 
                                    "Fighters", 
                                    "Transports", 
                                    "Cruisers", 
                                    "Carriers", 
                                    "Soldiers", 
                                    "Droids", 
                                    "Goliaths", 
                                    "Phantoms", 
                                    "Psychics", 
                                    "Agents", 
                                    "Ghost ships", 
                                    "Exploration ships" }; 
   
   private static int[] fleet = new int[fleetNames.length];

    
    /** Creates a new instance of Fleet */
    public Fleet(int bombers, int fighters, int transports, int cruisers, int carriers, int soldiers, int droids, int goliaths, int phantoms, int psychicks, int agents, int ghostships, int expos) {
        
        fleet[0] = bombers;
        fleet[1] = fighters;
        fleet[2] = transports;
        fleet[3] = cruisers;
        fleet[4] = carriers;
        fleet[5] = soldiers;
        fleet[6] = droids;
        fleet[7] = goliaths;
        fleet[8] = phantoms;
        fleet[9] = psychicks;
        fleet[10] = agents;
        fleet[11] = ghostships;
        fleet[12] = expos;      
    }
    
    public Fleet(int[] fleetArray){ 
        if(fleetArray.length == fleet.length){
            for(int i = 0;i < fleetArray.length; i++)
                fleet[i] = fleetArray[i];
        }
        else System.err.println("Fleet Array sizes don't match");
    }
    
   /* public Fleet Split(Fleet splitFleet){
        
        int[] splitFleetArray = splitFleet.getFleetArray();
        
        int[] newFleet = new int[splitFleetArray.length];
        for(int i : fleet){
            newFleet[i] = fleet[i] - splitFleetArray[i];
            fleet[i] = fleet[i] - splitFleetArray[i];
        }
        return new Fleet(newFleet);
    }
    *
    */
    
    public int getUnits(int pointer){
        return fleet[pointer];
    }
    
    public String getUnitName(int pointer){
        return fleetNames[pointer];
    }
    
    public int[] getFleetArray(){
        return fleet;
    }
    
  /*  public static Fleet merge(Fleet firstFleet, Fleet secondFleet){
        int[] newFleet = firstFleet.getFleetArray();
        if(firstFleet.getFleetArray().length == secondFleet.getFleetArray().length){
            for(int i: firstFleet.getFleetArray()){
                newFleet[i] = firstFleet.getFleetArray()[i]  + secondFleet.getFleetArray()[i];
            }
        }
        return new Fleet(newFleet);
    }
   *
   */
    
    public String toString() {
        String s = "";
        for(int i = 0; i < fleet.length; i++)
            s = s + (fleetNames[i] + ": " + fleet[i] + "\n");
        return s;
    }
    
    
}
