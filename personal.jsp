<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%
 String ctxPath = request.getContextPath();
 String name = request.getParameter("name");
%>
<jsp:include page="common/header.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<c:set var="ctxPath" value="<%=ctxPath%>"></c:set>
<jsp:include page="common/navigation.jsp" >
    <jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>
<script src="<%=ctxPath%>/js/echarts.js"></script>
<style>
.checked {
    color: orange;
}
</style>

<div id="radar" style="margin-left: 12px; margin-top: 4px; width:800px;height:480px;"></div>

<script type="text/javascript">

var name = '<%=name%>';

var radarChart = echarts.init(document.getElementById('radar'));
// Radar properties
var radarTitle = "Evaluation Radar";
var refLineName = "Reference Value";
var actLineName = "Customer Value";

var indicators = [
	           { name: 'Identity Feature', max: 100},
	           { name: 'Credit History', max: 100},
	           { name: 'Critical Financial Problems', max: 100},
	           { name: 'Human Relations', max: 100},
	           { name: 'Debt Burden', max: 100},
	           { name: 'New Application Info.', max: 100},
	           { name: 'Compliance Ability', max: 100}
	        ];

var standardVal = [90, 90, 10, 90, 90, 90, 90];

var radarData ;
if("Luke Chen" == name)
{
	radarData = [
		            {
		                value : standardVal,
		                name : refLineName
		            },
		             {
		                value : [50, 14, 28, 31, 42, 60, 90],
		                name : actLineName
		            }
		        ]
}
else if("Sam Ma" == name)
{
	radarData = [
		            {
		            	value : standardVal,
		                name : refLineName
		            },
		             {
		                value : [87, 33, 76, 98, 45, 60, 90],
		                name : actLineName
		            }
		        ]
}
else
{
	radarData = [
		            {
		            	value : standardVal,
		                name : refLineName
		            },
		             {
		            	value : [56, 90, 87, 100, 90, 60, 90],
		                name : actLineName
		            }
		        ]
}

var option = {
	    title: {
	        text: radarTitle + ' - ' + name,
	        left : 'center',
	        bottom : '5'
	    },
	    tooltip : {},
	    legend: {
	    	selectedMode : false,
	    	orient : 'vertical',
	    	align : 'right',
	    	textStyle:{
	    		fontWeight : 'bold',
	    		fontSize : 14,
	    		color: 'BLACK'
	    	},
	        data: [refLineName, actLineName],
	        right : '2px',
	        bottom : '10'
	    },
	    radar: {
	        name: {
	            textStyle: {
	                color: 'BLACK',
		    		//fontWeight : 'bold',
		    		fontSize : 14,
	                borderRadius: 3,
	                padding: [3, 5]
	           }
	        },
	        indicator: indicators
	    },
	    series: [{
	        type: 'radar',
	        data : radarData,
	        animationDelay: function (idx) {
	            return idx * 618;
	        }
	    }],
	    toolbox: {
	        show: true,
	        feature: {
	            /* dataZoom: {
	                yAxisIndex: 'none'
	            }, */
	            /* dataView: {
	            	readOnly : false,
	            	optionToContent: function(opt) {
	            		var indicators = opt.radar[0].indicator;
	            		var seriesData = opt.series[0].data;
	            	    var table = '<table style="width:100%;text-align:center"><tbody><tr>'
	            	                 + '<td>Threshold</td>'
	            	                 + '<td>' + indicators[0].name + '</td>'
	            	                 + '<td>' + indicators[1].name + '</td>'
	            	                 + '<td>' + indicators[2].name + '</td>'
	            	                 + '<td>' + indicators[3].name + '</td>'
	            	                 + '<td>' + indicators[4].name + '</td>'
	            	                 + '<td>' + indicators[5].name + '</td>'
	            	                 + '<td>' + indicators[6].name + '</td>'
	            	                 + '</tr>';
	            	                 
	            	    for (var i = 0, l = seriesData.length; i < l; i++) {
	            	        table += '<tr>'
	            	                 + '<td>' + seriesData[i].name + '</td>'
	            	                 + '<td>' + seriesData[i].value[0] + '</td>'
	            	                 + '<td>' + seriesData[i].value[1] + '</td>'
	            	                 + '<td>' + seriesData[i].value[2] + '</td>'
	            	                 + '<td>' + seriesData[i].value[3] + '</td>'
	            	                 + '<td>' + seriesData[i].value[4] + '</td>'
	            	                 + '<td>' + seriesData[i].value[5] + '</td>'
	            	                 + '<td>' + seriesData[i].value[6] + '</td>'
	            	                 + '</tr>';
	            	    }
	            	    table += '</tbody></table>';
	            	    return table;
	            	}
	            }, */
	            //magicType: {type: ['radar', 'line', 'bar']},
	            //restore: {},
	            saveAsImage: {}
	        }
	    },
	    animationEasing: 'backInOut'
	};

radarChart.setOption(option);

</script>

<jsp:include page="common/footer.jsp" >
	<jsp:param name="ctxPath" value="${ctxPath}" />
</jsp:include>