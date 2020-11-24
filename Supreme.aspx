<%@ Page Title="" Language="C#"  AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Supreme.aspx.cs" Inherits="Supreme" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="clearfix"></div>
<section id="secondary-banner" class="dynamic-image-8"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
               
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 ">
                <ul class="breadcrumb">
                    <li><a href="Home">Home</a></li>
                    <li><a href="products">Products</a></li>
                    <li><a href="Trucks">Trucks</a></li>
                    
                </ul>
            </div>
        </div>
    </div>
</section>
<!--secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
<section class="content">
    <div class="container">
        <div class="inner-page inventory-listing">
            <div class="inventory-heading margin-bottom-10 clearfix">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <h2>Supreme </h2>
                        <span class="margin-top-10">Drive and Deliver</span> </div>
                    
                </div>
            </div>
  <div class="modal fade" id="myModal" role="dialog">
                                                    <div class="modal-dialog">

                                                        <!-- Modal content-->
                                                        <div class="modal-content">
                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                <ContentTemplate>

                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                        <h4 class="modal-title">E-mail to a Friend</h4>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <table>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="lblsender" runat="server" Text="Your Name: *" CssClass="form-element" ></asp:Label>

                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtsender" runat="server" CssClass="form-control" Style="width: 300px" placeholder="Your Name" required></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtsender"></asp:RequiredFieldValidator>
                                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter Only Characters" ControlToValidate="txtsender" Display="Static" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="lblreceiver" runat="server" Text="Your friend's name *" CssClass="form-element"  ></asp:Label>

                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtreceiver" runat="server" CssClass="form-control" Style="width: 300px" placeholder="Your Friend's Name" required></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtreceiver"></asp:RequiredFieldValidator>
                                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter Only Characters" ControlToValidate="txtreceiver" Display="Static" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" ></asp:RegularExpressionValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="lblemail" runat="server" Text="Your friend's E-mail ID: *" CssClass="form-element" Style="width: 200px"></asp:Label>

                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Style="width: 300px" placeholder="Your Friend's E-mail ID" required> </asp:TextBox><br /><br />
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" ErrorMessage="Please enter valid Email ID" Display="Static" ControlToValidate="txtemail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,6}|([-.]\w+)"></asp:RegularExpressionValidator>
                                                                                </td>
                                                                            </tr>
                                                                        </table>

                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>

                                                            <div class="modal-footer">
                                                                <asp:LinkButton ID="btn_cancel" runat="server" class="btn btn-danger" data-dismiss="modal" OnClick="btn_cancel_Click"> Cancel</asp:LinkButton>
                                                              
                                                                <asp:LinkButton ID="btn_send" runat="server" class="btn btn-primary" OnClick="btn_send_Click"><i class="fa fa-send"></i> Send</asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
            <div class="content-nav margin-bottom-30">
                <div class="row">
                    <div class="col-md-9">
                    <ul>
                        <li class="prev1 gradient_button"><a href="Sartaj5252">Prev Vehicle</a></li>
                        <%--<li class="schedule gradient_button"><a href="forms/schedule.php?recaptcha" class="fancybox_div">Schedule Test Drive</a></li>--%>
                        <li class="pdf gradient_button"><a href="PDF_Broucher/Supreme_BS-III.pdf" target="_blank" class="">PDF Brochure</a></li>
                        <li id="email" class="email gradient_button"><a id="A1" href=""  runat="server" onclick="function();" >Email to a Friend</a></li>
                        <li class="next1 gradient_button"><a href="Super12">Next Vehicle</a></li>
                    </ul>
                        </div>
                    <div class="col-md-3">
                    <h4>Supreme </h4></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 left-content padding-left-none"> 
                  
                    <!--Slider End-->
                    <div class="clearfix"></div>
                    <div class="bs-example bs-example-tabs example-tabs margin-top-10">
                        <ul id="myTab" class="nav nav-tabs">
                            <li><a href="#features" data-toggle="tab">Features &amp; Options</a></li>
                            <li><a href="#technical" data-toggle="tab">Technical Specifications</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content margin-top-15 margin-bottom-20">
                            <div class="tab-pane fade in active" id="features" >
                                
                                <ul class="fa-ul">
                                    <li><i class="fa-li fa fa-check"></i>Powerful Engine-Higher Pickup, Higher Torque at lower RPM, Gradebility and Fuel Efficiency.</li>
                                    <li><i class="fa-li fa fa-check"></i> Heavy Duty Gear Box and Bigger Clutch- Longer Life.</li>
                                    <li><i class="fa-li fa fa-check"></i> Box Type Chassis with Tabular cross member,Provide better Strength and Rigidity.</li>
                                    <li><i class="fa-li fa fa-check"></i> Steering with variable Gear Ratio-Less Driver Fatigue.</li>
                                    <li><i class="fa-li fa fa-check"></i> Roof Ventilation,less Driver Fatigue and Better Comfort.</li>
                                    <li><i class="fa-li fa fa-check"></i> Ready availabilty of Spares at reasonable Price.</li>
                                    <li><i class="fa-li fa fa-check"></i> Power Steering (Optional).</li>

                                
                                </ul>
                           </div>
                                    

                            <div class="tab-pane fade" id="technical">
                              <table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive">
                <colgroup><col width="242">
                <col width="118" span="2">
                <col width="157">
                </colgroup><tbody><tr>
                  <td width="205" class="fontBody"><strong>MODEL</strong></td>
                  <td colspan="2" class="fontBody"><strong>SUPREME    BS - III</strong></td>
                  <td width="240" class="fontBody"><strong>SUPREME BS - IV</strong></td>
                </tr>
                <tr>
                  <td class="fontBody">Engine &amp;    Displacement</td>
                  <td colspan="2" class="fontBody">SLT3 &amp; Numeral, 3455 cc</td>
                  <td class="fontBody">SLT4 &amp; Numeral,    3455 cc</td>
                </tr>
                <tr>
                  <td class="fontBody">Type</td>
                  <td colspan="2" class="fontBody">4 - Cylinder in line - OHV</td>
                  <td class="fontBody">Common Rail Cool EGR</td>
                </tr>
                <tr>
                  <td class="fontBody">&nbsp;</td>
                  <td colspan="3" class="fontBody">Diesel Turbo Charger with    Intercooler</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Engine    Output</td>
                  <td colspan="2" class="fontBody">75 Kw @ 3000 rpm</td>
                  <td class="fontBody">75 Kw @ 2800 rpm</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Torque</td>
                  <td colspan="2" class="fontBody">270Nm@ 1750-2000 rpm</td>
                  <td class="fontBody">296Nm@ 1500 rpm</td>
                </tr>
              </tbody></table>

