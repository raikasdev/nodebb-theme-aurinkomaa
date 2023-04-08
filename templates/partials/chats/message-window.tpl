{{{ if !roomId }}}
<div class="text-center p-2">
	[[modules:chat.no_active]]
</div>
{{{ end }}}

{{{ if roomId }}}
<div component="chat/messages" class="expanded-chat d-flex flex-column h-100" data-roomid="{roomId}">
	<div component="chat/header" class="d-flex align-items-center px-md-3 gap-3">
		<a href="#" data-action="close" role="button" class="flex-shrink-0 d-flex d-md-none btn btn-outline align-text-top"><i class="fa fa-chevron-left"></i></a>
		<h5 class="members flex-grow-1 fw-semibold tracking-tight mb-0">
			{./chatWithMessage}
		</h5>

		<!-- IMPORT partials/chats/options.tpl -->
	</div>
	<hr class="text-muted opacity-25"/>
	<div class="row position-relative justify-content-center mx-5">
		<div component="chat/messages/scroll-up-alert" class="col-12 col-xl-6 position-absolute text-sm scroll-up-alert alert alert-info hidden d-none d-md-block" role="button" style="z-index: 1;">[[modules:chat.scroll-up-alert]]</div>
	</div>
	<ul class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<div component="chat/composer" class="d-flex flex-column flex-md-row gap-2 border-top pt-2 align-items-start align-items-md-end">
		<div class="w-100 flex-grow-1 position-relative input-group">
			<button component="chat/upload/button" class="btn btn-outline-primary btn-sm align-self-stretch px-3 px-md-2" type="button"><i class="fa fa-fw fa-upload"></i></button>
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder.mobile]]" class="form-control chat-input mousetrap" style="height:0;resize:none;"></textarea>
			<span component="chat/message/remaining" class="text-xs text-muted position-absolute me-5 mb-1 end-0 bottom-0">{maximumChatMessageLength}</span>
			<button class="btn btn-primary btn-sm align-self-stretch px-3 px-md-2" type="button" data-action="send"><i class="fa fa-fw fa-paper-plane"></i></button>
		</div>
		<form class="hidden" component="chat/upload" method="post" enctype="multipart/form-data">
			<input type="file" name="files[]" multiple class="hidden"/>
		</form>
	</div>
</div>
{{{ end }}}