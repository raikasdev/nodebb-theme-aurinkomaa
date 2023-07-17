<li component="categories/category" data-cid="{./cid}" class="w-100 border-bottom py-3 py-lg-4 gap-1 d-flex flex-column flex-lg-row align-items-start category-{./cid} {./unread-class}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-sm-9{{{ end }}}">
		<div class="">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="flex-grow-1 d-flex flex-wrap gap-1">
			<h2 class="title text-break fs-4 fw-semibold m-0 tracking-tight w-100">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted text-sm w-100">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children row row-cols-1 row-cols-lg-2 g-2 w-100">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small">
					{{{ if ./link }}}
					<div class="d-flex align-items-start gap-1">
						<i class="fa fa-fw fa-caret-right text-primary mt-1"></i>
						<a href="{./link}" class="text-reset fw-semibold">{./name}</a>
					</div>
					{{{ else }}}
					<div class="w-100 d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-md-7 col-sm-9{{{ end }}}">
						<div class="">
						{buildCategoryIcon(@value, "35px", "rounded-1")}
						</div>
						<div class="d-flex flex-column flex-1">
							<h3 class="fw-bold fs-6 mb-0">
								<!-- IMPORT partials/categories/link.tpl -->
							</h3>
							{{{ if ./descriptionParsed }}}
							<div class="description text-muted small">
								{./descriptionParsed}
							</div>
							{{{ end }}}
						</div>
					</div>
					{{{ end }}}
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>
	<div class="row col-sm-3 d-none d-md-flex align-self-start">
		{{{ if !./link }}}
		{{{ if !config.hideCategoryLastPost }}}
		<div class="teaser d-none d-sm-block" component="topic/teaser">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
		{{{ end }}}
	</div>
</li>