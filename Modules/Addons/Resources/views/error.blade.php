<link rel="stylesheet" type="text/css" href="{{ asset('Modules\Addons\Resources\assets\css\addon.css') }}">
<?php 
  $addons = \Modules\Addons\Entities\Addon::all();
  $numberOfAddons = count(array_filter($addons, function($addon) { return !$addon->get('core'); }));
?>

@if(session('AddonMessage'))
  <div class="addon-alert addon-alert-{{ (session('AddonStatus') == 'success') ? 'success' : 'danger' }}">
    <span class="addon-alert-closebtn">&times;</span>  
    <strong>{{ session('AddonMessage') }}</strong>
  </div>
@endif

@if($errors->any())
  @foreach($errors->all() as $error)
    <div class="addon-alert addon-alert-danger">
      <span class="addon-alert-closebtn">&times;</span>  
      <strong>{{ $error }}</strong>
    </div>
  @endforeach
@endif


<script src="{{ asset('Modules/Addons/Resources/assets/js/addons.min.js') }}"></script>