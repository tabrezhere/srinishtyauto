<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Super12.aspx.cs" Inherits="Super12_9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager><div class="clearfix"></div>
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
                        <h2>Super12.9XM</h2>
                        <span class="margin-top-10">Loading ka Baadshah</span> </div>
                    
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
                        <li class="prev1 gradient_button"><a href="Sartaj">Prev Vehicle</a></li>
                        <%--<li class="schedule gradient_button"><a href="forms/schedule.php?recaptcha" class="fancybox_div">Schedule Test Drive</a></li>--%>
                        <li class="pdf gradient_button"><a href="PDF_Broucher/Super_12.9_XM.pdf" target="_blank" class="">PDF Brochure</a></li>
                         <li id="email" class="email gradient_button"><a id="A1" href=""  runat="server" onclick="function();" >Email to a Friend</a></li>
                        <li class="next1 gradient_button"><a href="Sartaj5252">Next Vehicle</a></li>
                    </ul>
                        </div>
                    <div class="col-md-3">
                    <h4>Super 12.9XM </h4></div>
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
                                    <li><i class="fa-li fa fa-check"></i>8.5 Ton payload truck(FSD)</li>
                                     <li><i class="fa-li fa fa-check"></i>Highest mileage in its category</li>
                                    <li><i class="fa-li fa fa-check"></i> Heavy Duty tyres 8.25 x 20</li>
                                    <li><i class="fa-li fa fa-check"></i> Heavy Duty front & rear axles</li>
                                    <li><i class="fa-li fa fa-check"></i> Full airbrake S-cam roller follower type</li>
                                    <li><i class="fa-li fa fa-check"></i> 310mm bigger clutch diameter</li>
                                    <li><i class="fa-li fa fa-check"></i> Low maintence cost & Driving comfort </li>
                                       <li><i class="fa-li fa fa-check"></i> BS-III Engine without electronic pump</li>
                                    <li><i class="fa-li fa fa-check"></i> Power Steering</li>
                                    <li><i class="fa-li fa fa-check"></i> Strong straight ladder type chassis</li>
                                    <li><i class="fa-li fa fa-check"></i> Air Ventilators for the Driver Comfort</li>
                                
                                </ul>
                           </div>
                                    

                            <div class="tab-pane fade" id="technical">
                              <table width="636" border="1" cellpadding="0" cellspacing="0" class="table table-responsive">
                <colgroup><col width="242">
                <col width="118" span="2">
                <col width="157">
                </colgroup><tbody><tr>
                  <td width="239" class="fontBody"><strong>MODEL</strong></td>
                  <td colspan="2" class="fontBody"><strong>Super 12.9 XM BS-III</strong></td>
                </tr>
                <tr>
                  <td class="fontBody">Engine &amp;    Displacement</td>
                  <td colspan="2" class="fontBody">SLT3 &amp; Numeral, 3455 cc</td>
                </tr>
                <tr>
                  <td class="fontBody">Type</td>
                  <td colspan="2" class="fontBody">In Line four Cylinder Direct Injection</td>
                </tr>
                <tr>
                  <td class="fontBody">&nbsp;</td>
                  <td colspan="2" class="fontBody">Diesel Turbo Charger with Intercooler</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Engine    Output</td>
                  <td colspan="2" class="fontBody">75 Kw @ 3000 rpm</td>
                </tr>
                <tr>
                  <td class="fontBody">Max. Torque</td>
                  <td colspan="2" class="fontBody">315Nm@ 1750-2000 rpm</td>
                </tr>
                <tr>
                  <td class="fontBody">Clutch</td>
                  <td colspan="2" class="fontBody">Single plate Diaphragm Type, Dia. 310 mm</td>
                </tr>
                <tr>
                  <td class="fontBody">Gear Box</td>
                  <td colspan="2" class="fontBody">Synchromesh Manual 5-Forward and 1-Reverse</td>
                </tr>
                <tr>
                  <td class="fontBody">Steering</td>
                  <td colspan="2" class="fontBody"> Power Steering</td>
                </tr>
                <tr>
                  <td class="fontBody">Brakes</td>
                  <td colspan="2" class="fontBody">Air Brake&nbsp;</td>
                </tr>
                <tr>
                  <td class="fontBody">Suspension</td>
                  <td colspan="2" class="fontBody">Semi Elliptical Type Multi Leaf Spring</td>
                </tr>
                <tr>
                  <td class="fontBody">Wheels &amp;    Tyres</td>
                  <td colspan="2" class="fontBody">8.25" x 20" - 16PR</td>
                </tr>
                <tr>
                  <td class="fontBody">No. of Tyres</td>
                  <td colspan="2" class="fontBody">6 + 1</td>
                </tr>
                <tr>
                  <td class="fontBody">Wheelbase (mm)</td>
                  <td  class="fontBody">3940</td>
                  <td  class="fontBody">4300</td>
                </tr>
                <tr>
                  <td class="fontBody">Min. Turning Circle Diameter in m</td>
                 
                  <td  class="fontBody">7.6</td>
                   <td class="fontBody">7.9</td>
                </tr>
                    <tr>
                  <td class="fontBody">Kerb Weight</td>
                  <td class="fontBody">4300</td>
                  <td  class="fontBody">4475</td>
                </tr>
                <tr>
                  <td class="fontBody">Front Axle Weight</td>
                  <td colspan="2" class="fontBody"> 4550</td>
                </tr>
                <tr>
                  <td class="fontBody">Rear Axle Weight</td>
                  <td colspan="2"  class="fontBody">8440</td>
                 
                </tr>
                
                <tr>
                  <td class="fontBody">Max.Permissible GVW (Kg)</td>
                  <td colspan="2" class="fontBody">12990</td>
                </tr>
                <tr>
                  <td class="fontBody">Cargo Box Dimensions (LxBxH) in mm</td>
                  <td colspan="2" class="fontBody">&nbsp;</td>
                 
                </tr>
                <tr>
                  <td class="fontBody">Variants</td>
                  <td colspan="2" class="fontBody">&nbsp;</td>
                  
                </tr>
                     <tr>
                  <td class="fontBody">Cab Halfdeck Loadbody</td>
                  <td Width="450" class="fontBody">5240(17')x 2280(7'.5") x 570(1'.9")</td>
                    <td width="450" class="fontBody">5800(19')x 2280(7'.5") x 570(1'.9")</td>
                </tr>
                <tr>
                  <td class="fontBody">Cab Highdeck Loadbody</td>
                  <td class="fontBody">5240(17')x 2280(7'.5") x 1695(5'.6")</td>
                    <td class="fontBody">5800(19')x 2280(7'.5") x 1695(5'.6")</td>
                </tr>
                   <tr>
                       <td  class="fontBody"> Cabin Chassis</td>
                       <td colspan="2" class="fontBody">Available</td>
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
                          <img class="img-responsive" src="My_images/Trucks/super-12xm-3.jpg" alt="">
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
                                    <div class="img-flex"> <a href="Supreme"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/supreme xm.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Sartaj"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/sartaj-3.jpg" alt="" class="img-responsive"> </div>
                                  
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Samrat"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_trucks/super_6.jpg" alt="" class="img-responsive"> </div>
                                   
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