<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRoles.aspx.cs" Inherits="AppRoles.frmRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="style.css" rel="stylesheet" />
    <title>Registrar roles</title>
</head>
<body>
        <br />
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
  <label for="exampleFormControlInput1">Fecha de caducación</label>
    <asp:TextBox type="date" ID="txtFechaCaduca"  class="form-control" runat="server"></asp:TextBox>
</div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Rol</label>
      <asp:DropDownList class="form-control" ID="cbxRol" runat="server" DataSourceID="SqlRoles" DataTextField="Nombre" DataValueField="PKCodigo">
          
                  
      </asp:DropDownList>

      <asp:SqlDataSource ID="SqlRoles" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" SelectCommand="SELECT * FROM [tbl_roles]"></asp:SqlDataSource>
     <br />
      <div class="form-group" style="text-align:center;">
          <asp:Button ID="btn_Guardar" Class="btn btn-success" runat="server" Text="Asignar rol" OnClick="btn_Guardar_Click" />
    <br />
          <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
          
</div>
  </div>
</form>
    </div>
</body>
</html>
