/**
* Theme: Xeloro - TailwindCSS 4 Admin Layout & UI Kit Template
* Author: MyraStudio
* Module/App: dashboard js
*/


"use strict";


/* =======================
   Line / Area Chart
======================= */
var lineOptions = {
    chart: {
        height: 322,
        type: "area",
        toolbar: {
            show: false,
        },
        dropShadow: {
            enabled: true,
            top: 12,
            left: 0,
            bottom: 0,
            right: 0,
            blur: 2,
            color: "rgba(132, 145, 183, 0.3)",
            opacity: 0.35,
        },
    },
    colors: [
        "#fb7185", // rose-400 (Income)
        "#38bdf8", // sky-400 (Expenses)
    ],
    dataLabels: {
        enabled: false,
    },
    stroke: {
        show: true,
        curve: "smooth",
        width: [2, 2],
        dashArray: [0, 4],
        lineCap: "round",
    },
    series: [
        {
            name: "Income",
            data: [60, 40, 80, 50, 95, 65, 100, 70, 120, 85, 140, 90],
        },
        {
            name: "Expenses",
            data: [25, 50, 30, 55, 35, 70, 45, 85, 55, 95, 70, 105],
        },
    ],
    labels: [
        "Jan", "Feb", "Mar", "Apr", "May", "Jun",
        "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
    ],
    yaxis: {
        labels: {
            formatter: function (value) {
                return value + "k";
            },
            offsetX: -12,
        },
    },
    grid: {
        strokeDashArray: 3,
        xaxis: {
            lines: {
                show: true,
            },
        },
        yaxis: {
            lines: {
                show: false,
            },
        },
    },
    legend: {
        show: false,
    },
    fill: {
        type: "gradient",
        gradient: {
            type: "vertical",
            shadeIntensity: 1,
            inverseColors: false,
            opacityFrom: 0.05,
            opacityTo: 0.05,
            stops: [45, 100],
        },
    },
};

new ApexCharts(document.querySelector("#line-chart"), lineOptions).render();


/* =======================
   Radial Bar Chart
======================= */
var radialOptions = {
    chart: {
        type: "radialBar",
        height: 293,
        dropShadow: {
            enabled: true,
            top: 5,
            left: 0,
            bottom: 0,
            right: 0,
            blur: 5,
            color: "rgba(69, 64, 74, 0.18)",
            opacity: 0.35,
        },
    },
    plotOptions: {
        radialBar: {
            offsetY: -10,
            startAngle: 0,
            endAngle: 270,
            hollow: {
                margin: 5,
                size: "50%",
                background: "transparent",
            },
            track: {
                show: false,
            },
            dataLabels: {
                name: {
                    fontSize: "18px",
                },
                value: {
                    fontSize: "16px",
                    color: "#475569", // slate-600
                },
            },
        },
    },
    colors: [
        "#f472b6", // pink-400
        "#38bdf8", // sky-400
        "#a78bfa", // violet-400
    ],
    stroke: {
        lineCap: "round",
    },
    series: [81, 70, 110],
    labels: ["Placed", "Shipped", "Delivered"],
    legend: {
        show: false,
    },
};

new ApexCharts(document.querySelector("#radial-chart"), radialOptions).render();
