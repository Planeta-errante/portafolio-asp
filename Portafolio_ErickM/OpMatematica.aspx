<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OpMatematica.aspx.cs" Inherits="Portafolio_ErickM.OpMatematica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="d-flex justify-content-center">
        <h3 class="p-5">Operaciones Matemáticas</h3>
    </div>

    <div class="row">
        <div class="col-xl-3"></div>
        <!-- Form -->
        <div class="col-xl-2">
            <p id="parrafoP" runat="server"></p>

            <div class="row">
                <div class="col">
                    <p>Número 1 : </p>
                    <asp:TextBox CssClass="form-control" ID="txt_num1" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3 mb-3">
                <div class="col">
                    <p>Número 2 : </p>
                    <asp:TextBox CssClass="form-control" ID="txt_num2" runat="server"></asp:TextBox>
                </div>
            </div>

            <div>
                <asp:RadioButtonList CssClass="form-control" ID="rbtn_operaciones" runat="server">
                    <asp:ListItem>Sumar</asp:ListItem>
                    <asp:ListItem>Restar</asp:ListItem>
                    <asp:ListItem>Multiplicar</asp:ListItem>
                    <asp:ListItem>Dividir</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <asp:Button CssClass="btn btn-primary form-control mt-5" ID="btn_calcular" runat="server" Text="Calcular" OnClick="OnClickOperar" />
        </div>
        <!-- Form -->

        <div class="col-xl-1 mt-5 mb-4"></div>

        <!-- Resultado -->
        <div class="col-xl-2 text-center">
            <h4 class="fw-bold">Resultado</h4>
            <p>
                <asp:Label CssClass="h5 fw-bold mt-5" ID="lbl_res" runat="server" Text=""></asp:Label>
            </p>
        </div>
        <!-- Resultado -->

        <div class="col-xl-4"></div>
    </div>
</asp:Content>
