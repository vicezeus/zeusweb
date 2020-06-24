<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta charset="utf-8">
 <link rel="stylesheet" href="/css/main.css">
 <title>Jsp page sample</title>
 <script src="js/react.js"></script>
 <script src="js/react-dom.js"></script>
 </head>
 <body>
     <h1>[테스트 수정] jsp test / CSS / modelview ${projectVer}</h1>
     <button type="button" id="btn-save">자바스크립트 테스트</button>

     <div id="content"></div>

     <script type="text/javascript">
           var h1 = React.createElement('h1', null, 'React Test')
           ReactDOM.render(
             h1,
             document.getElementById('content')
           )
      </script>

     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
     <script src="/js/index.js"></script>
 </body>
 </html> 