<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<%--Register DDR Menu--%>
<%@ Register TagPrefix="ddr" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>


<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" />



<dnn:DnnCssInclude ID="general" runat="server" FilePath="css/main.min.css" PathNameAlias="SkinPath" Priority="100" />

<link href='<%= SkinPath%>css/<%= GetPortalSettings.PortalName%>Color.css?<%= DateTime.Now.ToLongTimeString() %>' rel='stylesheet' type='text/css'>
<!-- Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link href="http:////maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<!-- Bootstrap's JavaScript plugins) -->
<dnn:DnnJsInclude ID="bootstrapJavascript" runat="server" FilePath="js/bootstrap.min.js" PathNameAlias="SkinPath" Priority="100" ForceProvider="DnnFormBottomProvider" />
<dnn:DnnJsInclude ID="customjs" runat="server" FilePath="js/jquery.custom.js" PathNameAlias="SkinPath" Priority="95" ForceProvider="DnnFormBottomProvider" />


<div id="siteWrapper">
    <div id="siteCanvas">
         
        <header>


            <nav class="navbar navbar-default menu-background-color menu-bottom-border" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/"><%=PortalSettings.PortalName%></a>


                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <!--Left Menu -->
                        <ddr:MENU MenuStyle="Menu" runat="server" />
                        <!-- END Left Menu -->

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <dnn:USER ID="USER1" runat="server" />
                            </li>
                            <li>
                                <dnn:LOGIN runat="server" ID="dnnLogin" />
                            </li>

                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>


        </header>
        <div class="container-fluid background-color">
           <div id="offCanvas" class="offCanvas" style="display: inline-block; float: left;margin-left:-15px;" runat="server" visible="false"></div>
            <div class="container mainbackgroundcolor textColor">


                <div id="ContentPane" runat="server" visible="false" class="col-xs-12"></div>


            </div>
        </div>
    </div>
</div>
