package edu.global.ex.security;

import lombok.Data;

@Data
public class GoogleProfile {
	public String id;
	public String sub;
	public String name;
	public String given_name;
	public String family_name;
	public String picture;
	public String email;
	public String email_verified;
	public String locale;
	public String verified_email;
}
