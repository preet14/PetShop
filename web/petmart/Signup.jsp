<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sign-up Form</title>
		<style type="text/css">
body {
 /* background: url(setra-topclass-500-w820xh328-cutout.jpg) no-repeat center center fixed;*/
 margin: 0px;
 border: none;
 padding: 0px;
  background-size: cover;
  height: 100%;
  font-family: sans-serif;
}

.loginBox
{
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 550px;
	height: 900px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.5);
	border-radius: 10px;
}
.user
{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/2);
	left: calc(50% - 50px);
}
h2
{
	margin: 0;
	padding: 0 0 20px;
	color: white;
	text-align: center;
}
.loginBox p
{
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}
.loginBox input
{
	width: 100%;
	margin-bottom: 20px;
}
.loginBox input[type="text"],
.loginBox input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}
.loginBox select
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	width:100%;
	color:#fff;
	height: 40px;
	font-size: 16px;
}
.loginBox option{
	color:black;
}
.loginBox option[value=""][disabled] {
  display: none;
}
::placeholder
{
	color: rgba(255,255,255,.5);
}
.loginBox input[type="submit"]
{
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: dodgerblue;
	cursor: pointer;
	border-radius: 20px;
}
.loginBox input[type="submit"]:hover
{
	background: #39dc79;
	color: #262626;
        
}
.loginBox a
{
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}

 .dog-wrapper {
	position: absolute; height: 140%; width: 100%;
	background-color: #2b333f; overflow: hidden;
}
.dog-wrap {
	position: relative;
	height: 80%; width: 90%; max-width: 820px;

	top: 0%; padding-top: 5%;
	margin: auto;
	transform: scale(1);
	transition: all 1s;
}
@media (max-width:480px){
	.dog-wrap {
		
	}
}
/* 강아지 */
.dog-container { 
	position: absolute;
	bottom: 0; left: 20%;
	width: 195px; height: 253px;
	transform: scale(0.9);
	z-index: 100;
}
.dog-head-front {
	position: absolute; right: 0; bottom: 0;
	background-color: #ff9a29;
	width: 100px; height: 100%;
	border-top-right-radius: 60px;
	border-top-left-radius: 60px;
	border-bottom-right-radius: 120px;
}
.dog-head-front .ears {
	position: absolute; width: 100%;
}
.dog-head-front .ear {
	position: absolute;  top: -18px;
	width: 25px; height: 80px;
	background-color: #ff9a29;
}
.dog-head-front .left-ear {
	left: 0;
	border-top-right-radius: 40px;
}
.dog-head-front .right-ear {
	right: 0;                          
	border-top-left-radius: 40px;
}
.dog-head-front .eyes {
	position: absolute;
	top: 25px; right: 22px;
	width: 100%; height: 9px; 
	transform: rotatex(39deg);
	animation: eyes 2s cubic-bezier(1,0,0,1) infinite;
}
@keyframes eyes {
	0%   {right: -2px; transform: rotatex(3deg);}
	50%  {right: 22px; transform: rotatex(59deg);}
	100% {right: -2px; transform: rotatex(3deg);}
}

.dog-head-front .eye {
	position: absolute;
	background-color: #111;
	width: 12px; height: 100%;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}
.dog-head-front .left-eye {left: 30px;}
.dog-head-front .right-eye {left: 75px;}

