
<li class="nav-item mx-2 order-last order-md-first" title="[[global:login]]">
	<a class="nav-link nav-btn" href="{relative_path}/login">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-sign-in"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">[[global:login]]</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ if allowRegistration }}}
<li class="nav-item mx-2" title="[[global:register]]">
	<span class="text-xs visible-open">[[login:dont_have_account]]</span>
	<a class="nav-link nav-btn" href="{relative_path}/register">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-user-plus"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">[[global:register]]</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ end }}}

{{{ if config.searchEnabled }}}
<li component="sidebar/search" class="visible-open nav-item mx-2 search">
	<div class="d-flex gap-2 py-1 px-2 align-items-center" title="[[themes/harmony:login-register-to-search]]">
		<i class="fa fa-fw fa-search text-muted"></i>
		<span class="nav-text visible-open text-xs text-muted">[[themes/harmony:login-register-to-search]]</span>
	</a>
</a>
{{{ end }}}



