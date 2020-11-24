<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Prestigious.aspx.cs" Inherits="Prestigious" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <body>
<!--Header Start-->

<!--Header End-->
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
                    <li><a href="Buses">Buses</a></li>
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
                        <h2>Prestigious Bus </h2>
                        <span class="margin-top-10">Blending Comfort with Luxury</span> </div>
                    
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
                        <li class="prev1 gradient_button"><a href="Ambulance">Prev Vehicle</a></li>
                        <%--<li class="schedule gradient_button"><a href="forms/schedule.php?recaptcha" class="fancybox_div">Schedule Test Drive</a></li>--%>
                        <li class="pdf gradient_button"><a href="PDF_Broucher/PrestigiousBus.pdf" target="_blank" class="">PDF Brochure</a></li>
                         <li id="email" class="email gradient_button"><a id="A1" href=""  runat="server" onclick="function();" >Email to a Friend</a></li>
                        <li class="next1 gradient_button"><a href="S7_Staff">Next Vehicle</a></li>
                    </ul>
                         </div>
                    <div class="col-md-3">
                    <h4>Prestigious </h4></div>
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
                                     <li><i class="fa-li fa fa-check"></i>Available in BS-III & BS-IV Versions.</li>
                                    <li><i class="fa-li fa fa-check"></i>Powerful Engine-Higher Pickup, Higher Torque at lower RPM, Gradebility and Fuel Efficiency.</li>
                                    <li><i class="fa-li fa fa-check"></i> Heavy Duty Gear Box and Bigger Clutch- Longer Life.</li>
                                    <li><i class="fa-li fa fa-check"></i> Box Type Chassis with Tabular cross member,Provide better Strength and Rigidity.</li>
                                    <li><i class="fa-li fa fa-check"></i> Steering with variable Gear Ratio-Less Driver Fatigue.</li>
                                    <li><i class="fa-li fa fa-check"></i> Roof Ventilation,less Driver Fatigue and Better Comfort.</li>
                                    <li><i class="fa-li fa fa-check"></i> Ready availabilty of Spares at reasonable Price.</li>
                                    <li><i class="fa-li fa fa-check"></i> Power Steering (Optional)</li>
                                
                                </ul>
                           </div>
                                    

                            <div class="tab-pane fade" id="technical">
                                        <table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive">
                                            <colgroup>
                                                <col width="242">
                                                <col width="164">
                                                <col width="161">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td width="248" class="fontBody"><strong>MODEL</strong></td>
                                                    <td width="191" class="fontBody"><strong>PRESTIGE BS -    III</strong></td>
                                                    <td width="189" class="fontBody"><strong>PRESTIGE BS -    IV</strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Engine &amp;    Displacement</td>
                                                    <td class="fontBody">SLT3 &amp; Numeral,    3455 cc</td>
                                                    <td class="fontBody">SLT4 &amp; Numeral,    3455 cc</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Type</td>
                                                    <td class="fontBody">4 - Cylinder in line    - OHV</td>
                                                    <td class="fontBody">Common Rail Cool EGR</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">&nbsp;</td>
                                                    <td colspan="2" class="fontBody">Diesel Turbo Charger with    Intercooler</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Max. Engine    Output</td>
                                                    <td class="fontBody">75 Kw @ 3000 rpm</td>
                                                    <td class="fontBody">75 Kw @ 2800 rpm</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Max. Torque</td>
                                                    <td class="fontBody">270Nm@ 1750-2000 rpm</td>
                                                    <td class="fontBody">296Nm@ 1500 rpm</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Clutch</td>
                                                    <td colspan="2" class="fontBody">Single plate Diaphragm    Type, Dia. 260 mm</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Gear Box</td>
                                                    <td colspan="2" class="fontBody">Synchromesh Manual    5-Forward and 1-Reverse</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Steering</td>
                                                    <td colspan="2" class="fontBody">Mechanical / Power Steering    (Optional)</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Brakes</td>
                                                    <td colspan="2" class="fontBody">Hydraulic Vaccume    assisted&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Suspension</td>
                                                    <td colspan="2" class="fontBody">Semi Elliptical Type Multi    Leaf Spring</td>
                                                </tr>
                                                </tbody>
                                        </table>
                                        <table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive">
                                             <tbody>
                                            <tr>
                                                <td class="fontBody" width="248">Varients(Including Driver)</td>
                                                <td class="fontBody"><strong>48D</strong></td>
                                                <td class="fontBody"><strong>26D</strong></td>
                                                <td class="fontBody"><strong>48ESD</strong></td>
                                                <td class="fontBody"><strong>26SD</strong></td>
                                                <td class="fontBody"><strong>50A</strong></td>
                                                <td class="fontBody"><strong>50L</strong></td>
                                                <td class="fontBody"><strong>XL</strong></td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Standard Seats</td>
                                                <td class="fontBody">18</td>
                                                <td class="fontBody">20</td>
                                                <td class="fontBody">20</td>
                                                <td class="fontBody">24</td>
                                                <td class="fontBody">26</td>
                                                <td class="fontBody">32</td>
                                                <td class="fontBody">40</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">High Back Seats</td>
                                                <td class="fontBody">18</td>
                                                <td class="fontBody">20</td>
                                                <td class="fontBody">20</td>
                                                <td class="fontBody">24</td>
                                                <td class="fontBody">26</td>
                                                <td class="fontBody">32</td>
                                                <td class="fontBody">40</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Semi-Delux Seats</td>
                                                <td class="fontBody">14</td>
                                                <td class="fontBody">16</td>
                                                <td class="fontBody">16</td>
                                                <td class="fontBody">18</td>
                                                <td class="fontBody">20</td>
                                                <td class="fontBody">23</td>
                                                <td class="fontBody">31</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Delux Seats</td>
                                                <td class="fontBody">10</td>
                                                <td class="fontBody">13</td>
                                                <td class="fontBody">13</td>
                                                <td class="fontBody">14</td>
                                                <td class="fontBody">16</td>
                                                <td class="fontBody">19</td>
                                                <td class="fontBody">23</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive">
                                            
                                             <tbody>
                                            <tr>
                                                <td class="fontBody" colspan="8" >DIMENSIONS
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="fontBody" width="248">Wheelbase (mm)</td>
                                                <td class="fontBody">2515</td>
                                                <td class="fontBody">2815</td>
                                                <td class="fontBody">2815</td>
                                                <td class="fontBody">3335</td>
                                                <td class="fontBody">3335</td>
                                                <td class="fontBody">3940</td>
                                                <td class="fontBody">4760</td>

                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Overall Length(mm)</td>
                                                <td class="fontBody">4992</td>
                                                <td class="fontBody">5548</td>
                                                <td class="fontBody">5548</td>
                                                <td class="fontBody">6047</td>
                                                <td class="fontBody">6380</td>
                                                <td class="fontBody">7348</td>
                                                <td class="fontBody">8660</td>

                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Rear Overhang (mm)</td>
                                                <td class="fontBody">1433</td>
                                                <td class="fontBody">1689</td>
                                                <td class="fontBody">1689</td>
                                                <td class="fontBody">1668</td>
                                                <td class="fontBody">2001</td>
                                                <td class="fontBody">2364</td>
                                                <td class="fontBody">2856</td>

                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">Front Overhang(mm)</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>
                                                <td class="fontBody">1044</td>

                                            </tr>
                                            <tr>

                                                <td class="fontBody" width="248">Wheels &amp;    Tyres</td>

                                                <td class="fontBody">7.50 x 16 - 16PR</td>
                                                <td class="fontBody">7.50 x 16 - 16PR</td>
                                                <td class="fontBody">7.50 x 16 - 16PR</td>
                                                <td class="fontBody">8.25 x 16 - 16PR</td>
                                                <td class="fontBody">7.50 x 16 - 16PR/8.25 x 16 - 16PR</td>
                                                <td class="fontBody">7.50 x 16 - 16PR/8.25 x 16 - 16PR</td>
                                                <td class="fontBody">7.50 x 16 - 16PR/8.25 x 16 - 16PR</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" width="248">No. of Tyres</td>

                                                <td class="fontBody">6 + 1</td>
                                                <td class="fontBody">4 + 1</td>
                                                <td class="fontBody">6 + 1</td>
                                                <td class="fontBody">4 + 1</td>
                                                <td class="fontBody">6 + 1</td>
                                                <td class="fontBody">6 + 1</td>
                                                <td class="fontBody">6 + 1</td>
                                            </tr>

                                            <tr>
                                                <td class="fontBody" width="248">Min. Turning    Circle Diameter in m</td>
                                                <td class="fontBody">5.5</td>
                                                <td class="fontBody">5.5</td>
                                                <td class="fontBody">5.5</td>
                                                <td class="fontBody">6.4</td>
                                                <td class="fontBody">6.4</td>
                                                <td class="fontBody">7.6</td>
                                                <td class="fontBody">9.4</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody " width="248">Max. Permissible GVW (Kg)</td>
                                                <td class="fontBody">6200</td>
                                                <td class="fontBody">5740</td>
                                                <td class="fontBody">6200</td>
                                                <td class="fontBody">5990</td>
                                                <td class="fontBody">6440</td>
                                                <td class="fontBody">6440</td>
                                                <td class="fontBody">8000</td>
                                            </tr>

                                            </tbody>
                                        </table>

                                    </div>
                            
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 right-content padding-right-none">
                    <div class="side-content">
                        <div class="padding-vertical-15 margin-bottom-40">
                         <img class="img-responsive" src="My_images/Resize_Buses/Bus-1.png"" alt="">
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
                            have recently been added
                            to our inventory.</p>
                    </div>
                    <div class="col-md-10 col-sm-8 padding-right-none sm-padding-left-none xs-padding-left-none">
                        <div class="carasouel-slider3">
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Ambulance"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_Buses/Ambulance-new.jpg" alt="" class="img-responsive"> </div>
                                   
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="S7_School"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_Buses/S7-1.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="S7_Staff"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_Buses/Staff_bus-1.jpg" alt="" class="img-responsive"> </div>
                                  
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
</body>
</asp:Content>

