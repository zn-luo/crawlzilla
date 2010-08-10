package org.nchc.nutchez;
/**
 * ChangePasswdBean 用以設定密碼
 * 
 * @web
 * <a href="http://code.google.com/p/nutchez/">http://code.google.com/p/nutchez </a>
 * 
 * @author Waue, Shunfa, Rock {waue, shunfa, rock}@nchc.org.tw
 * 
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class ChangePasswdBean {
	private String oldPasswd;
	private String newPasswd;
	private String checkNewPassword;
	
	public boolean editPasswd() throws IOException {
		FileReader NP = new FileReader("/home/nutchuser/nutchez/system/.passwd");
		BufferedReader stdin = new BufferedReader(NP);
		String nutchuserPasswd = new String(stdin.readLine());
		
		if(nutchuserPasswd.equals(oldPasswd) && newPasswd.equals(checkNewPassword)){
			File editNP = new File("/home/nutchuser/nutchez/system/.passwd");
			FileWriter fw = new FileWriter(editNP , false);
			fw.write(newPasswd);
			fw.close();
			NP.close();
			return true;
		}
		else {
			NP.close();
			return false;
		}		
	}
	
	
	public void setOldPasswd(String oldPasswd) {
		this.oldPasswd = oldPasswd;
	}
	public String getOldPasswd() {
		return oldPasswd;
	}
	public void setNewPasswd(String newPasswd) {
		this.newPasswd = newPasswd;
	}
	public String getNewPasswd() {
		return newPasswd;
	}
	public void setCheckNewPassword(String checkNewPassword) {
		this.checkNewPassword = checkNewPassword;
	}
	public String getCheckNewPassword() {
		return checkNewPassword;
	}
}