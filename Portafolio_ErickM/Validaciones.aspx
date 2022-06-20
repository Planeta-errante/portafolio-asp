<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validaciones.aspx.cs" Inherits="Portafolio_ErickM.Validaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="d-flex justify-content-center">
        <h3 class="p-5">Validaciones</h3>
    </div>
    <div class="row">
        <div class="col-xl-4"></div>
        <div class="col-xl-4">
            <p>Nombre: </p>
            <asp:TextBox CssClass="form-control" ID="txt_nombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_nombre" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txt_nombre"
                CssClass="text-danger"></asp:RequiredFieldValidator>

            <p class="mt-2">Nombre 2: </p>
            <asp:TextBox CssClass="form-control" ID="txt_nombre2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cv_nombre" runat="server" ErrorMessage="Nombres distintos..." ControlToCompare="txt_nombre" 
                ControlToValidate="txt_nombre2" CssClass="text-danger"></asp:CompareValidator>

            <p class="mt-2">Edad: </p>
            <asp:TextBox type="number" CssClass="form-control" ID="txt_edad" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rv_edad" runat="server" ErrorMessage="Edad incorrecta..." Type="Integer" MinimumValue="18"
                MaximumValue="50" ControlToValidate="txt_edad" CssClass="text-danger"></asp:RangeValidator>

            <p class="mt-2">Correo: </p>
            <asp:TextBox CssClass="form-control" ID="txt_correo" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rev_correo" runat="server" ErrorMessage="Email incorrecto..." ControlToValidate="txt_correo"
                ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" CssClass="text-danger"></asp:RegularExpressionValidator>

            <asp:Button CssClass="btn btn-primary form-control mt-3" ID="btn_validar" runat="server" Text="Validar" />
        </div>
        <div class="col-xl-4"></div>
    </div>
</asp:Content>
