<%-- 
    Document   : postnewquery
    Created on : Jul 30, 2017, 1:04:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="css/postbox.css"><!---Search style -->
	<script src="js/postbox.js"></script>
    </head>
    <body>
<div class="container">
	<div class="row">
		<h3>Status Upload Snipp</h3>
	</div>
    
    <div class="row">
    
    <div class="col-md-6">
    						<div class="widget-area no-padding blank">
								<div class="status-upload">
									<form action="sendquery.jsp" method="post">
										<textarea placeholder="What are you doing right now?" name="textarea"></textarea>
										<ul>
											<li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="fa fa-music"></i></a></li>
											<li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera"></i></a></li>
											<li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Sound Record"><i class="fa fa-microphone"></i></a></li>
											<li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o"></i></a></li>
										</ul>
										<button type="submit" class="btn btn-success green"><i class="fa fa-share"></i>Post Query</button>
									</form>
								</div><!-- Status Upload  -->
							</div><!-- Widget Area -->
						</div>
        
    </div>
</div>
    </body>
</html>
