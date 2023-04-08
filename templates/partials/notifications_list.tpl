{{{ if !notifications.length }}}
<li class="no-notifs text-center p-4 d-flex flex-column">
	<div class="p-4"><i class="fa-solid fa-wind fs-2 text-muted"></i></div>
	<div class="text-xs fw-semibold text-muted">[[notifications:no_notifs]]</div>
</li>
{{{ end }}}

{{{ each notifications }}}
<li class="{./readClass} mb-2 p-1" data-nid="{./nid}" data-path="{./path}" {{{ if ./pid }}}data-pid="{./pid}"{{{ end }}}{{{ if ./tid }}}data-tid="{./tid}"{{{ end }}}>
	<div class="d-flex gap-1 justify-content-between">
		<div class="d-flex gap-0 flex-grow-1 align-items-start">
			{{{ if ./image }}}
			{{{ if ./from }}}
			<a class="btn-ghost-sm p-1 flex-grow-0 flex-shrink-0" href="{config.relative_path}/user/{./user.userslug}"><img class="avatar avatar-rounded" style="--avatar-size: 32px;" src="{./image}" /></a>
			{{{ end }}}
			{{{ else }}}
			<a class="btn-ghost-sm p-1 flex-grow-0 flex-shrink-0"  href="{config.relative_path}/user/{./user.userslug}"><div class="avatar avatar-rounded" style="--avatar-size: 32px; background-color: {./user.icon:bgColor};">{./user.icon:text}</div></a>
			{{{ end }}}
			<div class="d-flex flex-grow-1 flex-column align-items-start position-relative">
				<a href="{./path}" class="btn-ghost-sm d-inline-block text-reset text-break text-sm ff-sans stretched-link">
					{./bodyShort}
				</a>
				<div class="text-xs text-muted">{{{ if ./timeagoLong }}}{./timeagoLong}{{{ else }}}<span class="timeago" title="{./datetimeISO}"></span>{{{ end }}}</div>
			</div>
		</div>
		<div>
			{{{ if ./nid }}}
			<button class="mark-read btn-ghost-sm flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
				<i class="unread fa fa-2xs fa-circle text-primary {{{ if ./read }}}hidden{{{ end }}}"></i>
				<i class="read fa fa-2xs fa-circle-o text-secondary {{{ if !./read }}}hidden{{{ end }}}"></i>
			</button>
			{{{ end }}}
		</div>
	</div>
</li>
{{{end}}}
