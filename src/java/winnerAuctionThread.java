
import Model.AuctionParticipantTable;
import Model.AuctionTable;
import Model.AuctionWinnerTable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Rutvik
 */
public class winnerAuctionThread extends Thread {

    public void run() {
        Session se = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = se.beginTransaction();

        Criteria cr = se.createCriteria(AuctionTable.class);
        ArrayList<AuctionTable> al = (ArrayList<AuctionTable>) cr.list();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date now = new Date();
        String strDate = sdf.format(now);
        Date currentDate = null;
        try {
             currentDate = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(strDate);
        } catch (ParseException ex) {
            Logger.getLogger(winnerAuctionThread.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (al.size() > 0) {
            for(int i = 0; i < al.size(); i++) {
                AuctionTable au = al.get(i);
                Integer auctionID = au.getAuctionID();
                String enddate = au.getAuctionEndDateTime();
                Date endDate = null;
                try {
                    endDate = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(enddate);
                } catch (ParseException ex) {
                    Logger.getLogger(winnerAuctionThread.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                int ans = currentDate.compareTo(endDate);
                if(ans==1)
                {
                    Query q = se.createSQLQuery("select * from auction_winner_table "
                            + "where Auction_ParticipantID in "
                            + "(select Auction_Participant_ID from auction_participant_table "
                            + "where Auction_ID =:apid)");
                    q.setInteger("apid", auctionID);
                    
                    List l = q.list();
                    
                    if(l.size() > 0)
                    {
                        
                    }
                    else{
                        Query q1 = se.createSQLQuery("SELECT * FROM "
                                + "bidding_wars.auction_participant_table "
                                + "where Auction_ID=:aid order by Price Desc limit 1");
                        q1.setInteger("aid", auctionID);
                        
                        List<Object[]> l1 = q1.list();
                        if(l1.size() > 0 ){
                            Object[] ob = l1.get(0);
                            System.out.println(ob[0].toString());
                            
                            AuctionParticipantTable ap=new AuctionParticipantTable();
                            ap.setAuctionParticipantID((Integer) ob[0]);
                            
                            AuctionWinnerTable aw =new AuctionWinnerTable();
                            aw.setAuctionParticipantID(ap);
                            aw.setAuctionPurchaseDate(strDate);
                            se.save(aw);
                            
                            
                            
                        }                     
                        
                        
                    }
                }
            }
        }
        tr.commit();
        se.close();
        
    }

}
