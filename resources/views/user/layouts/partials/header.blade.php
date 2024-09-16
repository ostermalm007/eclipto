<nav class="navbar navbar sticky-top top-navbar bg-white p-0 " style="border-right:1px solid lightgray;z-index::999999">
    <a class="btn border-0 menu-svg" id="menu-btn">
        <svg width="20" height="14" viewBox="0 0 20 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1 7H19M1 1H19M1 13H13" stroke="" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
        </svg>
    </a>
    <div class="border-b-DF d-flex align-items-center w-100 h-70">
        <div class="input-group flex-nowrap search-fill">
            
        </div>

        <div class="color-parent form-check form-switch d-flex mr-33">
            <div class="switch d-flex align-items-center justify-content-center">
                
                <span class="moon-rtl">
                    {{-- {!! svgIcons('moon') !!} --}}
                </span>
                <div class="mx-10" id="switch">
                    {{-- <input class="form-check-input theme-check m-0" type="checkbox" id="flexSwitchCheckDefault"> --}}
                </div>
                <span class="moon-ltr">
                    {{-- {!! svgIcons('moon') !!} --}}
                </span>
            </div>
        </div>

        <div class="notification-drop p-0 d-flex align-items-center">
            <div class="item">
                <div class="d-flex align-items-center verification-alert">
                    <div class="d-flex align-items-center justify-content-center user-list">
                        <img src="{{ image(auth()->user()->picture, 'profile') }}" alt="{{ __('Profile') }}" class="img-fluid">
                    </div>
                    <div class="ml-12 d-flex align-items-center h-78 w-134">
                        <p class="mb-0 f-14 text-dark gilroy-Semibold">
                            {{-- {{ getColumnValue(auth()->user()) }} --}}
                            <b>id:</b> 768{{ auth()->user()->id }}
                        </p>
                        <span class="ml-13">
                            <svg width="9" height="5" viewBox="0 0 9 5" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M0.401158 0.234532C0.639812 -0.00412146 1.02675 -0.00412146 1.2654 0.234532L4.49995 3.46908L7.73449 0.234532C7.97315 -0.00412146 8.36008 -0.00412146 8.59873 0.234532C8.83739 0.473186 8.83739 0.86012 8.59873 1.09877L4.93207 4.76544C4.69341 5.00409 4.30648 5.00409 4.06783 4.76544L0.401158 1.09877C0.162505 0.86012 0.162505 0.473186 0.401158 0.234532Z" fill="#3F405B" />
                            </svg>
                        </span>
                    </div>
                </div>
                <ul class="open-notify open-drop bg-white">
                    <li class="d-flex align-items-center bg-secondary h-78 px-3">
                        <div class="d-flex align-items-center justify-content-center user-dp">
                            <img src="{{ image(auth()->user()->picture, 'profile') }}" alt="{{ __('Profile') }}" class="img-fluid">
                        </div>
                        <div class="ms-3 text-white">
                            <p class="mb-0 f-15 gilroy-medium text-white">{{ getColumnValue(auth()->user()) }}</p>
                            <p class="mb-0 f-13 mt-3p gilroy-regular text-info-100">{{ auth()->user()->email }}</p>
                        </div>
                    </li>
                    <li class="d-flex align-items-center">
                        <a href="{{ route('user.profiles.index') }}" class="f-13 gilroy-medium">
                            <svg width="15" height="17" viewBox="0 0 15 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M7.5 1.7C5.88918 1.7 4.58336 3.03195 4.58336 4.675C4.58336 6.31805 5.88918 7.65 7.5 7.65C9.11082 7.65 10.4166 6.31805 10.4166 4.675C10.4166 3.03195 9.11082 1.7 7.5 1.7ZM2.91671 4.675C2.91671 2.09307 4.96872 0 7.5 0C10.0313 0 12.0833 2.09307 12.0833 4.675C12.0833 7.25693 10.0313 9.35 7.5 9.35C4.96872 9.35 2.91671 7.25693 2.91671 4.675ZM5.27191 10.625C5.31946 10.625 5.36771 10.625 5.41669 10.625H9.58331C9.63229 10.625 9.68054 10.625 9.72809 10.625C10.7508 10.6246 11.4491 10.6243 12.0428 10.808C13.3745 11.22 14.4166 12.283 14.8205 13.6413C15.0006 14.2468 15.0003 14.9591 15 16.0023C14.9999 16.0508 14.9999 16.1 14.9999 16.15C14.9999 16.6194 14.6268 17 14.1666 17C13.7064 17 13.3333 16.6194 13.3333 16.15C13.3333 14.9019 13.3242 14.4663 13.2256 14.1348C12.9833 13.3198 12.358 12.682 11.559 12.4348C11.234 12.3342 10.8069 12.325 9.58331 12.325H5.41669C4.1931 12.325 3.76604 12.3342 3.44099 12.4348C2.642 12.682 2.01674 13.3198 1.77437 14.1348C1.67577 14.4663 1.66672 14.9019 1.66672 16.15C1.66672 16.6194 1.29363 17 0.833395 17C0.373162 17 6.93952e-05 16.6194 6.93952e-05 16.15C6.93952e-05 16.1 5.1514e-05 16.0508 3.39308e-05 16.0023C-0.000344456 14.9591 -0.000602846 14.2468 0.179484 13.6413C0.583439 12.283 1.62553 11.22 2.95719 10.808C3.55085 10.6243 4.24919 10.6246 5.27191 10.625Z" fill="currentColor" />
                            </svg>
                            <span class="ms-3">{{ __('View Profile') }}</span>
                        </a>
                    </li>
                   
                    <li class="d-flex align-items-center">
                        <a href="{{ route('user.setting.identitiy_verify') }}" class="f-13 gilroy-medium  verification-alert">
                            <svg width="17" height="15" viewBox="0 0 17 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M3.03788 0H1.82273V6.25H3.03788V0ZM10.4503 6.25H6.56183L6.07577 5.5625V4.3125L6.56183 3.75H10.4503L10.9364 4.375V5.625L10.4503 6.25ZM4.37455 10H0.486061L0 9.375V8.125L0.486061 7.5H4.37455L4.86061 8.125V9.375L4.37455 10ZM9.11365 0H7.8985V2.5H9.11365V0ZM7.8985 7.5H9.11365V15H7.8985V7.5ZM3.03788 11.25H1.82273V15H3.03788V11.25ZM12.6376 11.25H16.5139L17 10.625V9.4375L16.5139 8.8125H12.6376L12.1515 9.4375V10.625L12.6376 11.25ZM15.1894 0H13.9743V7.5H15.1894V0ZM13.9743 12.5H15.1894V15H13.9743V12.5Z" fill="currentColor" />
                            </svg>
                            <span class="ms-3">{{ __('Verifications') }}</span>
                        </a>
                    </li>
                    <li class="d-flex align-items-center border-top h-63">
                        <a href="{{ route('user.logout') }}" class="f-13 gilroy-medium">
                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.03109 3.01904e-07L4.9 6.3569e-07C5.2866 6.3569e-07 5.6 0.313401 5.6 0.700001C5.6 1.0866 5.2866 1.4 4.9 1.4H4.06C3.4604 1.4 3.05279 1.40054 2.73773 1.42629C2.43084 1.45136 2.27389 1.49681 2.16441 1.55259C1.90099 1.68681 1.68681 1.90099 1.55259 2.16441C1.49681 2.27389 1.45136 2.43084 1.42629 2.73773C1.40054 3.05279 1.4 3.46039 1.4 4.06V9.94C1.4 10.5396 1.40054 10.9472 1.42629 11.2623C1.45136 11.5692 1.49681 11.7261 1.55259 11.8356C1.68681 12.099 1.90099 12.3132 2.16441 12.4474C2.27389 12.5032 2.43084 12.5486 2.73773 12.5737C3.05279 12.5995 3.46039 12.6 4.06 12.6H4.9C5.2866 12.6 5.6 12.9134 5.6 13.3C5.6 13.6866 5.2866 14 4.9 14H4.03107C3.4676 14 3.00256 14 2.62372 13.9691C2.23025 13.9369 1.86856 13.8679 1.52883 13.6948C1.00197 13.4264 0.573628 12.998 0.305183 12.4712C0.132079 12.1314 0.0630838 11.7697 0.0309362 11.3763C-1.59696e-05 10.9974 -8.62687e-06 10.5324 3.01904e-07 9.96891V4.03109C-8.62687e-06 3.46761 -1.59696e-05 3.00256 0.0309363 2.62372C0.063084 2.23025 0.132079 1.86856 0.305183 1.52883C0.573629 1.00197 1.00197 0.573628 1.52883 0.305182C1.86856 0.132079 2.23025 0.0630838 2.62372 0.0309362C3.00256 -1.59696e-05 3.46761 -8.62687e-06 4.03109 3.01904e-07ZM9.30503 3.00503C9.57839 2.73166 10.0216 2.73166 10.295 3.00503L13.795 6.50503C14.0683 6.77839 14.0683 7.22161 13.795 7.49497L10.295 10.995C10.0216 11.2683 9.57839 11.2683 9.30503 10.995C9.03166 10.7216 9.03166 10.2784 9.30503 10.005L11.61 7.7H4.9C4.5134 7.7 4.2 7.3866 4.2 7C4.2 6.6134 4.5134 6.3 4.9 6.3H11.61L9.30503 3.99497C9.03166 3.72161 9.03166 3.27839 9.30503 3.00503Z" fill="currentColor" />
                            </svg>
                            <span class="ms-3">{{ __('Logout') }}</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>