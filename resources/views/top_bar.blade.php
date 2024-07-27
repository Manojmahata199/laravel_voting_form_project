<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
    <style>
        @media only screen and (min-width:701px){
            .top-spons,.top-spons-sm{
                margin-top: 5%;
            }
        }
        @media only screen and (max-width:700px){
        .top-spons{
            width:40%;
        }
			
		.top-spons-sm{
            width:50%;
			padding-bottom:5px;
        } 
			
        #Top_bar .logo #logo {
                margin: 10px 0 0 0; 
                width: 70%;
            }
        }
  
        .swal2-icon.swal2-warning {
            border-color: #ea4d55;
            color: #ea4d55;
        }        
        .swal2-styled.swal2-confirm {
            border-radius: 0.25em;
            background: initial;
            background-color: #ffffff !important;
            color: #ea4d55;
            border: #ea4d55 2px solid;
            font-size: 1em;
        }
    </style>    
    


<div id="Top_bar" class="top-bar-color">
    <div class="container">
        <div class="column one">
            <div class="top_bar_center clearfix row">
                <!-- Logo -->
                <div class="logo col-sm-2"> 
                    <center><img class="top-spons" class src="{{ asset('css/images/dhoot.png') }}" alt="aparajita" />
                    </center>
                </div>
                <div class="logo col-sm-7">
                    <center>
                    <a id="logo" href="https://aparajita.sanmarg.in" title="Aparajita">
                        <img class="logo-main scale-with-grid" src="{{ asset('css/images/Aparajita_Logo_Unit_2021_White.png') }}" alt="aparajita" />
                        <img class="logo-sticky scale-with-grid" src="{{ asset('css/images/Aparajita_Logo_Unit_2021_White.png') }}" alt="aparajita" />
                        <img class="logo-mobile scale-with-grid" src="{{ asset('css/images/Aparajita_Logo_Unit_2021_White.png') }}" alt="aparajita" />
                        <img class="logo-mobile-sticky scale-with-grid" src="{{ asset('css/images/Aparajita_Logo_Unit_2021_White.png') }}" alt="aparajita" />
                    </a>
                    </center>
                </div>
                <div class="logo col-sm-3"> 
                    <center><img class="top-spons-sm" src="{{ asset('css/images/bmdtechno.png') }}" alt="aparajita" /></center>
                </div>
            </div>
        </div>
    </div>
</div>