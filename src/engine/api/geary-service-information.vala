/* Copyright 2016 Software Freedom Conservancy Inc.
 *
 * This software is licensed under the GNU Lesser General Public License
 * (version 2.1 or later).  See the COPYING file in this distribution.
 */

public abstract class Geary.ServiceInformation : GLib.Object {
    public string host { get; set; default = ""; }
    public uint16 port { get; set; }
    public bool use_starttls { get; set; default = false; }
    public bool use_ssl { get; set; default = true; }
    public bool remember_password { get; set; default = false; }
    public Geary.Credentials credentials { get; set; default = new Geary.Credentials(null, null); }
    public Geary.Service service { get; set; }

    // Used with SMTP servers
    public bool smtp_noauth { get; set; default = false; }
    public bool smtp_use_imap_credentials { get; set; default = false; }

    public abstract void refresh_settings() throws Error;

    public abstract void refresh_credentials() throws Error;

    public abstract void get_values(ref KeyFile key_file);
}
