// 路径配置
require.config({
    paths: {
        echarts: '../../../../skins/js/echarts-2.1.8/build/dist'
    }
});
// 使用
require(
    [
        'echarts',
        'echarts/theme/blue',
        'echarts/chart/bar',
        'echarts/chart/pie',
        'echarts/chart/line'
    ],
function (ec) {
/*pie1*/
    var chartPie1 = ec.init(document.getElementById('u_chart1_r'));
    var labelTop = {
        normal : {
            label : {
                show : true,
                position : 'center',
                formatter : '{b}',
                textStyle: {
                    baseline : 'middle'
                }
            },
            labelLine : {
                show : false
            }
        }
    };
    var labelFromatter = {
        normal : {
            label : {
                formatter : function (a,b,c){return 100 - c + '%'},
                textStyle: {
                    baseline : 'top'
                }
            }
        }
    }
    var labelBottom = {
        normal : {
            color: '#e1e1e1',
            label : {
                show : true,
                position : 'center'
            },
            labelLine : {
                show : false
            }
        },
        emphasis: {
            color: 'rgba(0,0,0,0)'
        }
    };
    var radius = [19, 25];
    optionPie1 = {
        color:['#11b9ee','#00d428','#ff6110'],
        legend: {
            orient:'vertical',
            x : '70px',
            y : '10px',
            data:[
                '','',''
            ]
        },
        title : {
            text: '',
            subtext: '',
            x: 'center'
        },
        toolbox: {
            show : false,
            feature : {
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            width: '20%',
                            height: '30%',
                            itemStyle : {
                                normal : {
                                    label : {
                                        formatter : function (a,b,c){return 'other\n' + c + '%\n'},
                                        textStyle: {
                                            baseline : 'middle'
                                        }
                                    }
                                }
                            }
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        series : [
            {
                type : 'pie',
                center : ['30px', '30px'],
                clockWise:false,
                radius : radius,
                x: '200%', // for funnel
                itemStyle : labelFromatter,
                data : [
                    {name:'其它数据', value:70, itemStyle : labelBottom},
                    {name:' ', value:30,itemStyle : labelTop}
                ]
            },
            {
                type : 'pie',
                clockWise:false,
                center : ['30px', '90px'],
                radius : radius,
                x:'20%', // for funnel
                itemStyle : labelFromatter,
                data : [
                    {name:'其它数据', value:40, itemStyle : labelBottom},
                    {name:'.', value:60,itemStyle : labelTop}
                ]
            },
            {
                type : 'pie',
                clockWise:false,
                center : ['30px', '150px'],
                radius : radius,
                x:'40%', // for funnel
                itemStyle : labelFromatter,
                data : [
                    {name:'其它数据', value:90, itemStyle : labelBottom},
                    {name:'..', value:10,itemStyle : labelTop}
                ]
            }
        ]
    };
    chartPie1.setOption(optionPie1);
/*pie2*/
    var chartPie2 = ec.init(document.getElementById('u_chart2_top'),"blue");
    optionPie2 = {
        color:['#00d428','#ff6110','#11b9ee'],
        title : {
            text: '',
            subtext: '',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient : 'vertical',
            x : 'left',
            data:['外部数据','内部数据','互联网数据']
        },
        toolbox: {
            show : false,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'数据来源',
                type:'pie',
                radius : '65%',
                center: ['50%', '50%'],
                data:[
                    {value:335, name:'外部数据'},
                    {value:310, name:'内部数据'},
                    {value:234, name:'互联网数据'}
                ]
            }
        ]
    };
    chartPie2.setOption(optionPie2);
/*line1*/
    var chartLine1 = ec.init(document.getElementById('u_chart1_bot'),"blue");
    optionLine1 = {
        title : {
            text: '数据容量趋势图',
            x:'center'
        },
        grid:{
            x:'30px',
            y:'40px',
            width:'213px',
            height:'150px'
        },
        tooltip : {
            trigger: 'axis'
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['一月','二月','三月','四月','五月','六月','七月',
                    '八月','九月','十月','十一月','十二月']
            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel : {
                    formatter: '{value}'
                }
            }
        ],
        series : [
            {
                name:'数据容量',
                type:'line',
                data:[110, 110, 150, 130, 120, 130, 100,70,40,100,200,210],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            }
        ]
    };
    chartLine1.setOption(optionLine1);
/*line2*/
    var chartLine2 = ec.init(document.getElementById('u_chart2_bot'),"blue");
    optionLine2 = {
        title : {
            text: '数据量趋势图',
            x:'center'
        },
        grid:{
            x:'30px',
            y:'40px',
            width:'213px',
            height:'150px'
        },
        tooltip : {
            trigger: 'axis'
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['一月','二月','三月','四月','五月','六月','七月',
                    '八月','九月','十月','十一月','十二月']
            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel : {
                    formatter: '{value}'
                }
            }
        ],
        series : [
            {
                name:'数据量',
                type:'line',
                data:[110, 110, 150, 130, 120, 130, 100,70,40,100,200,210],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            }
        ]
    };
    chartLine2.setOption(optionLine2);
/*line3*/
    var chartLine3 = ec.init(document.getElementById('u_chart3_bot'),"blue");
    optionLine3 = {
        title : {
            text: '资源种类趋势图',
            x:'center'
        },
        grid:{
            x:'30px',
            y:'40px',
            width:'245px',
            height:'150px'
        },
        tooltip : {
            trigger: 'axis'
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['一月','二月','三月','四月','五月','六月','七月',
                    '八月','九月','十月','十一月','十二月']
            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel : {
                    formatter: '{value}'
                }
            }
        ],
        series : [
            {
                name:'资源种类',
                type:'line',
                data:[110, 110, 150, 130, 120, 130, 100,70,40,100,200,210],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                }
            }
        ]
    };
    chartLine3.setOption(optionLine3);
/*bar1*/

    var chartBar1 = ec.init(document.getElementById('u_chart3_top'),"blue");
    optionBar1 = {
        color:['#11b9ee','#00d428','#ff6110'],
        title : {
            text: '',
            subtext: ''
        },
        grid:{
            x:'30px',
            y:'10px',
            width:'223px',
            height:'160px'
        },
        tooltip : {
            trigger: 'axis'
        },

        toolbox: {
            show : false,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['外部数据','内部数据','互联网数据']
            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel : {
                    formatter: '{value}'
                }
            }
        ],
        series : [
            {
                name:'资源种类',
                type:'bar',
                data:[11, 11, 15],
                markLine : {
                    data : [
                        {type : 'average', name: '平均值'}
                    ]
                },
                barWidth:'30',
                barGap:'10',
                barCategoryGap:'0'
            }
        ]
    };
    chartBar1.setOption(optionBar1);




}
);






