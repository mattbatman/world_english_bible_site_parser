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
  append_ids appends the given string to the ID attributes of a
  footnote.
  """
  def append_ids(markup, chapter_fragment) do
    String.replace(markup, "id=\"", "id=\"#{chapter_fragment}")
  end

  @doc """
  append_footnote_hrefs appends the given string to the href attributes of a
  footnote backlink.
  """
  def append_hrefs(markup, chapter_fragment) do
    String.replace(markup, "href=\"#", "href=\"##{chapter_fragment}")
  end

  @doc """
  extract_chapter pulls the verse and footnote content, modifies the ID's and
  href's, and returns the chapter content and footnotes concatenated together.
  """
  def extract_chapter(markup, chapter_fragment) do
    chapter_markup = parse_chapter(markup)
    footnote_markup = parse_footnotes(markup)

    all_markup = chapter_markup <> footnote_markup

    all_markup
    |> append_ids(chapter_fragment)
    |> append_hrefs(chapter_fragment)
  end

  @doc """
  prepend_chapter_header prepends the chapter header to the given string.
  """
  def prepend_chapter_header(markup, chapter_fragment) do
    # TODO: prepend chapter header in markdown
  end

  @doc """
  extract_chapter_number takes the chapter fragment to be used in ID's and href's
  and returns just the number of the chapter.

  ## Examples

      iex> WorldEnglishBibleSiteParser.extract_chapter_number("GEN1")
      "1"
  """
  def extract_chapter_number(chapter_fragment) do
    String.replace(chapter_fragment, ~r/([a-zA-Z]+)(\d+)/, "\\2")
  end

  @doc """
  get_chapter_fragment takes a string of a chapter file and returns the
  string of that will be appended to ID's and href's.

  ## Examples

      iex> WorldEnglishBibleSiteParser.get_chapter_fragment("GEN01.htm")
      "GEN1"
  """

  def get_chapter_fragment(filename) do
    filename
    |> Path.basename(".htm")
    |> String.replace(~r/([a-zA-Z])(0+)(\d+)/, "\\1\\3")
  end

  @doc """
  read_html_files
  """
  def read_html_files() do
    all_content =
      System.get_env("FILES_DIR")
      |> File.ls!()
      |> Enum.filter(&(Path.extname(&1) == ".htm"))
      |> Enum.map(&read_file(&1))
      |> Enum.map(fn {file, content} ->
        # TODO: include appending chapter number and HTML header
        extract_chapter(content, get_chapter_fragment(file))
      end)
      |> Enum.join("\n")

    File.write(System.get_env("OUTPUT_DIR"), all_content)
  end

  @doc """
  read_file takes a string file path and returns the name of the file and its
  contents.
  """
  def read_file(file_path) do
    full_path = Path.join(System.get_env("FILES_DIR"), file_path)

    {:ok, content} = File.read(full_path)

    {file_path, content}
  end
end
