<div class="lastpost background-link-container border-start border-2 lh-sm h-100" style="border-color: {./bgColor}!important;">
	{{{ each ./posts }}}
	{{{ if @first }}}
	<div component="category/posts" class="ps-3">
		<a class="background-link" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}"></a>
		<p class="mb-0">
			<a class="text-decoration-none" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(posts.user, "20px", true, "avatar-tooltip")}</a>
			<a class="permalink fw-bold text-reset text-decoration-none" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}">
				<span class="text-muted timeago text-xs" title="{../timestampISO}"></span>
				<br />
				<span class="post-content overflow-hidden text-truncate line-clamp-1">{./topic.title}</span>
			</a>
		</div>
		<div class="post-content text-xs text-break line-clamp-sm-2 lh-sm">
			{./content}
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ if !./posts.length }}}
	<div component="category/posts" class="ps-2">
		<div class="post-content overflow-hidden text-xs">
			[[category:no_new_posts]]
		</div>
	</div>
	{{{ end }}}
</div>
