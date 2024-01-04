defmodule WorldEnglishBibleSiteParser do
  @moduledoc """
  `WorldEnglishBibleSiteParser` contains functions to help parse the World English
  Bible site. A zip file with all HTML and CSS for the site can be found
  here: https://ebible.org/web/.

  It was specifically created to speed the process of creating
  [Biblical](https://github.com/mattbatman/biblical).
  """

  @doc """
  parse_footnotes uses the Floki library to extract the footnotes div from a
  chapter HTML file.
  """
  def parse_footnotes(markup) do
    footnote_parent_selector = "div.footnote"

    {:ok, document} = Floki.parse_document(markup)

    document
    |> Floki.find(footnote_parent_selector)
    |> Floki.raw_html(pretty: true)
  end

  @doc """
  parse_chapter uses the Floki library to extract the chapter text markup and content
  from a chapter HTML file.
  """
  def parse_chapter(markup) do
    verses = "div.p"

    {:ok, document} = Floki.parse_document(markup)

    document
    |> Floki.find(verses)
    |> Floki.raw_html(pretty: true)
  end

  @doc """
  append_footnote_ids appends the given string to the ID attributes of a
  footnote.
  """
  def append_footnote_ids(markup, chapter_fragment) do
    String.replace(markup, "id=\"", "id=\"#{chapter_fragment}")
  end

  @doc """
  append_footnote_hrefs appends the given string to the href attributes of a
  footnote backlink.
  """
  def append_footnote_hrefs(markup, chapter_fragment) do
    String.replace(markup, "href=\"#", "href=\"##{chapter_fragment}")
  end
end
