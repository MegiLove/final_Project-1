<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../resources/css/common.css" type="text/css">
<link rel="stylesheet" href="../resources/css/category_sale.css" type="text/css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
</script>
</head>
<body>
<div><jsp:include page="../common/header.jsp"></jsp:include></div>
	<div class="cate">
      <h1>ī�װ��� �Ǹŷ�</h1>
      <select id="category_code">
        <option value="sp">��, �</option>
        <option value="d">����</option>
        <option value="s">������</option>
        <option value="n">���</option>
        <option value="r">��,��</option>
        <option value="b">����Ŀ��</option>
        <option value="v">���</option>
      </select>
      <input type="submit" value="Ȯ��" onclick='Show_Category();'><br>
    
    <script>
    	function Show_Category(category_code) {
    	var category_code =$("#category_code option:selected").attr('value');
    		$.ajax({
    			url: "category_sale",
    			data: "category_code=" + category_code,
    			dataType: "JSON",
    			cache: false,
    			async: true,
    			type: "POST",
    			success: function(obj) {
    				Show_CategoryCallback(obj);
    			},
    			error: function(xhr, status, error) { }

    		});
    	}
    
    function Show_CategoryCallback(obj) {
    	
    	var count = obj.length;
    	console.log(obj);
    	var arr = [
            ['��ǰ�̸�', '�Ǹŷ�',{ role: "style" },{ role: 'annotation' }],
            ];
    	if (obj != null) {
    		console.log("callback success");
    		document.getElementById("cate_list").innerHTML="";
    		for (var index = 0; index < count; index++) {
    			arr.push([obj[index].product_name,obj[index].cnt,"#F2884B",obj[index].cnt]);
    		}
    	}
    	
    	var options = {
    	        title: 'ī�װ��� �Ǹŷ�',
    	        chartArea: {width: '50%', height:'100%'},
    	        hAxis: {
    	          title: '�Ǹŷ�',
    	          minValue: 0
    	        },
    	        legend: { position: "none" },
    	        vAxis: {
    	          title: '��ǰ�̸�'
    	        }
    	      };
    	console.log(arr);
    	var data = google.visualization.arrayToDataTable(arr);
    	var chart = new google.visualization.BarChart(document.getElementById('cate_list'));
        chart.draw(data, options);
    }
    
    
    </script>  
    
    <div id="cate_list"></div> 
    </div>     
    <div><jsp:include page="../common/footer.jsp"></jsp:include></div>
</body>
</html>