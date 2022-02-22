package com.tourvn.utils;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.InitialLdapContext;
import javax.naming.ldap.LdapContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LDapUtil {

	public static String authMethod = "simple";
	public static String ldapVersion = "3";
	public static String ldapHost = "10.3.12.17";
	//public static String ldapHost = "10.151.6.248";
	public static String ldapPort = "389";

	private static Logger logger = LoggerFactory.getLogger(LDapUtil.class);

	private static String ATTRIBUTE_FOR_USER = "sAMAccountName";
	
	public static Attributes authenticateUser(String username, String password) {
		
		if (username == null || "".equals(username.trim()) || password == null || "".equals(password.trim()))
			return null;

		String searchFilter = "(&(objectClass=user)(" + ATTRIBUTE_FOR_USER + "=" + username + "))";
		// Create the search controls

		SearchControls searchCtls = new SearchControls();
		// searchCtls.setReturningAttributes(returnedAtts);
		// Specify the search scope
		searchCtls.setSearchScope(SearchControls.OBJECT_SCOPE);
		String searchBase = "";
		Hashtable<String, String> environment = new Hashtable<String, String>();
		environment.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		environment.put(Context.PROVIDER_URL, "ldap://" + ldapHost);	// Using starndard Port, check your instalation
		environment.put(Context.SECURITY_AUTHENTICATION, "simple");
		
		environment.put(Context.SECURITY_PRINCIPAL, username);
		environment.put(Context.SECURITY_CREDENTIALS, password);
		LdapContext ctxGC = null;
		try {
			logger.info("Connecting to host " + ldapHost + " at port " + ldapPort + "...");
			
			ctxGC = new InitialLdapContext(environment, null);
			
			// Search for objects in the GC using the filter
			NamingEnumeration<SearchResult> answer = ctxGC.search(searchBase, searchFilter, searchCtls);
			while (answer.hasMoreElements()) {
				SearchResult sr = answer.next();
				Attributes attrs = sr.getAttributes();
				if (attrs != null) {
					return attrs;
				}
			}
		} catch (NamingException e) {
			logger.error("LDAP authentication failed", e);
			return null;
		}
		return null;
	}

	public static boolean authentication(String strUser, String strPass) throws NamingException {
		
		Attributes att = authenticateUser(strUser, strPass);
		return att != null;
	}

	public static void main(String arg[]) throws NamingException {
		System.out.println(authentication("pakh.tctk", "ktdh12345"));
	}
}