.dog-mouth {
	position: absolute; 
	top: 44px;
  width: 100%; height: 42px;
}
.dog-mouth-base {
	position: absolute; right: 45px; 
	width: 65px; height: 100%;
	background-color: #fff7ee;
	border-top-left-radius: 0px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 38px;
	border-bottom-right-radius: 42px;
	animation: dogmouse 2s cubic-bezier(1,0,0,1) infinite;
}
@keyframes dogmouse {
	0% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 42px;
		right: -10px;
	}
	20% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 42px;
	}
	25% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 42px;
		width: 64px;
	}
	30% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
		width: 65px;
	}
	45% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
	}
	50% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
		right: 46px;
	}
	55% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
	}
	70% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
		width: 64px;
	}
	75% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
	}
	90% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
	}
	100% {
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-bottom-left-radius: 42px;
		border-bottom-right-radius: 42px;
		right: -10px;
		width: 65px;
	}
}
.dog-nose-black {
	position: absolute;
	right: 49px; top: 0;
	width: 17px; height: 14px;
	background-color: #000;
	border-bottom-right-radius: 38px;
	animation: dognose 2s cubic-bezier(1,0,0,1) infinite;
}
@keyframes dognose {
	0% {
		border-radius: 0%;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 0;
		right: 0%; width: 17px;
	}
	5% {
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 38px;
	}
	25% {width: 23px;}
	30% {width: 17px;}
	45% {
		border-bottom-left-radius: 18px;
		border-bottom-right-radius: 38px;
	}
	50% {
		border-radius: 0%;
		border-bottom-left-radius: 0px;
		border-bottom-right-radius: 38px;
		right: 79%;
	}
	65% {
		border-radius: 0%;
		border-bottom-left-radius: 18px;
		border-bottom-right-radius: 18px;
	}
	95% {
		border-radius: 0%;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 0px;
	}
	100% {
		border-radius: 0%;
		border-bottom-left-radius: 38px;
		border-bottom-right-radius: 0px;
		right: -3%;
	}
}
.dog-collar {
	position: absolute;
	top: 92px; 
	width: 100%; height: 10px;
	background-color: #c64f3c;;
}
.dog-back-torso {
	position: absolute;
	bottom: 0; right: 70px;
	height: 60%; width: 100px;
	background-color: #ff9a29;
	border-top-left-radius: 180px;
	transform: skew(-10deg);
}
.front-left-leg {
	position: absolute; 
	right: 0; bottom: 0;
	width: 32px; height: 126px;
	background-color: #Fa9028;
	border-top-left-radius: 50px;
	border-top-right-radius: 50px;
	overflow: hidden;
}
.front-left-foot {
	position: absolute;
	bottom: -10px; left: -1px;
	width: 35px; height: 22px;
	background-color: #f1f1f1;
	border-radius: 50%;
	transform: skew(20deg) rotate(-22deg);
}
.front-right-leg {
	position: absolute; 
	bottom: 0; right: 39px; 
	width: 32px; height: 89px;
	background-color: #fa9028;
	border-top-left-radius: 50px;
	border-top-right-radius: 50px;
	overflow: hidden;
}
.front-right-foot {
	position: absolute;
	left: -1px; bottom: -8px;
	width: 35px; height: 22px;
	background-color: #f1f1f1;
	border-radius: 50%;
	transform: skew(20deg) rotate(-22deg);
}
.dog-back-tail {
	position: absolute;
	left: 0; bottom: 0;
	width: 24.5px; height: 114px;
	background-color: #ff9a29;;
}
.curve1 {
	position: absolute;
	top: -38px; left: -28px;
	width: 12px; height: 70px;
	border: 22px solid #ff9a29;
	border-radius: 0;
	border-top-left-radius: 0;
	border-top-right-radius: 32px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
	border-left-color: transparent;
	border-top-color: transparent;
	border-bottom-color: transparent;
	transform: skew(0deg) rotate(-1deg) rotatey(1deg) skewy(-26deg);
}
.curve2 {
	position: absolute;
	top: -23px; left: -27px;
	width: 14px; height: 9px;
	border: 12px solid #ff9a29;
	border-radius: 1000px;
	border-left-color: transparent;
	border-top-color: transparent;
	border-bottom-color: transparent;
	transform: skew(-7deg) rotate(-74deg) rotatey(1deg) skewy(-2deg) scale(2);
	animation: tailcurve 150ms linear infinite;
}
@keyframes tailcurve {
	0% {top: -23px}
	50% {top: -27px}
	100% {top: -23px}
}
.curve3 {
	position: absolute;
	top: -34px; left: -15px;
	width: 0; height: 14px;
	border: 15px solid #ff9a29;
	border-top-left-radius: 0;
	border-top-right-radius: 32px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-left-color: transparent;
	border-top-color: transparent;
	border-bottom-color: transparent;
}
.end {
	position: absolute;
	top: -43px; left: -27px;
	width: 20px; height: 24px;
	background-color: #f1f1f2;
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	transform: skew(-2deg) rotate(-12deg);
	animation: tailcurve2 150ms linear infinite;
}
@keyframes tailcurve2 {
	0% {top: -43px}
	50% {top: -48px}
	100% {top: -43px}
}
.back-leg {
	position: absolute; 
	left: 41px; bottom: 9px;
	width: 31px; height: 41px;
	background-color: #ff9a29;
	border: 4px solid #e48121;
	border-left-color: transparent;
	border-bottom-color: transparent;
	border-right-color: transparent;
	border-top-right-radius: 54px;
	transform: skew(11deg) rotate(41deg);
}
.back-leg-foot {
	position: absolute;
	left: 4px; bottom: -14px;
	width: 46px; height: 29px;
	background-color: #f1f1f1;
	border-radius: 50%;
	transform: skew(-15deg) skewx(18deg) rotate(-49deg);
}

