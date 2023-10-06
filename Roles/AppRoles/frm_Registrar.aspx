<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Registrar.aspx.cs" Inherits="AppRoles.frm_Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
   <link href="style.css" rel="stylesheet" />
    <title>Registrar personas</title>
</head>
<body>
    <br />
    <div class="container">
        <div class="container2">
        <h1>SISTEMA CONTROL DE INGRESOS</h1>
            </div>
  <form runat="server">
  <div class="form-group">
    <label for="exampleFormControlInput1">Identificación</label>
      <asp:TextBox ID="txtId"  class="form-control" placeholder="123456789" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Primer Nombre</label>
      <asp:TextBox ID="txtPNombre"  class="form-control" placeholder="Primer nombre" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Segundo Nombre</label>
      <asp:TextBox ID="txtSNombre"  class="form-control" placeholder="Segundo nombre" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Primer Apellido</label>
      <asp:TextBox ID="txtPApellido"  class="form-control" placeholder="Primer apellido" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Segundo Apllido</label>
      <asp:TextBox ID="txtSApellido"  class="form-control" placeholder="Segundo apellido" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Contacto</label>
      <asp:TextBox ID="txtContacto"  class="form-control" placeholder="Contacto" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Correo</label>
      <asp:TextBox ID="txtCorreo"  class="form-control" placeholder="Correo" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">Sexo</label>
      <asp:DropDownList class="form-control" ID="cbxSexo" runat="server" DataSourceID="SqlSexo" DataTextField="Nombre" DataValueField="PKCodigo">
          
                  
      </asp:DropDownList>

      <asp:SqlDataSource ID="SqlSexo" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" ProviderName="<%$ ConnectionStrings:dbs_rolesConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tbl_sexo]"></asp:SqlDataSource>
     <br />
      <div class="form-group" style="text-align:center;">
      <asp:Button ID="btn_Guardar" Class="btn btn-success" runat="server" Text="Guardar" OnClick="btn_Guardar_Click" />
    <br />
          <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
          <asp:LinkButton ID="lnkRedireccion" runat="server" OnClick="lnkRedireccion_Click" >Ir a registrar roles</asp:LinkButton>
          
</div>
  </div>
</form>
    </div>
</body>
</html>
