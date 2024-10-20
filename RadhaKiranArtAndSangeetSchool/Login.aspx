<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RadhaKiranArtAndSangeetSchool.Login" %>

<!DOCTYPE html>
       
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>
        LOGIN PAGE
    </title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
        }
        * {
            box-sizing: border-box;
        }
    </style>
</head> 
        
<body style="background-image:url('/Images/pexels-ann-h-45017-1762851.jpg');background: rgb(2,0,36);background: linear-gradient(135deg, rgba(2,0,36,1) 0%, rgba(23,121,9,0.8977099236641222) 34%, rgba(0,212,255,1) 100%);background-repeat:no-repeat;height:100vh">
    <form id="form1" runat="server">
        <main style="display:flex;padding-top:20vh;justify-content:center" >
            <div style="height:400px;width:400px;background-color:white;border-radius:20%;display:flex;flex-direction:column">
                <div style="display:flex;justify-content:center;">
                    <p style="text-align:center;font-size:30px;font-family: "Poppins", sans-serif;">
                        Log in
                    </p>
                </div>
                <div style="display:flex;justify-content:left;margin-left:20%">
                    <table>
                        <tr>
                            <td>
                                User ID
                            </td>
                        </tr>
                        <tr>
                            <td style="display:flex;justify-content:center;padding-top:20px"> 
                                <div>
                                    <asp:Image runat="server" style="height:30px;width:30px" ImageUrl="~/Images/person.jpg" />                 
                                </div>    
                                <div>
                                    <asp:TextBox runat="server" ID="id" placeholder="Type your user ID" style="outline:0;border-width:0 0 2px;border-color:black;padding:0 0 5px 0;margin:0 0 0 0"></asp:TextBox>
                                </div>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password
                            </td>
                        </tr>
                        <tr>
                            <td style="display: flex; justify-content: center; padding-top: 20px">
                                <div>
                                    <asp:Image runat="server" Style="height: 30px; width: 30px" ImageUrl="~/Images/password.jpg" />
                                </div>
                                <div>
                                    <asp:TextBox runat="server" ID="pass" placeholder="Type your password" TextMode="Password" Style="outline: 0; border-width: 0 0 2px; border-color: black; padding: 0 0 5px 0; margin: 0 0 0 0"></asp:TextBox>
                                </div>

                            </td>
                        </tr>
                        
                    </table>
                </div>
                <div style="display: flex; justify-content: center; margin-top: 40px;">
                    <asp:Button runat="server" Text="Login" Style="width: 160px; height: 40px; border-radius: 20px; border-width: 0px; background-color: darkgreen; -webkit-box-shadow: 10px 10px 10px -3px rgba(0,0,0,0.66); -moz-box-shadow: 10px 10px 10px -3px rgba(0,0,0,0.66); box-shadow: 14px 13px 12px -3px rgba(0,0,0,0.66); copy text; color: white; font-size: 25px; cursor: pointer"
                        OnClick="login" />
                </div>
            </div>
        </main>
    </form>
</body>
</html>
