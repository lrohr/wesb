package com.ncl.fusebox;

import java.util.List;

import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.ObjectMessage;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueSession;
import javax.jms.Session;
import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/**
 * Publis the pending credit card details to JMS Queue
  */
public class QueueHelper {
	private Log log = LogFactory.getLog(QueueHelper.class.getName());

	private static final String QUEUE_JNDI= "java:comp/env/jms/ProdpendingCardTransactionQ";
	private static final String Q_CONN_FACTORY_JNDI= "java:comp/env/jms/ProdpendingCardTransactionCF";
	public void publishCreditCardMsg(List <NclCreditCardInfo> ccList){
		QueueConnection qconn = null;
		try {
			InitialContext ctx = new InitialContext();
			// Look up a JMS connection factory
			QueueConnectionFactory conFactory =
				(QueueConnectionFactory)ctx.lookup(Q_CONN_FACTORY_JNDI);

			qconn = conFactory.createQueueConnection();
			QueueSession session = qconn.createQueueSession(false,
					Session.AUTO_ACKNOWLEDGE);

			Queue  ccQueue = (Queue)ctx.lookup(QUEUE_JNDI);
			if( ccQueue == null){
				log.error("Cannot open queue jms/ProdpendingCardTransactionQ");
				return;
			}
			MessageProducer producer = session.createProducer(ccQueue);
			for ( NclCreditCardInfo nclCreditCardInfo :ccList){
				ObjectMessage msg = session.createObjectMessage(nclCreditCardInfo);
				log.info("Sending :"+nclCreditCardInfo.getCcTransId());
				producer.send(msg);
			}
			producer.close();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if ( qconn != null){
					qconn.close();
				}
			} catch (JMSException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
