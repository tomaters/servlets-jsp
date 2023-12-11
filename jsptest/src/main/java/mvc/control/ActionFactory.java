package mvc.control;

import mvc.action.Action;
import mvc.action.IndexAction;

public class ActionFactory {
// made as a singleton
	private static ActionFactory factory = new ActionFactory();

	private ActionFactory() {}

	public static synchronized ActionFactory getInstance() {
		if(factory == null) {
			factory = new ActionFactory();
		}
		return factory;
	}
	public Action getAction(String cmd) {
		Action action = null;
//		if(cmd.equals("index")) {
//			action = new IndexAction();
//		}
		switch(cmd) {
		 case "index":
			action = new IndexAction();
			break;
			default : throw new IllegalArgumentException("Unexpected value");
		}
		return action;
	}
}
