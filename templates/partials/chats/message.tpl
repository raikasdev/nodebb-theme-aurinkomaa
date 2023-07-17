<li component="chat/message" class="chat-message mx-2 pe-2 {{{ if messages.deleted }}} deleted{{{ end }}} {{{ if messages.newSet }}}border-top pt-3{{{ end }}}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
	<div class="message-header lh-1 d-flex align-items-center gap-2 text-sm {{{ if !messages.newSet }}}hidden{{{ end }}} pb-2">
		<a href="{config.relative_path}/user/{messages.fromUser.userslug}" class="text-decoration-none">{buildAvatar(messages.fromUser, "18px", true, "not-responsive")}</a>
		<span class="chat-user fw-semibold"><a href="{config.relative_path}/user/{messages.fromUser.userslug}">{messages.fromUser.displayname}</a></span>
		{{{ if messages.fromUser.banned }}}
		<span class="badge bg-danger">[[user:banned]]</span>
		{{{ end }}}
		{{{ if messages.fromUser.deleted }}}
		<span class="badge bg-danger">[[user:deleted]]</span>
		{{{ end }}}
		<span class="chat-timestamp text-muted ms-2 timeago" title="{messages.timestampISO}"></span>
		{{{ if messages.edited }}}
		<div class="text-muted ms-auto" title="[[global:edited-timestamp, {messages.editedISO}]]"><i class="fa fa-edit"></i></span></div>
		{{{ end }}}
	</div>
	<div class="message-body-wrapper hover-parent">
		<div component="chat/message/body" class="message-body ps-0 py-0 overflow-auto text-break">
			{messages.content}
		</div>

		{{{ if (isAdminOrGlobalMod || (!config.disableChatMessageEditing && messages.self)) }}}
		<div component="chat/message/controls" class="position-relative">
			<div class="btn-group border shadow-sm controls position-absolute bg-body hover-d-block end-0" style="bottom:1rem;">
				{{{ if (!config.disableChatMessageEditing && messages.self) }}}
				<button class="btn btn-sm btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
				<button class="btn btn-sm btn-link" data-action="delete"><i class="fa fa-trash"></i></button>
				<button class="btn btn-sm btn-link" data-action="restore"><i class="fa fa-repeat"></i></button>
				{{{ end }}}
				{{{ if isAdminOrGlobalMod }}}
				<button class="btn btn-sm btn-link chat-ip-button" title="[[modules:chat.show-ip]]"><i class="fa fa-info-circle"></i></button>
				{{{ end }}}
			</div>
		</div>
		{{{ end }}}
	</div>
</li>