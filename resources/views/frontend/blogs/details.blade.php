@extends('frontend.layouts.master')

@section('styles')

@endsection

@section('scripts')


@endsection

@section('content')
<div class="fugu--inner-section dark-version fugu--single-blog">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 offset-lg-1">
        <div class="fugu--breadcrumbs-section">
          <div class="fugu--breadcrumbs-data">
            <h1>{{ $row['title'] }}</h1>
            <p>{{ $row['sub_title'] }}</p>
            <div class="fugu--blog-meta">
              <ul>
                {{-- <li> <a href=""> <img src="assets/images/svg2/calendar.svg" alt=""> Art & Analusis</a> </li> --}}
                <li class="text-white"> <img src="{{ asset('/public/') }}/assets/images/svg2/clock.svg" alt=""> {{ date('M d, Y',strtotime($row['created_at'])) }} </li>
              </ul>
            </div>
          </div>
        </div><!-- End breadcrumb -->
        <div class="fugu--single-blog-section">
          <img class="fugu--single-thumb" src="{{ asset('/public/storage/'.$row['image']) }}" alt="{{ $row['title'] }}">
         
          <div class="text-white">
            {!! $row['content'] !!}
          </div>

          @if(!empty($row['video']))
          <div class="text-center mt-5">
            <video class="fugu--single-thumb" height="400px" src="{{ asset('/public/storage/'.$row['video']) }}" alt="{{ $row['title'] }}" controls></video>
          </div>
          @endif
          
          {{-- <div class="fugu--blockquote">
            <blockquote>
              <div class="fugu--blockquote-icon">
                <img src="assets/images/all-img/blog2/quote.png" alt="">
              </div>
              “It is a form of digital ledger.” “The unique identity and ownership of an NFT are verifiable via the best blockchain ledger.” “An NFT is a unit of data stored on a digital ledger, called a blockchain, which can be sold and traded. Keep calm & collect your NFTs.”
              <div class="fugu--blockquote-user">
                <div class="fugu--blockquote-user-thumb">
                  <img src="assets/images/all-img/blog2/author1.png" alt="">
                </div>
                <div class="fugu--blockquote-user-data">
                  <h4>Esther Howard</h4>
                  <p>Founder @ Nexto</p>
                </div>
              </div>
            </blockquote>
          </div>
          <div class="fugu--tags fugu--tags2">
            <h4>Tags:</h4>
            <ul>
              <li><a href="">NFTs art</a></li>
              <li><a href="">Cryptocurrency</a></li>
              <li><a href="">Digital assets</a></li>
              <li><a href="">Creative works</a></li>
            </ul>
          </div>
          <div class="fugu--post-navigation-wrap">
            <a href="">
              <div class="fugu--post-navigation nav-previous">
                <div class="fugu--post-navigation-icon">
                  <img src="assets/images/svg2/arrow-left-white.svg" alt="">
                </div>
                <div class="fugu--post-navigation-data">
                  <p>Previous post</p>
                  <span>What does the NFT Ecosystem look like after the Boom?</span>
                </div>
              </div>
            </a>
            <a href="">
              <div class="fugu--post-navigation nav-next">
                <div class="fugu--post-navigation-data">
                  <p>Next post</p>
                  <span>Metaverse Launch: Let’s take a step back with data!</span>
                </div>
                <div class="fugu--post-navigation-icon">
                  <img src="assets/images/svg2/arrow-right-white.svg" alt="">
                </div>
              </div>
            </a>
          </div>

          <div class="fugu--comment-wrap">
            <h3>3 comments on this post:</h3>
            <div class="fugu--comment-list">
              <ul>
                <li>
                  <div class="fugu--comment-body">
                    <div class="fugu--comment-author">
                      <img src="assets/images/all-img/blog2/author1.png" alt="">
                    </div>
                    <div class="fugu--comment-meta">
                      <h5>Juliya Naik</h5>
                      <span>Dec. 25, 2022</span>
                      <p>The value that this server serves up is next level.I have just joined but wow I see myself always coming back refreshing hoping for more.My advice for anyone wanting to dabble in NFTs join without a moment.</p>
                    </div>
                    <a class="fugu--comment-reply" href="">Reply</a>
                  </div>
                </li>
                <li class="children">
                  <div class="fugu--comment-body">
                    <div class="fugu--comment-author">
                      <img src="assets/images/all-img/blog2/author2.png" alt="">
                    </div>
                    <div class="fugu--comment-meta">
                      <h5>Willium Marco</h5>
                      <span>Dec. 25, 2022</span>
                      <p>NFT Trading Academy is amazing. Ever since I was invited as an influencer this has been a crucial piece in terms of where I interact with the NFT Space and source knowledge.</p>
                    </div>
                    <a class="fugu--comment-reply" href="">Reply</a>
                  </div>
                </li>
                <li>
                  <div class="fugu--comment-body">
                    <div class="fugu--comment-author">
                      <img src="assets/images/all-img/blog2/author3.png" alt="">
                    </div>
                    <div class="fugu--comment-meta">
                      <h5> Robert fox</h5>
                      <span>Dec. 25, 2022</span>
                      <p>I have been using the service and it is great value for your money! With only one good call you can make back what you pay plus profit. It is a very organized discord and it has many channels talking about all NFT related topics. I highly recommend it!</p>
                    </div>
                    <a class="fugu--comment-reply" href="">Reply</a>
                  </div>
                </li>
              </ul>
            </div>

          </div>

          <div class="fugu--comment-respond-area">
            <h3>Leave a Reply:</h3>
            <p>Your email address will not be published. Required fields are marked*</p>
            <form action="#">
              <div class="row">
                <div class="col-lg-6">
                  <div class="fugu--comment-field">
                    <input type="text" placeholder="Your Name*">
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="fugu--comment-field">
                    <input type="text" placeholder="Your Email*">
                  </div>
                </div>
              </div>
              <div class="fugu--comment-field">
                <input type="url" placeholder="Website*">
              </div>
              <div class="fugu--comment-field">
                <textarea name="textarea" placeholder="Write your comment*"></textarea>
              </div>
              <button id="fugu--form-submit-btn" type="submit">Post Comment</button>
            </form>
          </div> --}}

        </div><!-- End nexto single blog -->
      </div>
    </div>


  </div>
  <div class="fugu--blog-shape1">
    <img src="assets/images/all-img/v3/shape2.png" alt="">
  </div>
  <div class="fugu--blog-shape3">
    <img src="assets/images/all-img/blog2/shape.png" alt="">
  </div>
</div>
@endsection