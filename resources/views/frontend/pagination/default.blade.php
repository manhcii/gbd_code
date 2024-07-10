@if ($paginator->hasPages())
<div class="pagination-list">
    <ul class="pagination clearfix">

      @if ($paginator->onFirstPage())
      <li  aria-disabled="true" aria-label="@lang('pagination.previous')">
        <a >
          <span aria-hidden="true">«</span>
        </a>
      </li>
    @else
      <li>
        <a  href="{{ $paginator->previousPageUrl() }}" rel="prev"
          aria-label="@lang('pagination.previous')">
          <span aria-hidden="true">«</span>
        </a>
      </li>
    @endif

    {{-- Pagination Elements --}}
    @foreach ($elements as $element)
      {{-- "Three Dots" Separator --}}
      @if (is_string($element))
        <li><a >{{ $element }}</a></li>
      @endif

      {{-- Array Of Links --}}
      @if (is_array($element))
        @foreach ($element as $page => $url)
          @if ($page == $paginator->currentPage())
            <li class="page-item active"><a >{{ $page }}</a>
            </li>
          @else
            <li><a  href="{{ $url }}">{{ $page }}</a>
            </li>
          @endif
        @endforeach
      @endif
    @endforeach

    {{-- Next Page Link --}}
    @if ($paginator->hasMorePages())
      <li>
        <a  href="{{ $paginator->nextPageUrl() }}" rel="next"
          aria-label="@lang('pagination.next')">
          <span aria-hidden="true">»</span>
        </a>
      </li>
    @else
      <li class="disabled" aria-disabled="true" aria-label="@lang('pagination.next')">
        <a >
          <span aria-hidden="true">»</span>
        </a>
      </li>
    @endif

    </ul>
</div>
@endif