<table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive" >
                <colgroup><col width="215" span="3">
                <col width="124" span="2">
                </colgroup><tbody><tr height="20">
                  <td width="215" height="20" class="fontBody"><strong>Variants</strong></td>
                  <td width="215" class="fontBody"><div align="center"><strong>I</strong></div></td>
                  <td width="215" class="fontBody"><div align="center"><strong>II</strong></div></td>
                  <td width="124" class="fontBody"><div align="center"><strong>III</strong></div></td>
                  <td width="124" class="fontBody"><div align="center"><strong>IV</strong></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">DIMENSIONS</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Wheelbase (mm)</td>
                  <td align="right" class="fontBody"><div align="center">2815</div></td>
                  <td align="right" class="fontBody"><div align="center">3335</div></td>
                  <td align="right" class="fontBody"><div align="center">3940</div></td>
                  <td align="right" class="fontBody"><div align="center">4760</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Overall Length (mm)</td>
                  <td align="right" class="fontBody"><div align="center">5454</div></td>
                  <td align="right" class="fontBody"><div align="center">5454</div></td>
                  <td align="right" class="fontBody"><div align="center">6950</div></td>
                  <td align="right" class="fontBody"><div align="center">8326</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Overall Width(mm)</td>
                  <td align="right" class="fontBody"><div align="center">2200</div></td>
                  <td align="right" class="fontBody"><div align="center">2200</div></td>
                  <td align="right" class="fontBody"><div align="center">2200</div></td>
                  <td align="right" class="fontBody"><div align="center">2200</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Overall Height (mm)</td>
                  <td align="right" class="fontBody"><div align="center">2070</div></td>
                  <td align="right" class="fontBody"><div align="center">2070</div></td>
                  <td align="right" class="fontBody"><div align="center">2070</div></td>
                  <td align="right" class="fontBody"><div align="center">2070</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Track Front(mm)</td>
                  <td align="right" class="fontBody"><div align="center">1640</div></td>
                  <td align="right" class="fontBody"><div align="center">1640</div></td>
                  <td align="right" class="fontBody"><div align="center">1640</div></td>
                  <td align="right" class="fontBody"><div align="center">1640</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Track Rear(mm)</td>
                  <td align="right" class="fontBody"><div align="center">1486</div></td>
                  <td align="right" class="fontBody"><div align="center">1486</div></td>
                  <td align="right" class="fontBody"><div align="center">1486</div></td>
                  <td align="right" class="fontBody"><div align="center">1486</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Min Ground Clearance</td>
                  <td align="right" class="fontBody"><div align="center">206</div></td>
                  <td align="right" class="fontBody"><div align="center">206</div></td>
                  <td align="right" class="fontBody"><div align="center">206</div></td>
                  <td align="right" class="fontBody"><div align="center">206</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">GVW(kgs)</td>
                  <td align="right" class="fontBody"><div align="center">8000</div></td>
                  <td align="right" class="fontBody"><div align="center">8000</div></td>
                  <td align="right" class="fontBody"><div align="center">8000</div></td>
                  <td align="right" class="fontBody"><div align="center">8000</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">CARGO BODY</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Inside Length (mm)</td>
                  <td align="right" class="fontBody"><div align="center">3740</div></td>
                  <td align="right" class="fontBody"><div align="center">3740</div></td>
                  <td align="right" class="fontBody"><div align="center">5240</div></td>
                  <td align="right" class="fontBody"><div align="center">6610</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Inside Width (mm)</td>
                  <td align="right" class="fontBody"><div align="center">2080</div></td>
                  <td align="right" class="fontBody"><div align="center">2080</div></td>
                  <td align="right" class="fontBody"><div align="center">2080</div></td>
                  <td align="right" class="fontBody"><div align="center">2080</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Load Area(mm)</td>
                  <td class="fontBody"><div align="center">3740X2080</div></td>
                  <td class="fontBody"><div align="center">3740X2080</div></td>
                  <td class="fontBody"><div align="center">5240X2080</div></td>
                  <td class="fontBody"><div align="center">6610X2080</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Empty Vehicle Weight(Kg)</td>
                  <td align="right" class="fontBody"><div align="center">2750</div></td>
                  <td align="right" class="fontBody"><div align="center">2800</div></td>
                  <td align="right" class="fontBody"><div align="center">3200</div></td>
                  <td align="right" class="fontBody"><div align="center">3000</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">TYRE</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Tyres (Front &amp; Rear)</td>
                  <td class="fontBody"><div align="center">7.50 X 16-14 PR / 16 PR</div></td>
                  <td class="fontBody"><div align="center">7.50 X 16-14 PR / 16 PR</div></td>
                  <td class="fontBody"><div align="center">7.50 X 16-14 PR / 16 PR</div></td>
                  <td class="fontBody"><div align="center">7.50 X 16-14 PR / 16 PR</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">No of Tyres</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center">6+1</div></td>
                  <td class="fontBody"><div align="center">6+1</div></td>
                  <td class="fontBody"><div align="center">6+1</div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td class="fontBody"><div align="center">6+1</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">ENGINE SPECIFICATION</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Clutch</td>
                  <td class="fontBody"><div align="center">Single plate Diaphragm Type - Dia. 260mm</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">TRANSMISSION</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Gear</td>
                  <td class="fontBody"><div align="center">Manual 5F and 1R</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">CHASSIS FRAME</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Member size</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td colspan="2" class="fontBody"><div align="center">Box type&nbsp; frame :200 mm ( web) x 65mm (flange)</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">SUSPENSION</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                
                <tr height="20">
                  <td height="20" class="fontBody"><div align="center">Front &amp; Rear&nbsp; Suspension</div></td>
                  <td class="fontBody"><div align="center">Semi-Elliptical Type</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td class="fontBody"><div align="center">Multi Leaf Spring ( Front &amp; Rear)</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td class="fontBody"><div align="center">Shock Absorber: Hydraulic Dampers</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">ELECTRICAL</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Battery</td>
                  <td class="fontBody"><div align="center">12V-70 Ah</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Alternator</td>
                  <td class="fontBody"><div align="center">35 Amp</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">STEERING</td>
                  <td class="fontBody"><div align="center">Manual type, recirculating ball /</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td class="fontBody"><div align="center">Power Steering (Optional )</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">BRAKES</td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Service Brakes</td>
                  <td class="fontBody"><div align="center">Dual Circulating - Hydraulic/</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody"></td>
                  <td colspan="2" class="fontBody"><div align="center">Full Air S Cam(Optional    )- Available only on 2815,3335,3940 AND 4760 Wheel Bases</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
                <tr height="20">
                  <td height="20" class="fontBody">Fuel tank</td>
                  <td class="fontBody"><div align="center">90 lts</div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                  <td class="fontBody"><div align="center"></div></td>
                </tr>
              </tbody></table>

                            </div>
                            
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 right-content padding-right-none">
                    <div class="side-content">
                         <div class="padding-vertical-15 margin-bottom-40">
                            
                           <img class="img-responsive" src="My_images/Trucks/supreme_xm.jpg" alt="">
                        </div>
                        <div class="clearfix"></div>
                        
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="recent-vehicles-wrap">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 recent-vehicles padding-left-none xs-padding-bottom-20">
                        <h5 class="margin-top-none">Similar Vehicles</h5>
                        <p>Browse through the vast
                            selection of vehicles that
                            have been added
                            to our inventory.</p>
                    </div>
                    <div class="col-md-10 col-sm-8 padding-right-none sm-padding-left-none xs-padding-left-none">
                        <div class="carasouel-slider3">
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="prestige"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/prestige bs-III.jpg" alt="" class="img-responsive"> </div>
                                   
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Super12"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/super-12xm-3.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Sartaj"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/sartaj-3.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="HD19"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/HD-19-3.jpg" alt="" class="img-responsive"> </div>
                                   
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--container ends--> 
</section>
<!--content ends-->
   
<script type="text/javascript">
    $(function show() {

        $("#email").click(function () {
            //jQuery.noConflict();
            $("#myModal").modal('show');

        });
    });
</script>
      </asp:Content>