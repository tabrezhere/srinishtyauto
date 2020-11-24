<%@ Page Title="Sri Nisty Automotives" Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_404" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
    </head>
    <body>
        <section id="secondary-banner" class="dynamic-image-12">
    <!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                
            </div>
            
        </div>
    </div>

</section>
<!--secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
        <section class="content">
    <div class="container">
        <div class="inner-page services">
            <div class="row">
                <div class="consider padding-bottom-40 clearfix">
                    <div class="col-lg-12 col-md-8 col-sm-8 col-xs-12 padding-left-none xs-padding-bottom-40">
                        
                        <div  align="center">
                                           <img src="images/page-not-found.jpg" /> <br /><br /><br/><br />
                            <h3>Sorry, Nothing Found<br /></h3>
For Some Reason The Page You Requested Could Not Be Found On Our Server<br /><br/><br />

                        </div>
                    </div>
                    
                </div>
            </div>
            


       
        </div>
    </div>
    <!--container ends-->
</section>
            

        </body>
    </html>
    <script type="text/javascript">
        $(document).bind("contextmenu", function (e) {
            e.preventDefault();
        });
        $(document).keydown(function (e) {
            if (e.which === 123) {
                return false;
            }
            else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) {
                return false;  //Prevent from ctrl+shift+i
            }
        });
</script>

      </asp:Content>
