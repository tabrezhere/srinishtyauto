<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }
    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("About_Us", "About_Us", "~/About_Us.aspx");
        routes.MapPageRoute("", "Home", "~/Default.aspx");
      routes.MapPageRoute("Products", "Products", "~/products.aspx");
      routes.MapPageRoute("Services", "Services", "~/Services.aspx");
      routes.MapPageRoute("Gallery", "Gallery", "~/Gallery.aspx");
      routes.MapPageRoute("Contact", "Contact", "~/Contact.aspx");
      routes.MapPageRoute("Careers", "Careers", "~/Careers.aspx");
      routes.MapPageRoute("Buses", "Buses", "~/Buses.aspx");
      routes.MapPageRoute("Trucks", "Trucks", "~/Trucks.aspx");
        //Trucks

      routes.MapPageRoute("HD19", "HD19", "~/HD19.aspx");
      routes.MapPageRoute("Prestige", "prestige", "~/prestige.aspx");
      routes.MapPageRoute("Sartaj", "Sartaj", "~/Sartaj.aspx");
      routes.MapPageRoute("Samrat", "Samrat", "~/Samrat.aspx");
      routes.MapPageRoute("Sartaj5252", "Sartaj5252", "~/Sartaj5252.aspx");
      routes.MapPageRoute("Sartaj59xm", "Sartaj59xm", "~/Sartaj59xm.aspx");
      routes.MapPageRoute("Super12", "Super12", "~/Super12.aspx");
      routes.MapPageRoute("Super", "Super", "~/Super.aspx");
      routes.MapPageRoute("Supreme", "Supreme", "~/Supreme.aspx");
        
        //Buses

      routes.MapPageRoute("Ambulance", "Ambulance", "~/Ambulance.aspx");
      routes.MapPageRoute("S7_School", "S7_School", "~/S7_School.aspx");
      routes.MapPageRoute("S7_Staff", "S7_Staff", "~/S7_Staff.aspx");
      routes.MapPageRoute("Prestigious", "Prestigious", "~/Prestigious.aspx");
      routes.MapPageRoute("404", "404", "~/404.aspx");
    }
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

        
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
