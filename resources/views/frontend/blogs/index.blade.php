@extends('frontend.layouts.master')

@section('styles')

@endsection

@section('scripts')


@endsection

@section('content')
<div class="fugu--inner-section dark-version">
  <div class="container">
    <div class="fugu--breadcrumbs-section">
      <div class="fugu--breadcrumbs-data center-content">
        <h1 class="wow fadeInUpX" data-wow-delay="0s">News & Blog</h1>
        <p class="wow fadeInUpX" data-wow-delay=".10s">Your source of market analysis, news, developments, and project reviews for the NFT ecosystem. Discover and keep up to date with the latest NFT news and events. Nexto is the best place to analyze, track and discover NFTs.</p>
        <form action="" method="GET" class="fugu--newsletter fugu--search wow fadeInUpX" data-wow-delay=".30s">
          <input type="text" name="search" value="{{ isset($_GET['search'])?$_GET['search']:'' }}" placeholder="Search...">
          <button type="submit" id="fugu--submit-btn">Search</button>
          <button id="fugu--search-btn"><img src="assets/images/svg2/search.svg" alt=""></button>
        </form>
      </div>
    </div>
    <!-- End breadcrumb -->
    {{-- <div class="fugu--blog-top-section">
      <div class="fugu--blog-top-wrap">
        <div class="fugu--blog-wrap">
          <div class="fugu--blog-thumb">
            <a href='/single-blog'>
              <img src="assets/images/all-img/blog2/dark/blog.png" alt="">
            </a>
            <div class="fugu--blog-badge">
              Art & Analysis
            </div>
          </div>
          <div class="fugu--blog-content">
            <div class="fugu--blog-date">
              <ul>
                <li><a href=""><img src="assets/images/svg2/calendar.svg" alt="">July 18, 2022</a></li>
                <li><a href=""><img src="assets/images/svg2/clock.svg" alt="">5 min read</a></li>
              </ul>
            </div>
            <div class="fugu--blog-title">
              <a href='/single-blog'>
                <h3>What does the NFT Ecosystem look like after the Boom?</h3>
              </a>
            </div>
            <p>It has now been 6 months since the NFT market saw indicators strongly shaken up, with additional over hype a month ago...</p>
            <div class="fugu--blog-user">
              <div class="fugu--blog-user-thumb">
                <img src="assets/images/all-img/blog2/author1.png" alt="">
              </div>
              <div class="fugu--blog-user-data">
                <span>Dianne Russell</span>
                <p>Author</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> --}}
    <!-- End blog top -->
    <div class="fugu--blog-filtering dark-version">
      <div class="fugu--section-title-wrap">
        <div class="fugu--default-content content-sm">
          <h2>Latest articles</h2>
        </div>
        <div class="fugu--portfolio-menu">
          {{-- <ul class="option-set clear-both" data-option-key="filter">
            <li class="active" data-option-value="*">
              <span>All</span>
            </li>
            <li class="" data-option-value=".analysis">
              <span>Art & Analysis</span>
            </li>
            <li class="" data-option-value=".collectible">
              <span>Collectible</span>
            </li>
            <li class="" data-option-value=".metaverse">
              <span>Metaverse</span>
            </li>
            <li class="" data-option-value=".utility">
              <span>Utility</span>
            </li>
          </ul> --}}
        </div>
      </div>
      <div class="fugu--portfolio-wrap" id="fugu--two-column">
        @forelse ($data as $row)
          
          <div class="collection-grid-item analysis wow fadeInUpX" data-wow-delay="0s">
            <div class="fugu--blog-wrap">
              <div class="fugu--blog-thumb">
                <a href='{{ url("/blog/".$row['url']) }}'>
                  <img src="{{ asset('/public/storage/'.$row['image']) }}" alt="{{ $row['title'] }}">
                </a>
                {{-- <div class="fugu--blog-badge">
                  Art & Analysis
                </div> --}}
              </div>
              <div class="fugu--blog-content">
                <div class="fugu--blog-date">
                  <ul>
                    <li class="text-white"><img src="{{ asset('/public/') }}/assets/images/svg2/calendar2.svg" alt="">{{ date('M d, Y',strtotime($row['created_at'])) }}</li>
                    {{-- <li><a href=""><img src="assets/images/svg2/clock.svg" alt="">5 min read</a></li> --}}
                  </ul>
                </div>
                <div class="fugu--blog-title">
                  <a href='{{ url("/blog/".$row['url']) }}'>
                    <h3>{{ $row['title'] }}</h3>
                  </a>
                </div>
                <p>{{ $row['sub_title'] }}</p>
                {{-- <div class="fugu--blog-user">
                  <div class="fugu--blog-user-thumb">
                    <img src="assets/images/all-img/blog2/author1.png" alt="">
                  </div>
                  <div class="fugu--blog-user-data">
                    <span>Dianne Russell</span>
                    <p>Author</p>
                  </div>
                </div> --}}
              </div>
            </div>
          </div>
        @empty
          
        @endforelse
        
      </div>
      <div class="fugo--pagination">
        {{-- <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#">

                <svg width="20" height="16" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M11.8333 1.58301L18.25 7.99967M18.25 7.99967L11.8333 14.4163M18.25 7.99967L1.75 7.99967" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
                <span>
                Prev 
              </span>
              </a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#">
                <span>
                Next 
              </span>
                <svg width="20" height="16" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M11.8333 1.58301L18.25 7.99967M18.25 7.99967L11.8333 14.4163M18.25 7.99967L1.75 7.99967" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                </svg>
              </a>
            </li>
          </ul>
        </nav> --}}
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