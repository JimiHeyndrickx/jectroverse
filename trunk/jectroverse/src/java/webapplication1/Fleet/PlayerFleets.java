/*
 * PlayerFleets.java
 *
 * Created on 17 januari 2007, 16:52
 *
 */

package webapplication1.Fleet;

import java.util.ArrayList;

/**
 *
 * @author De Rouck Ruben
 */
public class PlayerFleets {
    
    //ArrayList<Fleet> fleets = new ArrayList<Fleet>();
    ArrayList fleets = new ArrayList();
    /** Creates a new instance of PlayerFleets */
    public PlayerFleets() {
        Fleet f = new Fleet(0,40,0,0,0,80,0,0,0,50,50,0,4);
        addFleet(f);
    }
    
    public void addFleet(Fleet fleet){
        fleets.add(fleet);
    }
    
    public Fleet getFleet(int i){
        return (Fleet) fleets.get(i);
        
    }
    
    public int getNumberOfFleets(){
        return fleets.size();
    }
    
    
    public void SplitFleet(int fleetIndex, Fleet newFleet){
        //put the old fleet into a fleetArray
        int[] oldFleet = getFleet(fleetIndex).getFleetArray();
        
        boolean checkflag = true;
        for(int i = 0; i < oldFleet.length; i++){
            if(oldFleet[i] < newFleet.getFleetArray()[i])
                checkflag = false;
        }
            
        if(checkflag){ /// check if the new fleet doesn't create new units
            // add the new fleet to the list
            addFleet(newFleet);
            //remove the old fleet
            fleets.remove(fleetIndex);
            
            // discard the splitted units from the old fleet
            for(int i = 0; i < oldFleet.length; i++)
                oldFleet[i] -= newFleet.getFleetArray()[i];
            //put the 2nd fleet in to array too;
            addFleet(new Fleet(oldFleet));
            
        }
    }
    
    public void MergeFleet(int firstFleetIndex, int secondFleetIndex){
        if(fleets.size() > 1){
            
        }
        else
            System.err.println("cant merge only 1 fleet)");
        
    }
    
    public void printFleets(){
        for(int j = 0; j < getNumberOfFleets(); j++){
            System.out.println(getFleet(0));
        }
    }
    
    public static void main(String[] args){
        
        // split fleet1 from the main fleet:
        Fleet newFleetWithAVeryOriginalName =  new Fleet(0,10,0,0,0,10,0,0,0,0,0,0,0);
        final PlayerFleets pf = new PlayerFleets();
        pf.printFleets();
        System.out.println("newFleetWithName" + newFleetWithAVeryOriginalName);
    }
    

}