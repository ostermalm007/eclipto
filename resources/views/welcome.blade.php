@extends('frontend.layouts.master')

@section('styles')

@endsection

@section('scripts')


@endsection

@section('content')
  <!--End landex-header-section -->
  <div class="fugu--hero-section3" style="background-image: url({{ asset('/public/assets') }}/images/all-img/v5/hero-bg2.png)">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="fugu--hero-content fugu--hero-content3">
            <h1 class="wow fadeInUpX" data-wow-delay="0s">New-gen of digital currency</h1>
            <p class="wow fadeInUpX" data-wow-delay="0.15s">Get started with one of the easiest and most secure platforms for buying, selling, trading, and earning cryptocurrency in one place.</p>
            <div class="fugu--btn-wrap fugu--hero-btn wow fadeInUpX" data-wow-delay="0.25s">
              <a class="fugu--btn bg-blue active" href="{{ url('/crypto-exchange/create') }}">Get Started</a>
              {{-- <a class="fugu--btn bg-blue" href="#">Discover More</a> --}}
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="fugu--thumb-three">
            <div class="fugu--hero-thumb fugu--hero-thumb3">
              <img class="wow fadeInUpX" data-wow-delay="0.20s" src="{{ asset('/public/assets') }}/images/all-img/v5/hero-thumb.png" alt="">
              <div class="fugu--bitcoin bitcoin-one">
                <img src="{{ asset('/public/assets') }}/images/all-img/v5/bitcoin1.png" alt="">
              </div>
              <div class="fugu--bitcoin bitcoin-two">
                <img src="{{ asset('/public/assets') }}/images/all-img/v5/bitcoin2.png" alt="">
              </div>
              <div class="fugu--bitcoin bitcoin-three">
                <img src="{{ asset('/public/assets') }}/images/all-img/v5/bitcoin3.png" alt="">
              </div>


              
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="fugu--circle-shape circle-one">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
    <div class="fugu--circle-shape circle-two">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
  </div>
  <!-- End fugu-hero-section -->
  <div class="fugu--client-section">
    <div class="container">
      <div class="fugu--client-title">
        <p>Trusted Over 80k+ Companies in the World</p>
      </div>
      <div class="fugu-client-slider">
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client1.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client2.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client3.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client4.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client5.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client1.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client2.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client3.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client4.png" alt="">
        </div>
        <div class="fugu--brand-logo">
          <img src="{{ asset('/public/assets') }}/images/all-img/v5/client5.png" alt="">
        </div>
      </div>
    </div>
  </div>
  <!-- End client section -->
  <div class="fugu--video-section">
    <div class="container">
      <div class="row">
        <div class="col-xl-6">
          <div class="fugu--video-thumb wow fadeInUpX" data-wow-delay="0.10s">
            <img src="{{ asset('/public/assets') }}/images/all-img/v5/video-thumb.png" alt="">
            <a class="fugu--popup" href="https://www.youtube.com/watch?v=phOs-phSTh4">
              <img src="{{ asset('/public/assets') }}/images/all-img/v5/play-button.png" alt="">
              <div class="waves wave-1"></div>
              <div class="waves wave-2"></div>
              <div class="waves wave-3"></div>
            </a>
            <div class="fugu--video-shape1">
              <img src="{{ asset('/public/assets') }}/images/shape2/shape-video.png" alt="">
            </div>
            <div class="fugu--video-shape2">
              <img src="{{ asset('/public/assets') }}/images/shape2/shape-video.png" alt="">
            </div>
          </div>
        </div>
        <div class="col-xl-6 d-flex align-items-center">
          <div class="fugu--default-content">
            <h2>About Eclipto</h2>
            <p>At Eclipto, we are dedicated to providing a secure, user-friendly, and efficient cryptocurrency trading platform. Our mission is to empower users to take control of their financial future through innovative technology and exceptional service.</p>
            <div class="fugu--btn-wrap">
              <a class="fugu--btn bg-blue" href="{{ url('/crypto-exchange/create') }}">Get Started</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End video section -->
  <div class="fugu--feature-section fugu--section-padding2">
    <div class="container">
      <div class="fugu--section-title">
        <div class="fugu--default-content">
          <h2>Combines the best features of crypto</h2>
          {{-- <p>A cryptocurrency is a digital & virtual currency that is secured by Fugu which makes it nearly impossible to counterfeit or double-spend.</p> --}}
        </div>
      </div>
      <div class="row">
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay="0s">
            <div class="fugu--iconbox-thumb">
              <svg width="41" height="45" viewBox="0 0 41 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M39.4221 5.78276L22.9278 0.41887C21.2076 -0.139885 19.3257 -0.139885 17.5992 0.42044L4.87969 4.55774L1.09868 5.81808C0.442609 6.03703 0 6.65072 0 7.34288V11.3185C0 24.173 6.11021 35.91 16.3452 42.7155L19.3759 44.7308C19.6459 44.9105 19.9551 45 20.2659 45C20.5766 45 20.8858 44.9105 21.1558 44.7308L24.1866 42.7155C34.4215 35.91 40.5317 24.1613 40.5317 11.2871V7.31149C40.5317 6.6154 40.0828 5.99857 39.4221 5.78276ZM37.3173 11.2871C37.3173 23.0822 31.7439 33.8312 22.4067 40.0395L20.2659 41.463L18.125 40.0395C8.78784 33.8312 3.21441 23.094 3.21441 11.3185V8.5012L18.5943 3.4779C19.6741 3.12632 20.8591 3.12632 21.9327 3.47633L37.3173 8.47923V11.2871Z" fill="white" />
                <path d="M19.2865 5.62628L6.57792 9.75888C5.91715 9.97469 5.46826 10.6229 5.46826 11.319C5.46826 22.3364 10.665 32.3704 19.3712 38.1589C19.6412 38.3386 19.9504 38.4281 20.2611 38.4281C20.5719 38.4281 20.8811 38.3386 21.1511 38.1589C29.8573 32.3704 35.054 22.3364 35.054 11.319V11.2876C35.054 10.5915 34.6051 9.97469 33.9444 9.75888L21.2358 5.62707C20.5986 5.41832 19.9237 5.4191 19.2865 5.62628ZM20.2611 34.8644C13.2846 29.8058 9.03582 21.5736 8.70308 12.4467L20.2407 8.68374L31.8192 12.4483C31.4943 21.5587 27.244 29.8011 20.2611 34.8644Z" fill="white" />
                <path d="M25.3529 17.6552C24.7251 17.0259 23.7081 17.0274 23.0803 17.6537L19.1752 21.5548L17.4425 19.8243C16.8147 19.1981 15.796 19.1965 15.1682 19.8259C14.542 20.4537 14.542 21.4716 15.1698 22.0986L18.0389 24.9638C18.3528 25.2769 18.764 25.4339 19.1752 25.4339C19.5865 25.4339 19.9977 25.2769 20.3116 24.9638L25.3529 19.9279C25.9808 19.3009 25.9808 18.2831 25.3529 17.6552Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>Secure Transactions</h4>
              <p>Your security is our priority. Enjoy peace of mind with our state-of-the-art encryption and multi-layer security protocols.</p>
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay=".10s">
            <div class="fugu--iconbox-thumb">
              <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M43.3929 10.4464H6.83036C4.83634 10.4464 3.21429 8.82359 3.21429 6.83036C3.21429 4.83712 4.83634 3.21429 6.83036 3.21429H32.9464C33.834 3.21429 34.5536 2.49547 34.5536 1.60714C34.5536 0.71882 33.834 0 32.9464 0H6.83036C3.0644 0 0 3.06362 0 6.83036V35.3571C0 40.6745 4.32547 45 9.64286 45H43.3929C44.2804 45 45 44.2812 45 43.3929V12.0536C45 11.1652 44.2804 10.4464 43.3929 10.4464ZM9.64286 41.7857C6.0982 41.7857 3.21429 38.9026 3.21429 35.3571V12.6014C4.26574 13.2627 5.49925 13.6607 6.83036 13.6607H41.7857V41.7857H9.64286Z" fill="white" />
                <path d="M5.22339 6.83047C5.22339 7.71879 5.94299 8.43761 6.83053 8.43761H38.1698C39.0574 8.43761 39.777 7.71879 39.777 6.83047C39.777 5.94215 39.0574 5.22333 38.1698 5.22333H6.83053C5.94299 5.22333 5.22339 5.94215 5.22339 6.83047Z" fill="white" />
                <path d="M31.2754 29.0438C31.3466 28.6621 31.2324 28.2919 31.0682 27.9524L23.8635 16.4246C23.275 15.4861 21.7259 15.4861 21.1373 16.4246L13.9327 27.9524C13.6106 28.5323 13.6399 29.2378 14.0221 29.784L21.2268 39.149C21.5305 39.5446 22.0013 39.7768 22.5004 39.7768C22.9995 39.7768 23.4704 39.5446 23.7741 39.149L30.9787 29.784C31.109 29.5516 31.2526 29.3149 31.2754 29.0438ZM22.5004 20.3091L27.2256 27.8704L22.5004 29.288L17.7752 27.8704L22.5004 20.3091ZM22.5004 35.5345L19.6095 31.7772L22.039 32.5055C22.3388 32.5965 22.6621 32.5965 22.9619 32.5055L25.3914 31.7772L22.5004 35.5345Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>User-Friendly Interface</h4>
              <p>Trade with ease using our intuitive and user-friendly platform designed for both beginners and experts.</p>
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay=".20s">
            <div class="fugu--iconbox-thumb">
              <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M41.3416 0H3.65923C1.64167 0 0 1.64167 0 3.65923V31.4115C0 33.7837 1.93045 35.7142 4.30272 35.7142H16.6319C16.9654 37.7225 16.9654 39.7774 16.6319 41.7857H13.4551C12.5676 41.7857 11.848 42.5053 11.848 43.3929C11.848 44.2804 12.5676 45 13.4551 45H31.5449C32.4332 45 33.152 44.2804 33.152 43.3929C33.152 42.5053 32.4332 41.7857 31.5449 41.7857H28.3672C28.0339 39.7773 28.0339 37.7226 28.3672 35.7142H40.6965C43.0695 35.7142 45 33.7837 45 31.4115V3.65923C45 1.64167 43.3583 0 41.3416 0ZM41.7857 31.4115C41.7857 32.0118 41.2976 32.4999 40.6965 32.4999H4.30272C3.70239 32.4999 3.21429 32.0118 3.21429 31.4115V3.65923C3.21429 3.41361 3.41361 3.21429 3.65923 3.21429H41.3416C41.5864 3.21429 41.7857 3.41361 41.7857 3.65923V31.4115ZM25.0849 41.7857H19.9143C20.1968 39.7752 20.1968 37.7247 19.9143 35.7142H25.0849C24.8024 37.7247 24.8024 39.7752 25.0849 41.7857Z" fill="white" />
                <path d="M36.161 25.986H8.83956C7.95203 25.986 7.23242 26.7056 7.23242 27.5931C7.23242 28.4806 7.95203 29.2002 8.83956 29.2002H36.161C37.0493 29.2002 37.7681 28.4806 37.7681 27.5931C37.7681 26.7056 37.0493 25.986 36.161 25.986Z" fill="white" />
                <path d="M15.995 23.8984C16.3002 24.2696 16.7554 24.4846 17.2357 24.4846C17.7159 24.4846 18.1711 24.2696 18.4763 23.8984L23.0254 18.3715L24.8539 20.5938C25.1537 20.958 25.5978 21.1722 26.0687 21.18C26.5222 21.1753 26.9915 20.9886 27.3023 20.6339L37.3673 9.18219C37.9527 8.51516 37.8884 7.49971 37.2214 6.9143C36.5559 6.32888 35.5373 6.39245 34.9535 7.06026L26.1361 17.0923L24.2669 14.8213C23.9609 14.4501 23.5057 14.2351 23.0254 14.2351C22.5452 14.2351 22.09 14.4501 21.7848 14.8213L17.2357 20.3482L13.9523 16.3594C13.3873 15.6735 12.3758 15.5747 11.6907 16.1397C11.0048 16.7031 10.9067 17.7162 11.471 18.4013L15.995 23.8984Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>Reports & analytics</h4>
              <p>Crypto fund report published by a cointelegraph research investigates provides benefits to its users.</p>
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay=".30s">
            <div class="fugu--iconbox-thumb">
              <svg width="42" height="45" viewBox="0 0 42 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M35.4372 0H6.34853C2.84781 0 0 2.8486 0 6.34853V38.6515C0 42.1514 2.84781 45 6.34853 45H35.4372C38.9371 45 41.7857 42.1514 41.7857 38.6515V6.34853C41.7857 2.8486 38.9371 0 35.4372 0ZM6.34853 41.7857C4.62054 41.7857 3.21429 40.3795 3.21429 38.6515V6.34853C3.21429 4.62054 4.62054 3.21429 6.34853 3.21429H22.58C24.308 3.21429 25.7143 4.62054 25.7143 6.34853V23.2643H23.754C22.8657 23.2643 22.1469 23.9832 22.1469 24.8715C22.1469 25.7598 22.8657 26.4786 23.754 26.4786H25.7143V38.6515C25.7143 40.3795 24.308 41.7857 22.58 41.7857H6.34853ZM38.5714 38.6515C38.5714 40.3795 37.1652 41.7857 35.4372 41.7857H28.0669C28.5999 40.857 28.9286 39.7966 28.9286 38.6515V26.4786H31.3846L30.3345 27.5281C29.3039 28.5581 30.0334 30.32 31.4905 30.32C31.9243 30.32 32.3402 30.1478 32.6469 29.841L36.4608 26.0271C37.0994 25.3885 37.0994 24.3532 36.4608 23.7145L32.6469 19.9006C32.3402 19.5939 31.9243 19.4216 31.4905 19.4216C30.0334 19.4216 29.3039 21.1835 30.3345 22.2136L31.3859 23.2643H28.9286V6.34853C28.9286 5.2034 28.5999 4.14292 28.0669 3.21429H35.4372C37.1652 3.21429 38.5714 4.62054 38.5714 6.34853V38.6515Z" fill="white" />
                <path d="M14.449 8.0357C15.3365 8.0357 16.0561 7.31688 16.0561 6.42855C16.0561 5.54023 15.3365 4.82141 14.449 4.82141H14.4325C13.545 4.82141 12.834 5.54023 12.834 6.42855C12.834 7.31688 13.5614 8.0357 14.449 8.0357Z" fill="white" />
                <path d="M17.3252 32.609C19.7108 32.609 21.6514 30.6691 21.6514 28.2835V27.5898C21.6514 26.0578 20.8459 24.7177 19.6413 23.949C19.894 23.3999 20.0443 22.7947 20.0443 22.1516V21.4579C20.0443 19.0723 18.1036 17.1324 15.718 17.1324H15.3374V16.8358C15.3374 15.9475 14.6178 15.2286 13.7303 15.2286C12.8428 15.2286 12.1232 15.9475 12.1232 16.8358V17.1324H8.88375C7.99622 17.1324 7.27661 17.8512 7.27661 18.7396C7.27661 19.6279 7.99622 20.3467 8.88375 20.3467H9.02344V29.3947H8.88375C7.99622 29.3947 7.27661 30.1135 7.27661 31.0019C7.27661 31.8902 7.99622 32.609 8.88375 32.609H12.1232V32.9072C12.1232 33.7955 12.8428 34.5144 13.7303 34.5144C14.6178 34.5144 15.3374 33.7955 15.3374 32.9072V32.609H17.3252ZM18.4372 28.2835C18.4372 28.8956 17.9381 29.3947 17.3252 29.3947H12.2377V26.4786H17.3252C17.9381 26.4786 18.4372 26.9777 18.4372 27.5898V28.2835ZM16.83 21.4579V22.1516C16.83 22.7653 16.3309 23.2644 15.718 23.2644H12.2377V20.3467H15.718C16.3309 20.3467 16.83 20.8458 16.83 21.4579Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>Instant Transactions</h4>
              <p>Experience lightning-fast transactions and real-time updates on your trades and portfolio.</p>
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay=".40s">
            <div class="fugu--iconbox-thumb">
              <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M27.2353 21.6253C27.4174 21.1719 27.5238 20.68 27.5238 20.1623V19.5651C27.5238 17.3898 25.7534 15.6194 23.5781 15.6194H23.4761V15.5888C23.4761 14.7013 22.7573 13.9817 21.8689 13.9817C20.9806 13.9817 20.2618 14.7013 20.2618 15.5888V15.6194H17.7004C16.8121 15.6194 16.0933 16.339 16.0933 17.2266C16.0933 18.0774 16.7596 18.7567 17.5968 18.8128V26.1872C16.7596 26.2433 16.0933 26.9226 16.0933 27.7735C16.0933 28.661 16.8121 29.3806 17.7004 29.3806H20.2618V29.4112C20.2618 30.2987 20.9806 31.0183 21.8689 31.0183C22.7573 31.0183 23.4761 30.2987 23.4761 29.4112V29.3806H24.9608C27.1361 29.3806 28.9065 27.6102 28.9065 25.4349V24.8378C28.9065 23.5109 28.2429 22.3408 27.2353 21.6253ZM24.3095 19.5651V20.1623C24.3095 20.5649 23.9814 20.8929 23.5781 20.8929H20.8111V18.8337H23.5781C23.9814 18.8337 24.3095 19.1617 24.3095 19.5651ZM25.6922 25.4349C25.6922 25.8383 25.3642 26.1663 24.9608 26.1663H20.8111V24.1072H24.9608C25.3642 24.1072 25.6922 24.4352 25.6922 24.8378V25.4349Z" fill="white" />
                <path d="M43.3929 24.1071C44.2812 24.1071 45 23.3875 45 22.5C45 21.6125 44.2812 20.8929 43.3929 20.8929H36.4476C36.1417 18.2229 35.0838 15.7821 33.4921 13.7799L35.9692 11.3034H43.3929C44.2812 11.3034 45 10.5838 45 9.69622C45 8.80868 44.2812 8.08908 43.3929 8.08908H35.3038C34.8769 8.08908 34.4688 8.25858 34.1675 8.55992L31.2194 11.5074C29.2175 9.91604 26.7768 8.85832 24.1071 8.55237V1.60714C24.1071 0.719604 23.3883 0 22.5 0C21.6117 0 20.8929 0.719604 20.8929 1.60714V8.55237C18.2232 8.85832 15.7825 9.91604 13.7806 11.5074L10.8325 8.55992C10.5312 8.25858 10.1231 8.08908 9.69622 8.08908H1.60714C0.71882 8.08908 0 8.80868 0 9.69622C0 10.5838 0.71882 11.3034 1.60714 11.3034H9.03076L11.5079 13.7799C9.91624 15.7821 8.85832 18.2229 8.55237 20.8929H1.60714C0.71882 20.8929 0 21.6125 0 22.5C0 23.3875 0.71882 24.1071 1.60714 24.1071H8.55237C8.85832 26.7771 9.91624 29.2179 11.5079 31.2201L9.03076 33.6966H1.60714C0.71882 33.6966 0 34.4162 0 35.3038C0 36.1913 0.71882 36.9109 1.60714 36.9109H9.69622C10.1231 36.9109 10.5312 36.7414 10.8325 36.4401L13.7806 33.4926C15.7825 35.084 18.2232 36.1417 20.8929 36.4476V43.3929C20.8929 44.2804 21.6117 45 22.5 45C23.3883 45 24.1071 44.2804 24.1071 43.3929V36.4476C26.7768 36.1417 29.2175 35.084 31.2194 33.4926L34.1675 36.4401C34.4688 36.7414 34.8769 36.9109 35.3038 36.9109H43.3929C44.2812 36.9109 45 36.1913 45 35.3038C45 34.4162 44.2812 33.6966 43.3929 33.6966H35.9692L33.4921 31.2201C35.0838 29.2179 36.1417 26.7771 36.4476 24.1071H43.3929ZM22.5 33.3325C16.5266 33.3325 11.6675 28.4734 11.6675 22.5C11.6675 16.5266 16.5266 11.6675 22.5 11.6675C28.4734 11.6675 33.3325 16.5266 33.3325 22.5C33.3325 28.4734 28.4734 33.3325 22.5 33.3325Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>24/7 Customer Support</h4>
              <p>Get assistance whenever you need it with our dedicated 24/7 customer support team.</p>
            </div>
          </div>
        </div>
        <div class="col-xl-4 col-md-6">
          <div class="fugu--iconbox-wrap fugu--iconbox-wrap3 wow fadeInUpX" data-wow-delay=".50s">
            <div class="fugu--iconbox-thumb">
              <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M25.6421 12.8211C25.6421 8.99536 23.949 5.56546 21.2831 3.21429H30.5679V12.1924L29.5218 11.1456C28.4917 10.115 26.7298 10.8445 26.7298 12.3017C26.7298 12.7353 26.9021 13.1512 27.2087 13.458L31.0227 17.2719C31.6614 17.9105 32.6967 17.9105 33.3353 17.2719L37.1492 13.458C37.456 13.1512 37.6282 12.7353 37.6282 12.3017C37.6282 10.8445 35.8663 10.115 34.8363 11.1456L33.7822 12.2003V1.60714C33.7822 0.719605 33.0626 0 32.1751 0H12.825C12.8247 0 12.8245 0.000196185 12.8242 0.000196185C12.8231 0.000196185 12.8221 0 12.8211 0C5.75135 0 0 5.75135 0 12.8211C0 19.8908 5.75135 25.6421 12.8211 25.6421C19.8908 25.6421 25.6421 19.8908 25.6421 12.8211ZM12.8211 3.21429C18.118 3.21429 22.4278 7.52407 22.4278 12.8211C22.4278 18.118 18.118 22.4278 12.8211 22.4278C7.52407 22.4278 3.21429 18.118 3.21429 12.8211C3.21429 7.52407 7.52407 3.21429 12.8211 3.21429Z" fill="white" />
                <path d="M8.14713 16.1616C7.36328 16.2684 6.74951 16.9133 6.74951 17.7265C6.74951 18.614 7.46912 19.3336 8.35666 19.3336H10.6439C10.69 20.1797 11.3763 20.8568 12.234 20.8568C13.0918 20.8568 13.7781 20.1797 13.8242 19.3336H15.1101C17.196 19.3336 18.8926 17.637 18.8926 15.5512V14.9956C18.8926 13.7535 18.2825 12.6588 17.3548 11.9689C17.5102 11.5557 17.6064 11.1134 17.6064 10.6466V10.091C17.6064 8.00512 15.9098 6.30852 13.8247 6.30852H13.8242C13.7781 5.46237 13.0918 4.78534 12.234 4.78534C11.3763 4.78534 10.69 5.46237 10.6439 6.30852H8.35666C7.46912 6.30852 6.74951 7.02812 6.74951 7.91566C6.74951 8.72885 7.36328 9.37371 8.14713 9.48053V16.1616ZM15.6783 15.5512C15.6783 15.8643 15.4232 16.1193 15.1101 16.1193H11.3614V14.4282H15.1101C15.4232 14.4282 15.6783 14.6825 15.6783 14.9956V15.5512ZM14.3921 10.091V10.6466C14.3921 10.9597 14.1378 11.2139 13.8247 11.2139H11.3614V9.52281H13.8247C14.1378 9.52281 14.3921 9.77785 14.3921 10.091Z" fill="white" />
                <path d="M32.1787 19.358C25.109 19.358 19.3577 25.1093 19.3577 32.179C19.3577 36.0047 21.0508 39.4346 23.7167 41.7858H14.4797V32.8556L15.478 33.8544C16.5081 34.8851 18.27 34.1556 18.27 32.6984C18.27 32.2647 18.0977 31.8488 17.791 31.5421L13.9771 27.7282C13.3384 27.0896 12.3031 27.0896 11.6645 27.7282L7.85057 31.5421C7.54383 31.8488 7.37158 32.2647 7.37158 32.6984C7.37158 34.1556 9.13352 34.8851 10.1636 33.8544L11.2655 32.7519V43.3929C11.2655 44.2805 11.9851 45.0001 12.8726 45.0001H32.1748C32.1751 45.0001 32.1753 44.9999 32.1756 44.9999C32.1767 44.9999 32.1777 45.0001 32.1787 45.0001C39.2484 45.0001 44.9998 39.2487 44.9998 32.179C44.9998 25.1093 39.2484 19.358 32.1787 19.358ZM32.1787 41.7858C26.8818 41.7858 22.572 37.476 22.572 32.179C22.572 26.882 26.8818 22.5723 32.1787 22.5723C37.4757 22.5723 41.7855 26.882 41.7855 32.179C41.7855 37.476 37.4757 41.7858 32.1787 41.7858Z" fill="white" />
                <path d="M36.4797 29.4513C36.4797 27.6093 35.329 26.0427 33.7182 25.4159C33.5599 24.6944 32.9474 24.1433 32.1786 24.1433C31.4097 24.1433 30.7973 24.6944 30.639 25.4159C29.0281 26.0427 27.8774 27.6093 27.8774 29.4513C27.8774 31.3635 29.1206 32.9718 30.8286 33.5461C30.8286 33.5461 31.7386 33.7862 32.1786 33.7862C32.7781 33.7862 33.2655 34.2892 33.2655 34.9068C33.2655 35.5252 32.7781 36.0282 32.1786 36.0282C31.5791 36.0282 31.0917 35.5252 31.0917 34.9068C31.0917 34.0192 30.3721 33.2996 29.4846 33.2996C28.597 33.2996 27.8774 34.0192 27.8774 34.9068C27.8774 36.7494 29.0283 38.3163 30.6392 38.943C30.7976 39.664 31.41 40.2148 32.1786 40.2148C32.9471 40.2148 33.5595 39.6641 33.718 38.9431C35.329 38.3164 36.4797 36.7494 36.4797 34.9068C36.4797 32.5165 34.5501 30.5719 32.1786 30.5719C31.5791 30.5719 31.0917 30.0689 31.0917 29.4513C31.0917 28.8337 31.5791 28.3307 32.1786 28.3307C32.7781 28.3307 33.2655 28.8337 33.2655 29.4513C33.2655 30.3388 33.9851 31.0584 34.8726 31.0584C35.7601 31.0584 36.4797 30.3388 36.4797 29.4513Z" fill="white" />
              </svg>
            </div>
            <div class="fugu--iconbox-data">
              <h4>Multi curency support</h4>
              <p>Multi-currency support means that shoppers can pay for your products or services using the currency.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Fugu feature section -->
  <div class="fugu--content-section">
    <div class="container">
      <div class="fugu--content-top">
        <div class="row">
          <div class="col-xl-6 d-flex justify-content-center align-items-center order-xl-2">
            <div class="fugu--content-thumb">
              <img class="wow fadeInUpX" data-wow-delay=".10s" src="{{ asset('/public/assets') }}/images/all-img/v5/thumb.png" alt="">
              <div class="fugu--circle-shape circle-three">
                <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
                <div class="waves wave-1"></div>
              </div>
              <div class="fugu--circle-shape circle-four">
                <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
                <div class="waves wave-1"></div>
              </div>
            </div>
          </div>
          <div class="col-xl-6">
            <div class="fugu--default-content">
              <h2>Safe way to buy,sell and swap crypto</h2>
              {{-- <p>Fugu is one of the largest and safest platforms out there. The best crypto wallets provide a good mix of security tools and user-facing features at a reasonable cost.</p> --}}
              <div class="fugu--meta">
                {{-- <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/check.svg" alt="">Cost-effective mode of transaction secure and private.</li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/check.svg" alt="">Self-governed managed all and easy transfer of funds.</li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/check.svg" alt="">Currency exchanges finish smoothly and decentralized.</li>
                </ul> --}}
                You can easily buy, sell, store, and transfer cryptocurrency in one place. Get the right to buy or sell stocks at a specific date for a specific price. No commissions here either.
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="fugu--content-bottom">
        <div class="row">
          <div class="col-xl-6 d-flex align-items-center">
            <div class="fugu--content-thumb">
              <img class="wow fadeInLeft" data-wow-delay=".10s" src="{{ asset('/public/assets') }}/images/all-img/v5/thumb2.png" alt="">
              <div class="fugu--bitcoin">
                <img src="{{ asset('/public/assets') }}/images/all-img/v5/bitcoin4.png" alt="">
              </div>
              <div class="fugu--content-shape">
                <img src="{{ asset('/public/assets') }}/images/shape2/shape-video.png" alt="">
              </div>
            </div>
          </div>
          <div class="col-xl-6">
            <div class="fugu--default-content">
              <h2>How It Works</h2>
              {{-- <p>While the concept is simple a place to store your crypto & use choosing Fugu crypto wallet can be an incredibly experience. </p> --}}
              <div class="fugu--accordion-one accordion-two" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Create an Account
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        Sign up in minutes and start your crypto trading journey.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Deposit Funds
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        Easily deposit fiat or cryptocurrencies into your account.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Start Trading
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        Buy, sell, and swap cryptocurrencies with our secure and efficient platform.
                    </div>
                  </div>
                </div>
              </div>
              <div class="fugu--btn-wrap">
                <a class="fugu--btn bg-blue" href="{{ url('/crypto-exchange/create') }}">Get Started</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End content section -->
  <div class="fugu--testimonial-section fugu--section-padding">
    <div class="container">
      <div class="fugu--section-title">
        <div class="fugu--default-content">
          <h2>User gives feedback using our crypto app</h2>
          {{-- <p>Fugu is a place of trust for millions of people. Our customer reviews overall and is rated just 4.5 out of 5 stars on Trustpilot. It is the right place for you.</p> --}}
        </div>
      </div>
      <div class="row">

        @forelse(App\Models\Feedback::all() as $feedback)
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay="0s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“{{ $feedback->content }}”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/storage/'.$feedback->image) }}" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- {{ $feedback->user }} </span>
                  <p> {{ $feedback->designation }} </p>
                </div>
              </div>
            </div>
          </div>
        @empty 
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay="0s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“I found Eclipto very professional and trustworthy during my crypto trading duration of 147 days. They are very honest and trusted.”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author1.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Karen Lynn</span>
                  <p>Founder @ Company</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay=".10s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“100% Trusted. Very legit in crypto world. So far I'm satisfied with Eclipto. I just wish this will continue at this way and there will be no sudden changes.”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author2.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Subash Rajendran</span>
                  <p>Software engineer</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay=".20s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“The best place to start your trading path, thank you for support. Its a safe passive income strategy and will be multiply over time 😍.”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author3.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Milan Milenkovic</span>
                  <p>Businessman</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay=".30s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“Trustable ☺️ Best way to earn passive income. Everything was well explained and it was easy to follow their clear. Very legit in crypto world.”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author4.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Francois Malan</span>
                  <p>UI/UX Designer</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay=".40s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“More than just satisfied.Trustable site and the owner is very friendly & calm. And it’s great! The 0,5-1% daily on average is the target.”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author5.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Nadir Zeblah</span>
                  <p>Manager @ Company</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6">
            <div class="fugu--testimonial-wrap wow fadeInUpX" data-wow-delay=".50s">
              <div class="fugu--testimonial-rating">
                <ul>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                  <li><img src="{{ asset('/public/assets') }}/images/svg2/star.svg" alt=""></li>
                </ul>
              </div>
              <div class="fugu--testimonial-data">
                <p>“Best crypto scam investigator. It took less than 24h and gave all the details about the scammer and guided me. My heartfull thanks 💗 ”</p>
              </div>
              <div class="fugu--testimonial-author">
                <div class="fugu--testimonial-author-thumb">
                  <img src="{{ asset('/public/assets') }}/images/all-img/v5/author6.png" alt="">
                </div>
                <div class="fugu--testimonial-author-data">
                  <span>- Abdul Wadud</span>
                  <p>WP Developer</p>
                </div>
              </div>
            </div>
          </div>
        @endforelse

      </div>
      {{-- <div class="fugu--testimonial-button">
        <a class="fugu--btn bg-blue" href="#">View All Reviews</a>
      </div> --}}
    </div>
  </div>
  <!-- End fugu testimonial-section -->
  <div class="fugu--faq-section2 fugu--section-padding-bottom">
    <div class="container">
      <div class="fugu--section-title">
        <div class="fugu--default-content">
          <h2>Do you have any questions about cryptocurrency? Ask us</h2>
          <p> Frequently asked questions qbout cryptocurrency & blockchain technology. Cryptographic security for conducting trusted transactions.</p>
        </div>
      </div>
      <div class="fugu--accordion-one accordion-three" id="accordionExample2">
        <div class="row">
          <div class="col-lg-6">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingFour">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                  Q. What is cryptocurrency in general?
                </button>
              </h2>
              <div id="collapseFive" class="accordion-collapse collapse show" aria-labelledby="headingFour" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                  A cryptocurrency is a digital currency, which is an alternative form of payment created using encryption algorithms.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingSix">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                  Q. What other types of cryptocurrency are out there?
                </button>
              </h2>
              <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                  A cryptocurrency is a digital currency, which is an alternative form of payment created using encryption algorithms.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingSeven">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                    Is it safe to use crypto app?
                </button>
              </h2>
              <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                    Yes, Eclipto crypto app and Coinbase are safe and use security measures that are industry-standard or above for U.S.-based.
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingEight">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="true" aria-controls="collapseEight">
                    How do you make money with crypto app?
                </button>
              </h2>
              <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                    This is the most common way of earning money from crypto currencies. Investors buy coins such as Bitcoin, Litecoin, and Ethereum, Ripple, and more and wait until their value rises.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingNine">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                  Q. What regulation and requirements govern bitcoin?
                </button>
              </h2>
              <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                  A cryptocurrency is a digital currency, which is an alternative form of payment created using encryption algorithms.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTen">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                  Q. What is the biggest problem with cryptocurrency?
                </button>
              </h2>
              <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample2">
                <div class="accordion-body">
                  A cryptocurrency is a digital currency, which is an alternative form of payment created using encryption algorithms.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="fugu--circle-shape circle-five">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
    <div class="fugu--circle-shape circle-six">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
    <div class="fugu--circle-shape circle-seven">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
  </div>
  <!-- End faq section -->
  <div class="fugu--cta-section">
    <div class="container">
      <div class="fugu--cta-wrap">
        <div class="row">
          <div class="col-lg-6">
            <div class="fugu--cta-thumb wow fadeInUpX" data-wow-delay=".10s">
              <img src="{{ asset('/public/assets') }}/images/all-img/v5/cta-thumb.png" alt="">
            </div>
          </div>
          <div class="col-lg-6 d-flex align-items-center">
            <div class="fugu--default-content">
              <h2>Ready to Start Trading?</h2>
              <p>Sign up now and join the revolution in cryptocurrency trading.</p>
              {{-- <div class="fugu--newsletter fugu--newsletter2"> --}}
                {{-- <input type="email" placeholder="Type your email here"> --}}
                <a href="{{ url('/crypto-exchange/create') }}" class="fugu--btn bg-primary text-white active">Get Started</a>
              {{-- </div> --}}
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="fugu--circle-shape circle-eight">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
    <div class="fugu--circle-shape circle-nine">
      <img src="{{ asset('/public/assets') }}/images/all-img/shapes-round.png" alt="">
      <div class="waves wave-1"></div>
    </div>
  </div>
  <!-- End cta section -->
  <div class="fugu-go-top">
    <img src="{{ asset('/public/assets') }}/images/svg/arrow-black-right.svg" alt="">
  </div>
@endsection