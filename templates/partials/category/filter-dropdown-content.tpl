<button type="button" class="btn-ghost-sm d-flex gap-2 dropdown-toggle" data-bs-toggle="dropdown">
    {{{ if selectedCategory }}}
    <span class="category-item d-inline-flex align-items-center gap-1">
        {buildCategoryIcon(selectedCategory, "18px", "rounded-circle")}
        <span class="visible-md-inline visible-lg-inline fw-semibold">{selectedCategory.name}</span>
    </span>
    {{{ else }}}
    <i class="fa fa-fw fa-list link-primary"></i>
    <span class="visible-md-inline visible-lg-inline fw-semibold">[[unread:all_categories]]</span>{{{ end }}}
</button>
<div component="category-selector-search" class="hidden position-absolute">
    <input type="text" class="form-control form-control-sm" placeholder="[[search:type-to-search]]" autocomplete="off">
</div>
<ul component="category/list" class="dropdown-menu p-1 text-sm category-dropdown-menu" role="menu">
    <li role="presentation" class="category" data-cid="all">
        <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menu-item" href="{{{ if allCategoriesUrl }}}{config.relative_path}/{allCategoriesUrl}{{{ else }}}#{{{ end }}}">
            <div class="flex-grow-1">[[unread:all_categories]]</div>
            <i component="category/select/icon" class="flex-shrink-0 fa fa-fw fa-check {{{if selectedCategory}}}invisible{{{end}}}"></i>
        </a>
    </li>
    {{{each categoryItems}}}
    <li role="presentation" class="category {{{ if ../disabledClass }}}disabled{{{ end }}}" data-cid="{../cid}" data-parent-cid="{../parentCid}" data-name="{../name}">
        <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menu-item" href="#">
            {../level}
            <span component="category-markup" class="flex-grow-1" style="{{{ if ../match }}}font-weight: bold;{{{end}}}">
                <div class="category-item d-inline-flex align-items-center gap-1">
                    {{{ if ./icon }}}
                    {buildCategoryIcon(@value, "24px", "rounded-circle")}
                    {{{ end }}}
                    {./name}
                </div>
            </span>
            <i component="category/select/icon" class="flex-shrink-0 fa fa-fw fa-check {{{ if !../selected }}}invisible{{{ end }}}"></i>
        </a>
    </li>
    {{{end}}}
</ul>