<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="S7_School.aspx.cs" Inherits="S7_School" %>

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
                        <h2>S7 School Bus </h2>
                        <span class="margin-top-10">Designed for New Generation with New Ideas</span> </div>
                    
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
                                                                <asp:LinkButton ID="btn_cancel" runat="server" class="btn btn-danger" data-dismiss="modal"> Cancel</asp:LinkButton>
                                                              
                                                                <asp:LinkButton ID="btn_send" runat="server" class="btn btn-primary" OnClick="btn_send_Click"><i class="fa fa-send"></i> Send</asp:LinkButton>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
            <div class="content-nav margin-bottom-30">
                <div class="row">
                     <div class="col-md-9">
                    <ul>
                        <li class="prev1 gradient_button"><a href="Prestigious">Prev Vehicle</a></li>
                        <%--<li class="schedule gradient_button"><a href="forms/schedule.php?recaptcha" class="fancybox_div">Schedule Test Drive</a></li>--%>
                        <li class="pdf gradient_button"><a href="PDF_Broucher/S7_Staff_School.pdf" target="_blank" class="">PDF Brochure</a></li>
                        <li id="email" class="email gradient_button"><a id="A1" href=""  runat="server" onclick="function();" >Email to a Friend</a></li>
                        <li class="next1 gradient_button"><a href="S7_Staff">Next Vehicle</a></li>
                    </ul>
                         </div>
                    <div class="col-md-3">
                    <h4>S7 School Bus </h4></div>
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
                                    <li><i class="fa-li fa fa-check"></i>Emergency Door.</li>
                                    <li><i class="fa-li fa fa-check"></i> Peep Window for Driver.</li>
                                    <li><i class="fa-li fa fa-check"></i> Low Step Entry.</li>
                                    <li><i class="fa-li fa fa-check"></i> School Bus Logo.</li>
                                    <li><i class="fa-li fa fa-check"></i> Bag storage space.</li>
                                    <li><i class="fa-li fa fa-check"></i> Grab handle and hooks for bottles.</li>
                                    <li><i class="fa-li fa fa-check"></i> Anti-skid flooring.</li>
                                    <li><i class="fa-li fa fa-check"></i> Armrest.</li>
                                    <li><i class="fa-li fa fa-check"></i> Notice Board.</li>
                                    <li><i class="fa-li fa fa-check"></i>Window Rails.</li>
                                    <li><i class="fa-li fa fa-check"></i> STOP Signal.</li>
                                
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
                                                    <td width="191" class="fontBody"><strong>S7 Bus BS -    III</strong></td>
                                                    <td width="189" class="fontBody"><strong>S7 Bus BS -    IV</strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Engine &amp;    Displacement</td>
                                                    <td class="fontBody">SLT3 &amp; Numeral,    3455 cc</td>
                                                    <td class="fontBody">SLT4 &amp; Numeral,    3455 cc</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Type</td>
                                                    <td class="fontBody">In Line four Cylinder Direct Injection</td>
                                                    <td class="fontBody"> In Line four Cylinder Common Rail Direct Injection</td>
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
                                                    <td colspan="2" class="fontBody">Single plate Diaphragm Type, Dia. 260 mm</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Gear Box</td>
                                                    <td colspan="2" class="fontBody">Synchromesh Manual 5-Forward and 1-Reverse</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Steering</td>
                                                    <td colspan="2" class="fontBody"> Power Steering  </td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Brakes</td>
                                                    <td colspan="2" class="fontBody">Air Breaks</td>
                                                </tr>
                                                <tr>
                                                    <td class="fontBody">Suspension</td>
                                                    <td colspan="2" class="fontBody">Semi Elliptical Type Multi Leaf Spring</td>
                                                </tr>
                                            <tr>
                                                <td class="fontBody" >Varients</td>
                                                <td class="fontBody" colspan="2"><strong>S7 Bus</strong></td>
                                            </tr>
                                            
                                                 <tr>
                                                <td class="fontBody" >School Bus (3 x 2)  </td>
                                                <td class="fontBody"  colspan="2">41</td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="fontBody" >Fuel Tank Capacity Lts   </td>
                                                <td class="fontBody"  colspan="2" >90</td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="fontBody"  colspan="3"  ><strong>DIMENSIONS</strong></td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" >Wheelbase (mm)</td>
                                                <td class="fontBody"  colspan="2">5100</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" >Overall Length (mm)</td>
                                                <td class="fontBody"  colspan="2">9820</td>
                                            </tr>
                                                 <tr>
                                                <td class="fontBody" >Overall Width (mm)</td>
                                                <td class="fontBody"  colspan="2">2262</td>
                                            </tr>
                                                  <tr>
                                                <td class="fontBody" >Overall Height (mm)</td>
                                                <td class="fontBody"  colspan="2">2960</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" >Rear Overhang (mm)</td>
                                                <td class="fontBody"  colspan="2">3000</td>

                                            </tr>
                                            <tr>
                                                <td class="fontBody">Front Overhang (mm)</td>
                                                <td class="fontBody"  colspan="2">1180</td>
                                            </tr>
                                            <tr>

                                                <td class="fontBody">Wheels &amp;Tyres</td>
                                                <td class="fontBody"  colspan="2">8.25 x 16 - 16PR</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody" >No. of Tyres</td>
                                                <td class="fontBody"  colspan="2">6 + 1</td>
                                            </tr>
                                            <tr>
                                                <td class="fontBody " >Max. Permissible GVW (Kg)</td>
                                                <td class="fontBody"  colspan="2">8800</td>
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
                         <img class="img-responsive" src="My_images/Resize_Buses/S7-1.JPG" alt="">
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
                                    <div class="img-flex"> <a href="Ambulance"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_Buses/Ambulance-new.jpg" alt="" class="img-responsive"> </div>
                                   
                                </div>
                            </div>
                            <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="Prestigious"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="My_images/Similar_Buses/Bus-2.png" alt="" class="img-responsive"> </div>
                                  
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

<div class="clearfix"></div>
    <script type="text/javascript">
        $(function show() {

            $("#email").click(function () {
                //jQuery.noConflict();
                $("#myModal").modal('show');

            });
        });
</script>


    </asp:Content>