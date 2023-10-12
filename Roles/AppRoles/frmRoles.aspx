<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRoles.aspx.cs" Inherits="AppRoles.frmRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="style.css" rel="stylesheet" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Registrar roles</title>
</head>
<body>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">BBBootstrap</span> </a>
                <div class="nav_list"> <a href="#" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span> </a> <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Users</span> </a> <a href="#" class="nav_link"> <i class='bx bx-message-square-detail nav_icon'></i> <span class="nav_name">Messages</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> <span class="nav_name">Bookmark</span> </a> <a href="#" class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Files</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon'></i> <span class="nav_name">Stats</span> </a> </div>
            </div> <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span> </a>
        </nav>
    </div>
    <!--Container Main start-->
    <div class="height-100 bg-light">
        <br />
        <br />
        
            <section>
    <div class="container">
        <div class="container2">
        <h1>ASIGNACIÓN DE ROLES</h1>
            </div>
  <form runat="server">
  <div class="form-group">
    <label for="exampleFormControlInput1">Identificación</label>
      <asp:TextBox ID="txtUsuario"  class="form-control" placeholder="123456789" runat="server"></asp:TextBox>
  </div>
      
  <div class="form-group">
    <label for="exampleFormControlInput1">Rol</label>
      <asp:DropDownList class="form-control" ID="cbxRol" runat="server" DataSourceID="SqlRoles" DataTextField="Nombre" DataValueField="PKCodigo">
          
                  
      </asp:DropDownList>

      <asp:SqlDataSource ID="SqlRoles" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" SelectCommand="SELECT * FROM [tbl_roles]"></asp:SqlDataSource>
  
     </div>
            <div class="form-group">
  <label for="exampleFormControlInput1">Fecha de caducación</label>
    <asp:TextBox type="date" ID="txtFechaCaduca"  class="form-control" runat="server"></asp:TextBox>
</div>
         <br />
      <div class="form-group" style="text-align:center;">
          <asp:Button ID="btn_Guardar" Class="btn btn-success" runat="server" Text="Asignar rol" OnClick="btn_Guardar_Click" />
          <asp:LinkButton ID="LinkButton1" Class="btn btn-primary" runat="server" OnClick="LinkButton1_Click">Ir a registrar personas</asp:LinkButton>
    <br />
          <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
          
</div>
 
</form>
    </div>
        </section>
    </div>
        <br />
   
   <script>
       document.addEventListener("DOMContentLoaded", function (event) {
   
const showNavbar = (toggleId, navId, bodyId, headerId) =>{
const toggle = document.getElementById(toggleId),
nav = document.getElementById(navId),
bodypd = document.getElementById(bodyId),
headerpd = document.getElementById(headerId)

// Validate that all variables exist
if(toggle && nav && bodypd && headerpd){
toggle.addEventListener('click', ()=>{
// show navbar
nav.classList.toggle('show')
// change icon
toggle.classList.toggle('bx-x')
// add padding to body
bodypd.classList.toggle('body-pd')
// add padding to header
headerpd.classList.toggle('body-pd')
})
}
}

showNavbar('header-toggle','nav-bar','body-pd','header')

/*===== LINK ACTIVE =====*/
const linkColor = document.querySelectorAll('.nav_link')

function colorLink(){
if(linkColor){
linkColor.forEach(l=> l.classList.remove('active'))
this.classList.add('active')
}
}
linkColor.forEach(l=> l.addEventListener('click', colorLink))

 // Your code to run since DOM is loaded and ready
});

   </script>
</body>
</html>
