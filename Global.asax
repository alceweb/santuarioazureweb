<%@ Application Language="C#" %>
<%@ Import Namespace="santuarioazureweb" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Codice eseguito all'avvio dell'applicazione
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        AuthConfig.RegisterOpenAuth();
        RouteConfig.RegisterRoutes(RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Codice eseguito all'arresto dell'applicazione

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Codice eseguito in caso di errore non gestito

    }

</script>
