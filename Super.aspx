<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Super.aspx.cs" Inherits="Super" %>

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
                        <h2>Super XM </h2>
                        <span class="margin-top-10">Strength and Power. Together.</span> </div>
                    
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
                        <li class="prev1 gradient_button"><a href="Samrat">Prev Vehicle</a></li>
                        <%--<li class="schedule gradient_button"><a href="forms/schedule.php?recaptcha" class="fancybox_div">Schedule Test Drive</a></li>--%>
                        <li class="pdf gradient_button"><a href="PDF_Broucher/Super.pdf" target="_blank" class="">PDF Brochure</a></li>
                       <li id="email" class="email gradient_button"><a id="A1" href=""  runat="server" onclick="function();" >Email to a Friend</a></li>
                        <li class="next1 gradient_button"><a href="Sartaj59xm">Next Vehicle</a></li>
                    </ul>
                        </div>
                    <div class="col-md-3">
                    <h4>Super XM </h4></div>
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
                                
                                </ul>
                           </div>
                                    

                            <div class="tab-pane fade" id="technical">
                              <table class="table table-responsive" width="636" border="1" cellpadding="0" cellspacing="0">
                <colgroup><col width="242">
                <col width="118" span="4">
                </colgroup><tbody><tr>
                  <td width="199" class="fontBody"><strong>MODEL</strong></td>
                  <td colspan="2" class="fontBody"><strong>SUPER    BS - III</strong></td>
                  <td colspan="2" class="fontBody"><strong>SUPER    BS - IV</strong></td>
                </tr>
                <tr>
                  <td class="fontBody">Engine &amp;    Displacement</td>
                  <td colspan="2" class="fontBody">SLT3 &amp; Numeral, 3455 cc</td>
                  <td colspan="2" class="fontBody">SLT4 &amp; Numeral, 3455 cc</td>
                </tr>
                <tr>
                  <td class="fontBody">Type</td>
                  <td colspan="2" class="fontBody">4 - Cylinder in line - OHV</td>
                  <td colspan="2" class="fontBody">Common Rail Cool EGR</td>
                </tr>
                <tr>
                  <td class="fontBody">&nbsp;</td>
                  <td colspan="4" class="fontBody">Diesel Turbo Charger with Intercooler</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Engine    Output</td>
                  <td colspan="2" class="fontBody">75 Kw @ 3000 rpm</td>
                  <td colspan="2" class="fontBody">75 Kw @ 2800 rpm</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Torque</td>
                  <td colspan="2" class="fontBody">270Nm@ 1750-2000 rpm</td>
                  <td colspan="2" class="fontBody">296Nm@ 1500 rpm</td>
                </tr>
                <tr>
                  <td class="fontBody">Clutch</td>
                  <td colspan="4" class="fontBody">Single plate Diaphragm    Type, Dia. 260 mm</td>
                </tr>
                <tr>
                  <td class="fontBody">Gear Box</td>
                  <td colspan="4" class="fontBody">Synchromesh Manual    5-Forward and 1-Reverse</td>
                </tr>
                <tr>
                  <td class="fontBody">Steering</td>
                  <td colspan="4" class="fontBody">Mechanical / Power Steering    (Optional)</td>
                </tr>
                <tr>
                  <td class="fontBody">Brakes</td>
                  <td colspan="4" class="fontBody">Hydraulic Vaccume assisted    / Air Brake (Optional)</td>
                </tr>
                <tr>
                  <td class="fontBody">Suspension</td>
                  <td colspan="4" class="fontBody">Semi Elliptical Type Multi    Leaf Spring</td>
                </tr>
                <tr>
                  <td class="fontBody">Wheels &amp;    Tyres</td>
                  <td colspan="4" class="fontBody">7.50" x 16" -    14PR / 16 PR</td>
                </tr>
                <tr>
                  <td class="fontBody">No. of Tyres</td>
                  <td colspan="4" class="fontBody">6 + 1</td>
                </tr>
                <tr>
                  <td class="fontBody">Wheelbase (mm)</td>
                  <td width="121" class="fontBody">2815</td>
                  <td width="118" class="fontBody">3335</td>
                  <td width="134" class="fontBody">3940</td>
                  <td width="52" class="fontBody">4760</td>
                </tr>
                <tr>
                  <td class="fontBody">Min. Turning    Circle Diameter in m</td>
                  <td class="fontBody">5.5</td>
                  <td class="fontBody">6.4</td>
                  <td class="fontBody">7.6</td>
                  <td class="fontBody">9.4</td>
                </tr>
                <tr>
                  <td class="fontBody">Front Axle    Weight</td>
                  <td class="fontBody">3160</td>
                  <td class="fontBody">3160</td>
                  <td class="fontBody">3160</td>
                  <td class="fontBody">3160</td>
                </tr>
                <tr>
                  <td class="fontBody">Rear Axle    Weight</td>
                  <td class="fontBody">5560</td>
                  <td class="fontBody">5560</td>
                  <td class="fontBody">5560</td>
                  <td class="fontBody">5560</td>
                </tr>
                <tr>
                  <td class="fontBody">Kerb Weight</td>
                  <td class="fontBody">3280</td>
                  <td class="fontBody">3070</td>
                  <td class="fontBody">3200</td>
                  <td class="fontBody">3000</td>
                </tr>
                <tr>
                  <td class="fontBody">Max.    Permissible GVW (Kg)</td>
                  <td colspan="4" class="fontBody">8720</td>
                </tr>
                <tr>
                  <td class="fontBody">Cargo Box    Dimensions (LxBxH) in mm</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                </tr>
                <tr>
                  <td class="fontBody">Variants</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                  <td class="fontBody">&nbsp;</td>
                </tr>
                <tr>
                  <td class="fontBody">Cab Halfdeck    Loadbody</td>
                  <td class="fontBody">3100 x 2080 x 2070</td>
                  <td class="fontBody">3740 x 2080 x 2070</td>
                  <td class="fontBody">5240 x 2080 x 2070</td>
                  <td class="fontBody">6610 x 2080 x 2070</td>
                </tr>
                <tr>
                  <td class="fontBody">Cab Semideck    Loadbody</td>
                  <td class="fontBody">3100 x 2080 x 2092</td>
                  <td class="fontBody">3740 x 2080 x 2092</td>
                  <td class="fontBody">5240 x 2080 x 2092</td>
                  <td class="fontBody">Not Available</td>
                </tr>
                <tr>
                  <td class="fontBody">Cab Highdeck    Loadbody</td>
                  <td class="fontBody">3100 x 2080 x 2710</td>
                  <td class="fontBody">3740 x 2080 x 2710</td>
                  <td class="fontBody">5240 x 2080 x 2710</td>
                  <td class="fontBody">Not Available</td>
                </tr>
                <tr>
                  <td class="fontBody">Cabin Chassis</td>
                  <td colspan="4" class="fontBody">Available</td>
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
                            
                            <img class="img-responsive" src="My_images/Trucks/super_3.jpg" alt="">
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
                                    <div class="img-flex"> <a href="Samrat"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/samrat-xm-2.jpg" alt="" class="img-responsive"> </div>
                                   
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Sartaj59xm"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/sartaj-hg-1.png" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Sartaj"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/sartaj-3.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Sartaj5252"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/sartaj5252-2.jpg" alt="" class="img-responsive"> </div>
                                   
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