<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="jquery/jquery.lightbox-0.5.css" media="screen" />
<link type="text/css" href="jquery/menu.css" rel="stylesheet" />

<style type="text/css">

	/* jQuery lightBox plugin - Gallery style */
	#gallery {
		background-color: #444;
		padding: 10px;
		width: 520px;
	}
	#gallery ul { list-style: none; }
	#gallery ul li { display: inline; }
	#gallery ul img {
		border: 5px solid #3e3e3e;
		border-width: 5px 5px 20px;
	}
	#gallery ul a:hover img {
		border: 5px solid #fff;
		border-width: 5px 5px 20px;
		color: #fff;
	}
	#gallery ul a:hover { color: #fff; }
	
</style>
<script type="text/javascript" src="jquery/jquery.js"></script>
    <script type="text/javascript" src="jquery/menu.js"></script>
    <script type="text/javascript" src="jquery/jquery.lightbox-0.5.js"></script>
    <script>
     $(function() {
        $('#gallery a').lightBox();
    });
	</script>
</head>

<body>
<div id="menu">
  <ul class="menu">
    <li><a href="#" class="parent"><span>Home</span></a>
      <div>
        <ul>
          <li><a href="#" class="parent"><span>Sub Item 1</span></a>
            <div>
              <ul>
                <li><a href="#" class="parent"><span>Sub Item 1.1</span></a>
                  <div>
                    <ul>
                      <li><a href="#"><span>Sub Item 1.1.1</span></a></li>
                      <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                    </ul>
                  </div>
                </li>
                <li><a href="#"><span>Sub Item 1.2</span></a></li>
                <li><a href="#"><span>Sub Item 1.3</span></a></li>
                <li><a href="#"><span>Sub Item 1.4</span></a></li>
                <li><a href="#"><span>Sub Item 1.5</span></a></li>
                <li><a href="#"><span>Sub Item 1.6</span></a></li>
                <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                  <div>
                    <ul>
                      <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                      <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </li>
          <li><a href="#"><span>Sub Item 2</span></a></li>
          <li><a href="#"><span>Sub Item 3</span></a></li>
        </ul>
      </div>
    </li>
    <li><a href="#" class="parent"><span>Search</span></a>
      <div>
        <ul>
          <li><a href="#"><span>Sub Item 1</span></a>
            </li>
          <li><a href="#"><span>Sub Item 2</span></a></li>
          <li><a href="#"><span>Sub Item 3</span></a></li>
        </ul>
      </div>
    </li>
    <li><a href="#" class="parent"><span>Product Info</span></a>
      <div class="columns two">
        <ul class="one">
          <li><a href="#"><span>Sub Item 1.1</span></a></li>
          <li><a href="#"><span>Sub Item 1.2</span></a></li>
          <li><a href="#"><span>Sub Item 1.3</span></a></li>
          <li><a href="#"><span>Sub Item 1.4</span></a></li>
          <li><a href="#"><span>Sub Item 1.5</span></a></li>
          <li><a href="#"><span>Sub Item 1.6</span></a></li>
          <li><a href="#"><span>Sub Item 1.7</span></a></li>
        </ul>
        <ul class="two">
          <li><a href="#"><span>Sub Item 2.1</span></a></li>
          <li><a href="#"><span>Sub Item 2.2</span></a></li>
          <li><a href="#"><span>Sub Item 2.3</span></a></li>
          <li><a href="#"><span>Sub Item 2.4</span></a></li>
          <li><a href="#"><span>Sub Item 2.5</span></a></li>
          <li><a href="#"><span>Sub Item 2.6</span></a></li>
        </ul>
      </div>
    </li>
    <li><a href="#"><span>Help</span></a></li>
    <li><a href="#"><span>Contacts</span></a></li>
    <li class="last"><a href="#"><span>Feedback</span></a></li>
  </ul>
</div>
<div id="copyright"><a href="http://apycom.com/"></a></div>
<div id="gallery">
  <ul>
    <li> <a href="photos/image1.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery').lightBox();"> <img src="photos/thumb_image1.jpg" width="72" height="72" alt="" /> </a> </li>
    <li> <a href="photos/image2.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();"> <img src="photos/thumb_image2.jpg" width="72" height="72" alt="" /> </a> </li>
    <li> <a href="photos/image3.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();"> <img src="photos/thumb_image3.jpg" width="72" height="72" alt="" /> </a> </li>
    <li> <a href="photos/image4.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();"> <img src="photos/thumb_image4.jpg" width="72" height="72" alt="" /> </a> </li>
    <li> <a href="photos/image5.jpg" title="Utilize a flexibilidade dos seletores da jQuery e crie um grupo de imagens como desejar. $('#gallery a').lightBox();"> <img src="photos/thumb_image5.jpg" width="72" height="72" alt="" /> </a> </li>
  </ul>
</div>
</body>

</html>