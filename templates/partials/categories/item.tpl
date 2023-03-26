<li component="categories/category" data-cid="{./cid}" class="row clearfix category-{./cid}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-sm-9{{{ end }}}">
		<div class="">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="d-flex flex-column gap-1 flex-1">
			<h2 class="title fw-bold fs-4">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted small">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children row row-cols-2 g-3">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small">
					{{{ if ./link }}}
					<a href="{./link}">{./name}</a>
					{{{ else }}}
					<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-md-7 col-sm-9{{{ end }}}">
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
		<div class="col-md-7 col-sm-3 teaser d-none d-sm-block" component="topic/teaser">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
		{{{ end }}}
	</div>
</li>