.ground {
	position: absolute;
	width: 100%; height: 15px;
	background-color: #020303;
	bottom:0px;
	border-radius: 20px;
	z-index: 110;
}

.dog-kennel {
	position: absolute;
	bottom: 0; left: 27%;
	width: 344px; height: 271px;
	z-index: 90;
}
.roof-left {
	position: absolute;
	width: 253px; height: 141px;
	top: 0; left: -16px;
	background-color: #1e4857;
	transform: skew(-33deg);
	border-right: 8px solid #4d4a55;
	border-bottom: 8px solid #4d4a55;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}
.roof-right {
	position: absolute;
	width: 292px; height: 140px;
	top: 0; left: 37px;
	background-color: #1a3140;
	transform: skew(30deg);
	border-top-left-radius: 100%;
	border-bottom-right-radius: 12px;
	border-right: 8px solid #4d4a55;
	border-top: 8px solid #4d4a55;
}
.roof-right .wall {
	position: absolute;
	height: 140px; width: 240px;
	top: 0; left: 32px;
	background-color: #8c2c1f;
	transform: skewx(0deg);
	border-bottom-right-radius: 16px;
}
.wall-left {
	position: absolute;
	bottom: 0;
	width: 180px; height: 83%;
	background-color: #622224;
	border-top-left-radius: 5px;
}
.wall-right {
	position: absolute;
	bottom: 0; right: -1px;
	width: 165px; height: 49%;
	background-color: #8c2c1f;
}
.wall-right .door {
	position: relative;
	height: 81%; width: 70%;
	top: 6%; left: 25px;
	background-color: #642220;
	border-radius: 50%;
	box-shadow: -14px 0 0 #5e2c2d inset;
	
}
/* 별 */
.stars {
	position: absolute;
	width: 100%; height: 42%;
	top: 0; left: 0; right: 0;
}
.stars .star {
	position: relative;
	background: #f1f1f1;
	border-radius: 50%;
	animation: twinkle 2s ease-in-out infinite;
}
@keyframes twinkle {
	0% {opacity: 1;}
	50% {opacity: 0.1;}
	100% {opacity: 1;}
}
.stars .star:nth-of-type(1) {
	top: 45%; left: 66%; width: 6px; height: 6px;
	animation-delay: 2s;
}
.stars .star:nth-of-type(2) {
	top: 70%; left: 48%; width: 5px; height: 5px;
	animation-delay: 4s;
}
.stars .star:nth-of-type(3) {
	top: 4%; left: 44%; width: 3px; height: 3px;
	animation-delay: 1s;
}
.stars .star:nth-of-type(4) {
	top: 23%; left: 53%; width: 1px; height: 1px;
	animation-delay: 2s;
}
.stars .star:nth-of-type(5) {
	top: 26%; left: 93%; width: 3px; height:3px;
	animation-delay: 1.3s;
}
.stars .star:nth-of-type(6) {
	top: 46%; left: 13%; width: 4px; height:4px;
	animation-delay: 2.3s;
}
.stars .star:nth-of-type(7) {
	top: 66%; left: 34%; width: 2px; height:2px;
	animation-delay: 1.3s;
}
.stars .star:nth-of-type(8) {
	top: 36%; left: 3%; width: 3px; height:3px;
	animation-delay: 3.3s;
}
.stars .star:nth-of-type(9) {
	top: 76%; left: 54%; width: 1px; height:1px;
	animation-delay: 2.3s;
}
.stars .star:nth-of-type(10) {
	top: 56%; left: 24%; width: 3px; height:3px;
	animation-delay: 1.3s;
}
.stars .star:nth-of-type(11) {
	top: 76%; left: 25%; width: 3px; height:3px;
	animation-delay: 0.3s;
}
.stars .star:nth-of-type(12) {
	top: 56%; left: 55%; width: 1px; height:1px;
	animation-delay: 2.31s;
}
.stars .star:nth-of-type(13) {
	top: 36%; left: 35%; width: 3px; height:3px;
	animation-delay: 1.31s;
}
.stars .star:nth-of-type(14) {
	top: 86%; left: 45%; width: 2px; height:2px;
	animation-delay: 2.31s;
}
.stars .star:nth-of-type(15) {
	top: 82%; left: 85%; width: 3px; height:3px;
	animation-delay: 0.31s;
}
.stars .star:nth-of-type(16) {
	top: 81%; left: 15%; width: 1px; height:1px;
	animation-delay: 1.31s;
}
.stars .star:nth-of-type(17) {
	top: 83%; left: 35%; width: 3px; height:3px;
	animation-delay: 2.31s;
}
.stars .star:nth-of-type(18) {
	top: 23%; left: 55%; width: 2px; height:2px;
	animation-delay: 1.31s;
}
.stars .star:nth-of-type(19) {
	top: 53%; left: 50%; width: 1px; height:1px;
	animation-delay: 1.31s;
}
.stars .star:nth-of-type(20) {
	top: 83%; left: 20%; width: 1px; height:1px;
	animation-delay: 1.51s;
}

.moon-container {
	position: absolute;
	top: 5%; right: -7%;
	width: 310px; height: 330px;
	opacity: 1;
}

.glow1 {
	position: absolute;
	width: 260px; height: 260px;
	top: 20px; left: 30px;
	background-color: #f1f1f1;
	border-radius: 50%;
	opacity: 0.1;
	transition: opacity 0.3s;
	animation: glow 3s infinite;
}
.glow2 {
	position: absolute;
	width: 340px; height: 340px;
	top: -20px; left: -10px;
	background-color: #f1f1f1;
	border-radius: 50%;
	opacity: 0.1;
	transition: opacity 0.3s;
	animation: glow 3s 0.5s infinite;
}
@keyframes glow {
	0% {transform: scale(1);}
	50% {transform: scale(1.1);}
	100% {transform: scale(1);}
}
.moon-center {
	position: absolute;
	width: 160px; height: 160px;
	background-color: #d2e8e6;
	left: 80px; top: 70px;
	border-radius: 50%;
}
.scars1 {
	position: absolute;
	width: 17px; height: 17px;
	background-color: #cadad6;
	top: 23px; left: 33px;
	border-radius: 50%;
}
.scars2 {
	position: absolute;
	width: 30px; height: 30px;
	background-color: #cadad6;
	top: 48px; left: 10px;
	border-radius: 50%;
}
.scars3 {
	position: absolute;
	width: 20px; height: 20px;
	background-color: #cadad6;
	top: 90px; left: 14px;
	border-radius: 50%;
}

.shooting-star {
	position: absolute;
	top: 0; height: 51%;
	width: 55%;
}
.shooting {
	position: relative;
	height: 80px; width: 2px;
	background-color: #fff;
	box-shadow: 0px 0px 30px #fff;
	top: -20%; left: -20%;
	transform-origin: 10% 0;
	transform: rotate(130deg) scale(0);
	animation: shooting 1s 1.5s ease-in infinite;
}
@keyframes shooting {
	0% {
		height: 20px; opacity:1;
		top: -20px; left: -20%;
		transform: rotate(130deg) scale(1);
	}
	25% {
		height: 120px; opacity:1;
		transform: rotate(130deg) scale(1);
	}
	30% {
		height: 0px; 
		top: 110%; left: 100%;
	}
	35% {
		height: 0px; 
		transform: rotate(130deg) scale(1);
	}
	50% {
		height: 0px; opacity:1;
		top: 110%; left: 100%;
		transform: rotate(130deg) scale(0);
	}
	100% {opacity: 0;}
}
/* 배경 */
.hill1 {
	position: absolute;
	width: 20px; height: 239px;
	left: 120px; bottom: 183px;
	background-color: #1f2731;
	border-top-left-radius: 100px;
	border-top-right-radius: 100px;
	transform: perspective(164px) rotatex(78deg) translate3d(0px, 18px,-42px)
} 
.hill2 {
	position: absolute;
	width: 28px; height: 255px;
	left: 229px; bottom: 259px;
	background-color: #1f2731;
	border-top-left-radius: 100px;
	border-top-right-radius: 100px;
	transform: perspective(164px) rotatex(78deg) translate3d(0px, 18px,-42px)
} 
.hill3 {
	position: absolute;
	width: 28px; height: 246px;
	left: 334px; bottom: 211px;
	background-color: #1f2731;
	border-top-left-radius: 100px;
	border-top-right-radius: 100px;
	transform: perspective(164px) rotatex(78deg) translate3d(0px, 18px,-42px)
} 
.back-hill {
	position: absolute;
	height: 250px; width: 400px;
	background-color: #1f2731;
	bottom: 0; right: 5%;
	border-top-left-radius: 500px;
	border-top-right-radius: 500px;
}
	</style>
	</head>
	<body>
		<div class="dog-wrapper">
	<div class="dog-wrap">
		<div class="stars">
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
			<div class="star"></div>
		</div>
		<div class="shooting-star">
			<div class="shooting"></div>
		</div>
		<div class="moon-container">
			<div class="moon-glow">
				<div class="glow1"></div>
				<div class="glow2"></div>
			</div>
			<div class="moon-center">
				<div class="scars1"></div>
				<div class="scars2"></div>
				<div class="scars3"></div>
			</div>
		</div>
		<div class="dog-container">
			<div class="front-left-leg">
				<div class="front-left-foot"></div>
			</div>
			<div class="dog-back-torso"></div>
			<div class="dog-head-front">
				<div class="ears">
					<div class="left-ear ear"></div>
					<div class="right-ear ear"></div>
				</div>
				<div class="eyes">
					<div class="left-eye eye"></div>
					<div class="right-eye eye"></div>
				</div>
				<div class="dog-mouth">
					<div class="dog-mouth-base">
						<div class="dog-nose-black"></div>
					</div>
				</div>
				<div class="dog-collar"></div>
			</div>
			<div class="dog-back-tail">
				<div class="curve1"></div>
				<div class="curve2"></div>
				<div class="curve3"></div>
				<div class="end"></div>
			</div>
			<div class="back-leg">
				<div class="back-leg-foot"></div>
			</div>
			<div class="front-right-leg">
				<div class="front-right-foot"></div>
			</div>
		</div>
		<div class="hill">
			<div class="hill1"></div>
			<div class="hill2"></div>
			<div class="hill3"></div>
		</div>
		<div class="back-hill"></div>
		<div class="dog-kennel">
			<div class="roof-right">
				<div class="wall"></div>
			</div>
			<div class="wall-left"></div>
			<div class="wall-right">
				<div class="door"></div>
			</div>
			<div class="roof-left"></div>
		</div>
		<div class="ground"></div>
	</div>
</div>
		<div class="loginBox">
			    <!-- <img src="avatar.png" class="user"> -->
			    <h2>Create Account</h2>
                <form name="myForm" method="post" action="UserSignup" onsubmit="return myValidation()">
				<p>Your Name</p>
				<input type="text" name="yname" placeholder="Enter Name">
				<p>User Name</p>
				<input type="text" name="uname" placeholder="Enter UserName">
				
                                <p>Email</p>
                                <input type="text" name="email" placeholder="Enter Email">
                                <p>Contact No</p>
                                <input type="text" name="cno" placeholder="Enter Contact">
                                <p>Address</p>
                                <input type="text" name="address" placeholder="Enter Address">
                                <p>Pin-Code</p>
                                <input type="text" name="pin" placeholder="Enter Pin-Code">
                                <p>Password</p>
                                <input type="password" name="pass" placeholder="Enter Password">
                							
				<input type="submit" name=""  action="same.html" value="Create">
                                <a href="Login.jsp">Already a member Login here</a>
				<script type="text/javascript">
					         function myValidation(){
 			                   var uname = document.forms["myForm"]["uname"];
 					           var pwd = document.forms["myForm"]["pass"];
 			                   var stat = document.forms["myForm"]["status"];
 			                   var flag=true;
 							   
                               if(uname.value==""){
                               	  alert("UserName cannot be empty");
                               	  
                               	  flag=false;
                               }
                               if(pwd.value==""){
                               	  alert("Password cannot be empty");
                               	 
                               	  flag=false;
                               }
                               
 			                   return flag;
 		                     }
				</script>
			</form>
		</div>
	</body>
</html>