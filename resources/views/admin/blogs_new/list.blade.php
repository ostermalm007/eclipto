@extends('admin.layouts.app')
@section('title', __('Blogs'))

@section('head_style')
    {{-- <!-- dataTables -->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css') }}"> --}}
@endsection

@section('buttons')
  @if(Common::has_permission(auth('admin')->user()->id, 'add_page'))
    <a class="btn btn-primary rounded-full float-right" href="{{  url(config('adminPrefix')."/blog/add") }}">{{ __('Add Blog') }}</a>
  @endif
@endsection

@section('breadcrumbs')
  <li class="before:content-['/'] ltr:before:mr-1 rtl:before:ml-1">
    <span>Blogs</span>
  </li>
@endsection

@section('page_content')

  <!-- Main content -->
  {{-- <div class="col-md-3 settings_bar_gap">
      @include('admin.common.settings_bar')
  </div> --}}
  {{-- {!! $dataTable->table(['class' => 'table table-striped table-hover dt-responsive', 'width' => '100%', 'cellspacing' => '0']) !!} --}}
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body table-responsive f-14">
          <table class="table table-striped table-hover dt-responsive" id="dataTableBuilder" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th title="Title">Title</th>
                <th title="Image">Image</th>
                <th title="Video">Video</th>
                <th title="Url">Url</th>
                <th title="Status">Status</th>
                <th title="Action">Action</th>
              </tr>
            </thead>
            <tbody>
              @forelse($rows as $row)
                <tr>
                  <td>{{ $row['title'] }}</td>
                  <td>
                    <a href="{{ url('/blog/'.$row['url']) }}" target="_blank">
                      <img style="height:30px" src="{{ asset('public/storage/'.$row['image']) }}">
                    </a>
                  </td>
                  <td>
                    @if(!empty($row['video']))
                      <video style="height:30px" controls src="{{ asset('public/storage/'.$row['video']) }}"></video>
                    @endif
                  </td>
                  <td>
                    <a target="_blank" class="text-primary hover:underline" href="{{ url('/blog/'.$row['url']) }}">
                      {{ $row['url'] }}
                    </a>
                  </td>
                  <td>
                    <span class="badge bg-{{ $row['status']=='active'?'success':'danger' }}">{{ $row['status'] }}</span>
                  </td>
                  <td>
                    <a href="{{ url(config('adminPrefix') . '/blog/edit/' . $row['id']) }}" class="btn btn-xs btn-primary">
                      <i class="fa fa-edit"></i> Edit
                    </a>
                    <a href="{{ url(config('adminPrefix') . '/blog/delete/' . $row['id']) }}" class="btn btn-xs btn-danger delete-warning">
                      <i class="fa fa-trash"></i> Delete
                    </a>
                  </td>
                </tr>
              @empty 

              @endforelse
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  {{-- <div x-data="contacts">
    <div class="flex flex-wrap items-center justify-between gap-4">
        <h2 class="text-xl">Contacts</h2>
        <div class="flex w-full flex-col gap-4 sm:w-auto sm:flex-row sm:items-center sm:gap-3">
            <div class="flex gap-3">
                <div>
                    <button type="button" class="btn btn-primary" @click="editUser">
                        <svg
                            width="24"
                            height="24"
                            viewBox="0 0 24 24"
                            fill="none"
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-5 w-5 ltr:mr-2 rtl:ml-2"
                        >
                            <circle cx="10" cy="6" r="4" stroke="currentColor" stroke-width="1.5" />
                            <path
                                opacity="0.5"
                                d="M18 17.5C18 19.9853 18 22 10 22C2 22 2 19.9853 2 17.5C2 15.0147 5.58172 13 10 13C14.4183 13 18 15.0147 18 17.5Z"
                                stroke="currentColor"
                                stroke-width="1.5"
                            />
                            <path
                                d="M21 10H19M19 10H17M19 10L19 8M19 10L19 12"
                                stroke="currentColor"
                                stroke-width="1.5"
                                stroke-linecap="round"
                            />
                        </svg>
                        Add Contact
                    </button>
                    <div class="fixed inset-0 z-[999] hidden overflow-y-auto bg-[black]/60" :class="addContactModal && '!block'">
                        <div class="flex min-h-screen items-center justify-center px-4" @click.self="addContactModal = false">
                            <div
                                x-show="addContactModal"
                                x-transition
                                x-transition.duration.300
                                class="panel my-8 w-[90%] max-w-lg overflow-hidden rounded-lg border-0 p-0 md:w-full"
                            >
                                <button
                                    type="button"
                                    class="absolute top-4 text-white-dark hover:text-dark ltr:right-4 rtl:left-4"
                                    @click="addContactModal = false"
                                >
                                    <svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="24px"
                                        height="24px"
                                        viewBox="0 0 24 24"
                                        fill="none"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        class="h-6 w-6"
                                    >
                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg>
                                </button>
                                <h3
                                    class="bg-[#fbfbfb] py-3 text-lg font-medium ltr:pl-5 ltr:pr-[50px] rtl:pl-[50px] rtl:pr-5 dark:bg-[#121c2c]"
                                    x-text="params.id ? 'Edit Contact' : 'Add Contact'"
                                ></h3>
                                <div class="p-5">
                                    <form @submit.prevent="saveUser">
                                        <div class="mb-5">
                                            <label for="name">Name</label>
                                            <input
                                                id="name"
                                                type="text"
                                                placeholder="Enter Name"
                                                class="form-input"
                                                x-model="params.name"
                                            />
                                        </div>
                                        <div class="mb-5">
                                            <label for="email">Email</label>
                                            <input
                                                id="email"
                                                type="email"
                                                placeholder="Enter Email"
                                                class="form-input"
                                                x-model="params.email"
                                            />
                                        </div>
                                        <div class="mb-5">
                                            <label for="number">Phone Number</label>
                                            <input
                                                id="number"
                                                type="text"
                                                placeholder="Enter Phone Number"
                                                class="form-input"
                                                x-model="params.phone"
                                            />
                                        </div>
                                        <div class="mb-5">
                                            <label for="occupation">Occupation</label>
                                            <input
                                                id="occupation"
                                                type="text"
                                                placeholder="Enter Occupation"
                                                class="form-input"
                                                x-model="params.role"
                                            />
                                        </div>
                                        <div class="mb-5">
                                            <label for="address">Address</label>
                                            <textarea
                                                id="address"
                                                rows="3"
                                                placeholder="Enter Address"
                                                class="form-textarea min-h-[130px] resize-none"
                                                x-model="params.location"
                                            ></textarea>
                                        </div>
                                        <div class="mt-8 flex items-center justify-end">
                                            <button type="button" class="btn btn-outline-danger" @click="addContactModal = false">
                                                Cancel
                                            </button>
                                            <button
                                                type="submit"
                                                class="btn btn-primary ltr:ml-4 rtl:mr-4"
                                                x-text="params.id ? 'Update' : 'Add'"
                                            ></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <button
                        type="button"
                        class="btn btn-outline-primary p-2"
                        :class="{ 'bg-primary text-white': displayType === 'list' }"
                        @click="setDisplayType('list')"
                    >
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5">
                            <path
                                d="M2 5.5L3.21429 7L7.5 3"
                                stroke="currentColor"
                                stroke-width="1.5"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                            />
                            <path
                                opacity="0.5"
                                d="M2 12.5L3.21429 14L7.5 10"
                                stroke="currentColor"
                                stroke-width="1.5"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                            />
                            <path
                                d="M2 19.5L3.21429 21L7.5 17"
                                stroke="currentColor"
                                stroke-width="1.5"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                            />
                            <path d="M22 19L12 19" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" />
                            <path opacity="0.5" d="M22 12L12 12" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" />
                            <path d="M22 5L12 5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" />
                        </svg>
                    </button>
                </div>
                <div>
                    <button
                        type="button"
                        class="btn btn-outline-primary p-2"
                        :class="{ 'bg-primary text-white': displayType === 'grid' }"
                        @click="setDisplayType('grid')"
                    >
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5">
                            <path
                                opacity="0.5"
                                d="M2.5 6.5C2.5 4.61438 2.5 3.67157 3.08579 3.08579C3.67157 2.5 4.61438 2.5 6.5 2.5C8.38562 2.5 9.32843 2.5 9.91421 3.08579C10.5 3.67157 10.5 4.61438 10.5 6.5C10.5 8.38562 10.5 9.32843 9.91421 9.91421C9.32843 10.5 8.38562 10.5 6.5 10.5C4.61438 10.5 3.67157 10.5 3.08579 9.91421C2.5 9.32843 2.5 8.38562 2.5 6.5Z"
                                stroke="currentColor"
                                stroke-width="1.5"
                            />
                            <path
                                opacity="0.5"
                                d="M13.5 17.5C13.5 15.6144 13.5 14.6716 14.0858 14.0858C14.6716 13.5 15.6144 13.5 17.5 13.5C19.3856 13.5 20.3284 13.5 20.9142 14.0858C21.5 14.6716 21.5 15.6144 21.5 17.5C21.5 19.3856 21.5 20.3284 20.9142 20.9142C20.3284 21.5 19.3856 21.5 17.5 21.5C15.6144 21.5 14.6716 21.5 14.0858 20.9142C13.5 20.3284 13.5 19.3856 13.5 17.5Z"
                                stroke="currentColor"
                                stroke-width="1.5"
                            />
                            <path
                                d="M2.5 17.5C2.5 15.6144 2.5 14.6716 3.08579 14.0858C3.67157 13.5 4.61438 13.5 6.5 13.5C8.38562 13.5 9.32843 13.5 9.91421 14.0858C10.5 14.6716 10.5 15.6144 10.5 17.5C10.5 19.3856 10.5 20.3284 9.91421 20.9142C9.32843 21.5 8.38562 21.5 6.5 21.5C4.61438 21.5 3.67157 21.5 3.08579 20.9142C2.5 20.3284 2.5 19.3856 2.5 17.5Z"
                                stroke="currentColor"
                                stroke-width="1.5"
                            />
                            <path
                                d="M13.5 6.5C13.5 4.61438 13.5 3.67157 14.0858 3.08579C14.6716 2.5 15.6144 2.5 17.5 2.5C19.3856 2.5 20.3284 2.5 20.9142 3.08579C21.5 3.67157 21.5 4.61438 21.5 6.5C21.5 8.38562 21.5 9.32843 20.9142 9.91421C20.3284 10.5 19.3856 10.5 17.5 10.5C15.6144 10.5 14.6716 10.5 14.0858 9.91421C13.5 9.32843 13.5 8.38562 13.5 6.5Z"
                                stroke="currentColor"
                                stroke-width="1.5"
                            />
                        </svg>
                    </button>
                </div>
            </div>

            <div class="relative">
                <input
                    type="text"
                    placeholder="Search Contacts"
                    class="peer form-input py-2 ltr:pr-11 rtl:pl-11"
                    x-model="searchUser"
                    @keyup="searchContacts"
                />
                <div class="absolute top-1/2 -translate-y-1/2 peer-focus:text-primary ltr:right-[11px] rtl:left-[11px]">
                    <svg class="mx-auto" width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="11.5" cy="11.5" r="9.5" stroke="currentColor" stroke-width="1.5" opacity="0.5"></circle>
                        <path d="M18.5 18.5L22 22" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="panel mt-5 overflow-hidden border-0 p-0">
        <template x-if="displayType === 'list'">
            <div class="table-responsive">
                <table class="table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Location</th>
                            <th>Phone</th>
                            <th class="!text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <template x-for="contact in filterdContactsList" :key="contact.id">
                            <tr>
                                <td>
                                    <div class="flex w-max items-center">
                                        <!-- <div class="flex-none mr-3">
                                <div class="p-1 bg-white-dark/30 rounded-full"><img class="h-8 w-8 rounded-full object-cover" src="assets/images/user-profile.jpeg" /></div>
                            </div> -->
                                        <div x-show="contact.path" class="w-max">
                                            <img
                                                :src="`assets/images/${contact.path}`"
                                                class="h-8 w-8 rounded-full object-cover ltr:mr-2 rtl:ml-2"
                                                alt="avatar"
                                            />
                                        </div>
                                        <div
                                            x-show="!contact.path && contact.name"
                                            class="grid h-8 w-8 place-content-center rounded-full bg-primary text-sm font-semibold text-white ltr:mr-2 rtl:ml-2"
                                            x-text="contact.name.charAt(0) + '' + contact.name.charAt(contact.name.indexOf(' ') + 1)"
                                        ></div>
                                        <div
                                            x-show="!contact.path && !contact.name"
                                            class="rounded-full border border-gray-300 p-2 ltr:mr-2 rtl:ml-2 dark:border-gray-800"
                                        >
                                            <svg
                                                width="24"
                                                height="24"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-4.5 w-4.5"
                                            >
                                                <circle cx="12" cy="6" r="4" stroke="currentColor" stroke-width="1.5"></circle>
                                                <ellipse
                                                    opacity="0.5"
                                                    cx="12"
                                                    cy="17"
                                                    rx="7"
                                                    ry="4"
                                                    stroke="currentColor"
                                                    stroke-width="1.5"
                                                ></ellipse>
                                            </svg>
                                        </div>
                                        <div x-text="contact.name"></div>
                                    </div>
                                </td>
                                <td x-text="contact.email"></td>
                                <td x-text="contact.location" class="whitespace-nowrap"></td>
                                <td x-text="contact.phone" class="whitespace-nowrap"></td>
                                <td>
                                    <div class="flex items-center justify-center gap-4">
                                        <button type="button" class="btn btn-sm btn-outline-primary" @click="editUser(contact)">
                                            Edit
                                        </button>
                                        <button type="button" class="btn btn-sm btn-outline-danger" @click="deleteUser(contact)">
                                            Delete
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </template>
                    </tbody>
                </table>
            </div>
        </template>
    </div>
    <template x-if="displayType === 'grid'">
        <div class="my-5 grid w-full grid-cols-1 gap-6 sm:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4">
            <template x-for="contact in filterdContactsList" :key="contact.id">
                <div class="relative overflow-hidden rounded-md bg-white text-center shadow dark:bg-[#1c232f]">
                    <div class="rounded-t-md bg-white/40 bg-[url('../images/notification-bg.png')] bg-cover bg-center p-6 pb-0">
                        <template x-if="contact.path">
                            <img class="mx-auto max-h-40 w-4/5 object-contain" :src="`assets/images/${contact.path}`" />
                        </template>
                    </div>
                    <div class="relative -mt-10 px-6 pb-24">
                        <div class="rounded-md bg-white px-2 py-4 shadow-md dark:bg-gray-900">
                            <div class="text-xl" x-text="contact.name"></div>
                            <div class="text-white-dark" x-text="contact.role"></div>
                            <div class="mt-6 flex flex-wrap items-center justify-between gap-3">
                                <div class="flex-auto">
                                    <div class="text-info" x-text="contact.posts"></div>
                                    <div>Posts</div>
                                </div>
                                <div class="flex-auto">
                                    <div class="text-info" x-text="contact.following"></div>
                                    <div>Following</div>
                                </div>
                                <div class="flex-auto">
                                    <div class="text-info" x-text="contact.followers"></div>
                                    <div>Followers</div>
                                </div>
                            </div>
                            <div class="mt-4">
                                <ul class="flex items-center justify-center space-x-4 rtl:space-x-reverse">
                                    <li>
                                        <a href="javascript:;" class="btn btn-outline-primary h-7 w-7 rounded-full p-0">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                width="24px"
                                                height="24px"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="h-4 w-4"
                                            >
                                                <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="btn btn-outline-primary h-7 w-7 rounded-full p-0">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                width="24px"
                                                height="24px"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="h-4 w-4"
                                            >
                                                <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
                                                <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                                <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="btn btn-outline-primary h-7 w-7 rounded-full p-0">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                width="24px"
                                                height="24px"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="h-4 w-4"
                                            >
                                                <path
                                                    d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"
                                                ></path>
                                                <rect x="2" y="9" width="4" height="12"></rect>
                                                <circle cx="4" cy="4" r="2"></circle>
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="btn btn-outline-primary h-7 w-7 rounded-full p-0">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                width="24px"
                                                height="24px"
                                                viewBox="0 0 24 24"
                                                fill="none"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                class="h-4 w-4"
                                            >
                                                <path
                                                    d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"
                                                ></path>
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="mt-6 grid grid-cols-1 gap-4 ltr:text-left rtl:text-right">
                            <div class="flex items-center">
                                <div class="flex-none ltr:mr-2 rtl:ml-2">Email :</div>
                                <div class="truncate text-white-dark" x-text="contact.email"></div>
                            </div>
                            <div class="flex items-center">
                                <div class="flex-none ltr:mr-2 rtl:ml-2">Phone :</div>
                                <div class="text-white-dark" x-text="contact.phone"></div>
                            </div>
                            <div class="flex items-center">
                                <div class="flex-none ltr:mr-2 rtl:ml-2">Address :</div>
                                <div class="text-white-dark" x-text="contact.location"></div>
                            </div>
                        </div>
                    </div>
                    <div class="absolute bottom-0 mt-6 flex w-full gap-4 p-6 ltr:left-0 rtl:right-0">
                        <button type="button" class="btn btn-outline-primary w-1/2" @click="editUser(contact)">Edit</button>
                        <button type="button" class="btn btn-outline-danger w-1/2" @click="deleteUser(contact)">Delete</button>
                    </div>
                </div>
            </template>
        </div>
    </template>
  </div> --}}





@endsection

@section('extra_body_scripts')

  {{-- <script>
    document.addEventListener('alpine:init', () => {
      //contacts
      Alpine.data('contacts', () => ({
        defaultParams: {
            id: null,
            name: '',
            email: '',
            role: '',
            phone: '',
            location: '',
        },
        displayType: 'list',
        addContactModal: false,
        params: {
            id: null,
            name: '',
            email: '',
            role: '',
            phone: '',
            location: '',
        },
        filterdContactsList: [],
        searchUser: '',
        contactList: [
            {
                id: 1,
                path: 'profile-35.png',
                name: 'Alan Green',
                role: 'Web Developer',
                email: 'alan@mail.com',
                location: 'Boston, USA',
                phone: '+1 202 555 0197',
                posts: 25,
                followers: '5K',
                following: 500,
            },
            {
                id: 2,
                path: 'profile-35.png',
                name: 'Linda Nelson',
                role: 'Web Designer',
                email: 'linda@mail.com',
                location: 'Sydney, Australia',
                phone: '+1 202 555 0170',
                posts: 25,
                followers: '21.5K',
                following: 350,
            },
            {
                id: 3,
                path: 'profile-35.png',
                name: 'Lila Perry',
                role: 'UX/UI Designer',
                email: 'lila@mail.com',
                location: 'Miami, USA',
                phone: '+1 202 555 0105',
                posts: 20,
                followers: '21.5K',
                following: 350,
            },
            {
                id: 4,
                path: 'profile-35.png',
                name: 'Andy King',
                role: 'Project Lead',
                email: 'andy@mail.com',
                location: 'Tokyo, Japan',
                phone: '+1 202 555 0194',
                posts: 25,
                followers: '21.5K',
                following: 300,
            },
            {
                id: 5,
                path: 'profile-35.png',
                name: 'Jesse Cory',
                role: 'Web Developer',
                email: 'jesse@mail.com',
                location: 'Edinburgh, UK',
                phone: '+1 202 555 0161',
                posts: 30,
                followers: '20K',
                following: 350,
            },
            {
                id: 6,
                path: 'profile-35.png',
                name: 'Xavier',
                role: 'UX/UI Designer',
                email: 'xavier@mail.com',
                location: 'New York, USA',
                phone: '+1 202 555 0155',
                posts: 25,
                followers: '21.5K',
                following: 350,
            },
            {
                id: 7,
                path: 'profile-35.png',
                name: 'Susan',
                role: 'Project Manager',
                email: 'susan@mail.com',
                location: 'Miami, USA',
                phone: '+1 202 555 0118',
                posts: 40,
                followers: '21.5K',
                following: 350,
            },
            {
                id: 8,
                path: 'profile-35.png',
                name: 'Raci Lopez',
                role: 'Web Developer',
                email: 'traci@mail.com',
                location: 'Edinburgh, UK',
                phone: '+1 202 555 0135',
                posts: 25,
                followers: '21.5K',
                following: 350,
            },
            {
                id: 9,
                path: 'profile-35.png',
                name: 'Steven Mendoza',
                role: 'HR',
                email: 'sokol@verizon.net',
                location: 'Monrovia, US',
                phone: '+1 202 555 0100',
                posts: 40,
                followers: '21.8K',
                following: 300,
            },
            {
                id: 10,
                path: 'profile-35.png',
                name: 'James Cantrell',
                role: 'Web Developer',
                email: 'sravani@comcast.net',
                location: 'Michigan, US',
                phone: '+1 202 555 0134',
                posts: 100,
                followers: '28K',
                following: 520,
            },
            {
                id: 11,
                path: 'profile-35.png',
                name: 'Reginald Brown',
                role: 'Web Designer',
                email: 'drhyde@gmail.com',
                location: 'Entrimo, Spain',
                phone: '+1 202 555 0153',
                posts: 35,
                followers: '25K',
                following: 500,
            },
            {
                id: 12,
                path: 'profile-35.png',
                name: 'Stacey Smith',
                role: 'Chief technology officer',
                email: 'maikelnai@optonline.net',
                location: 'Lublin, Poland',
                phone: '+1 202 555 0115',
                posts: 21,
                followers: '5K',
                following: 200,
            },
        ],

        init() {
            this.searchContacts();
        },

        searchContacts() {
            this.filterdContactsList = this.contactList.filter((d) => d.name.toLowerCase().includes(this.searchUser.toLowerCase()));
        },

        editUser(user) {
            this.params = this.defaultParams;
            if (user) {
                this.params = JSON.parse(JSON.stringify(user));
            }

            this.addContactModal = true;
        },

        saveUser() {
            if (!this.params.name) {
                this.showMessage('Name is required.', 'error');
                return true;
            }
            if (!this.params.email) {
                this.showMessage('Email is required.', 'error');
                return true;
            }
            if (!this.params.phone) {
                this.showMessage('Phone is required.', 'error');
                return true;
            }
            if (!this.params.role) {
                this.showMessage('Occupation is required.', 'error');
                return true;
            }

            if (this.params.id) {
                //update user
                let user = this.contactList.find((d) => d.id === this.params.id);
                user.name = this.params.name;
                user.email = this.params.email;
                user.role = this.params.role;
                user.phone = this.params.phone;
                user.location = this.params.location;
            } else {
                //add user
                let maxUserId = this.contactList.length
                    ? this.contactList.reduce((max, character) => (character.id > max ? character.id : max), this.contactList[0].id)
                    : 0;

                let user = {
                    id: maxUserId + 1,
                    path: 'profile-35.png',
                    name: this.params.name,
                    email: this.params.email,
                    role: this.params.role,
                    phone: this.params.phone,
                    location: this.params.location,
                    posts: 20,
                    followers: '5K',
                    following: 500,
                };
                this.contactList.splice(0, 0, user);
                this.searchContacts();
            }

            this.showMessage('User has been saved successfully.');
            this.addContactModal = false;
        },

        deleteUser(user) {
            this.contactList = this.contactList.filter((d) => d.id != user.id);
            // this.ids = this.ids.filter((d) => d != user.id);
            this.searchContacts();
            this.showMessage('User has been deleted successfully.');
        },

        setDisplayType(type) {
            this.displayType = type;
        },

        showMessage(msg = '', type = 'success') {
            const toast = window.Swal.mixin({
                toast: true,
                position: 'top',
                showConfirmButton: false,
                timer: 3000,
            });
            toast.fire({
                icon: type,
                title: msg,
                padding: '10px 20px',
            });
        },
      }));
    });
  </script> --}}

  <!-- jquery.dataTables js -->
  {{-- <script src="{{ asset('public/dist/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js') }}" type="text/javascript"></script>
  <script src="{{ asset('public/dist/plugins/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js') }}" type="text/javascript"></script>

  {!! $dataTable->scripts() !!} --}}
 
@endsection
