defmodule WorldEnglishBibleSiteParserTest do
  use ExUnit.Case
  doctest WorldEnglishBibleSiteParser
  import StringComparison

  @parsed_text """
  <!DOCTYPE html>
  <html lang="en">
  <head>
  <meta charset="UTF-8" />
  <link rel="stylesheet" href="gentiumplus.css" type="text/css" />
  <meta name="viewport" content="user-scalable=yes, initial-scale=1, minimum-scale=1, width=device-width"/>
  <title>World English Bible with Deuterocanon Genesis 1</title>
  <meta name="keywords" content="World English Bible with Deuterocanon, eng, Holy Bible, Scripture, Bible, Scriptures, New Testament, Old Testament, Gospel" />
  </head>
  <body>
  <ul class='tnav'>
  <li><a href='index.htm'>Genesis</a></li>
  <li><a href='FRT01.htm'>&lt;</a></li>
  <li><a href='GEN.htm'>1</a></li>
  <li><a href='GEN02.htm'>&gt;</a></li>
  </ul>
  <div class="main">
  <div class='mt2'>The First Book of Moses, </div><div class='mt3'>Commonly Called </div><div class='mt'>Genesis
  </div><div class='chapterlabel' id="V0"> 1</div><div class='p'> <span class="verse" id="V1">1&#160;</span>In the beginning, God<a href="#FN1" class="notemark">†<span class="popup"> The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).</span></a> created the heavens and the earth.  <span class="verse" id="V2">2&#160;</span>The earth was formless and empty. Darkness was on the surface of the deep and God’s Spirit was hovering over the surface of the waters. </div><div class='p'> <span class="verse" id="V3">3&#160;</span>God said, “Let there be light,” and there was light.  <span class="verse" id="V4">4&#160;</span>God saw the light, and saw that it was good. God divided the light from the darkness.  <span class="verse" id="V5">5&#160;</span>God called the light “day”, and the darkness he called “night”. There was evening and there was morning, the first day. </div><div class='p'> <span class="verse" id="V6">6&#160;</span>God said, “Let there be an expanse in the middle of the waters, and let it divide the waters from the waters.”  <span class="verse" id="V7">7&#160;</span>God made the expanse, and divided the waters which were under the expanse from the waters which were above the expanse; and it was so.  <span class="verse" id="V8">8&#160;</span>God called the expanse “sky”. There was evening and there was morning, a second day. </div><div class='p'> <span class="verse" id="V9">9&#160;</span>God said, “Let the waters under the sky be gathered together to one place, and let the dry land appear;” and it was so.  <span class="verse" id="V10">10&#160;</span>God called the dry land “earth”, and the gathering together of the waters he called “seas”. God saw that it was good.  <span class="verse" id="V11">11&#160;</span>God said, “Let the earth yield grass, herbs yielding seeds, and fruit trees bearing fruit after their kind, with their seeds in it, on the earth;” and it was so.  <span class="verse" id="V12">12&#160;</span>The earth yielded grass, herbs yielding seed after their kind, and trees bearing fruit, with their seeds in it, after their kind; and God saw that it was good.  <span class="verse" id="V13">13&#160;</span>There was evening and there was morning, a third day. </div><div class='p'> <span class="verse" id="V14">14&#160;</span>God said, “Let there be lights in the expanse of the sky to divide the day from the night; and let them be for signs to mark seasons, days, and years;  <span class="verse" id="V15">15&#160;</span>and let them be for lights in the expanse of the sky to give light on the earth;” and it was so.  <span class="verse" id="V16">16&#160;</span>God made the two great lights: the greater light to rule the day, and the lesser light to rule the night. He also made the stars.  <span class="verse" id="V17">17&#160;</span>God set them in the expanse of the sky to give light to the earth,  <span class="verse" id="V18">18&#160;</span>and to rule over the day and over the night, and to divide the light from the darkness. God saw that it was good.  <span class="verse" id="V19">19&#160;</span>There was evening and there was morning, a fourth day. </div><div class='p'> <span class="verse" id="V20">20&#160;</span>God said, “Let the waters abound with living creatures, and let birds fly above the earth in the open expanse of the sky.”  <span class="verse" id="V21">21&#160;</span>God created the large sea creatures and every living creature that moves, with which the waters swarmed, after their kind, and every winged bird after its kind. God saw that it was good.  <span class="verse" id="V22">22&#160;</span>God blessed them, saying, “Be fruitful, and multiply, and fill the waters in the seas, and let birds multiply on the earth.”  <span class="verse" id="V23">23&#160;</span>There was evening and there was morning, a fifth day. </div><div class='p'> <span class="verse" id="V24">24&#160;</span>God said, “Let the earth produce living creatures after their kind, livestock, creeping things, and animals of the earth after their kind;” and it was so.  <span class="verse" id="V25">25&#160;</span>God made the animals of the earth after their kind, and the livestock after their kind, and everything that creeps on the ground after its kind. God saw that it was good. </div><div class='p'> <span class="verse" id="V26">26&#160;</span>God said, “Let’s make man in our image, after our likeness. Let them have dominion over the fish of the sea, and over the birds of the sky, and over the livestock, and over all the earth, and over every creeping thing that creeps on the earth.”  <span class="verse" id="V27">27&#160;</span>God created man in his own image. In God’s image he created him; male and female he created them.  <span class="verse" id="V28">28&#160;</span>God blessed them. God said to them, “Be fruitful, multiply, fill the earth, and subdue it. Have dominion over the fish of the sea, over the birds of the sky, and over every living thing that moves on the earth.”  <span class="verse" id="V29">29&#160;</span>God said, “Behold,<a href="#FN2" class="notemark">‡<span class="popup"> “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.</span></a> I have given you every herb yielding seed, which is on the surface of all the earth, and every tree, which bears fruit yielding seed. It will be your food.  <span class="verse" id="V30">30&#160;</span>To every animal of the earth, and to every bird of the sky, and to everything that creeps on the earth, in which there is life, I have given every green herb for food;” and it was so. </div><div class='p'> <span class="verse" id="V31">31&#160;</span>God saw everything that he had made, and, behold, it was very good. There was evening and there was morning, a sixth day. </div><ul class='tnav'>
  <li><a href='index.htm'>Genesis</a></li>
  <li><a href='FRT01.htm'>&lt;</a></li>
  <li><a href='GEN.htm'>1</a></li>
  <li><a href='GEN02.htm'>&gt;</a></li>
  </ul>
  <div class="footnote">
  <hr />
  <p class="f" id="FN1"><span class="notemark">†</span><a class="notebackref" href="#V1">1:1</a>
  <span class="ft">The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).</span></p>
  <p class="f" id="FN2"><span class="notemark">‡</span><a class="notebackref" href="#V29">1:29</a>
  <span class="ft">“Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.</span></p>

  <hr />
  </div>
  <div class="copyright">
  <center><a href="webfaq.htm">Frequently Asked Questions</a> <a href="copyright.htm">The World English Bible is in the Public Domain. You may copy and share it freely.</a> <a href="index.htm">Downloads</a> <a href="https://eBible.org/cgi-bin/comment.cgi">Please report any typos you find.</a> <a href="https://mljohnson.org/partners/">Donations</a></center>
  <p align="center"><a href='copyright.htm'>Public Domain</a></p>
  </div>
  </div></body></html>
  """

  @replaced_text """
  <div class='p'>
  <span class="verse" id="GEN1V1">1&#160;</span>In the beginning, God<a href="#GEN1FN1" class="notemark">†<span class="popup"> The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).</span></a> created the heavens and the earth.  <span class="verse" id="GEN1V2">2&#160;</span>The earth was formless and empty. Darkness was on the surface of the deep and God’s Spirit was hovering over the surface of the waters.
  </div>
  <div class='p'> <span class="verse" id="GEN1V3">3&#160;</span>God said, “Let there be light,” and there was light.  <span class="verse" id="GEN1V4">4&#160;</span>God saw the light, and saw that it was good. God divided the light from the darkness.  <span class="verse" id="GEN1V5">5&#160;</span>God called the light “day”, and the darkness he called “night”. There was evening and there was morning, the first day.
  </div>
  <div class='p'> <span class="verse" id="GEN1V6">6&#160;</span>God said, “Let there be an expanse in the middle of the waters, and let it divide the waters from the waters.”  <span class="verse" id="GEN1V7">7&#160;</span>God made the expanse, and divided the waters which were under the expanse from the waters which were above the expanse; and it was so.  <span class="verse" id="GEN1V8">8&#160;</span>God called the expanse “sky”. There was evening and there was morning, a second day.
  </div>
  <div class='p'>
  <span class="verse" id="GEN1V9">9&#160;</span>God said, “Let the waters under the sky be gathered together to one place, and let the dry land appear;” and it was so.  <span class="verse" id="GEN1V10">10&#160;</span>God called the dry land “earth”, and the gathering together of the waters he called “seas”. God saw that it was good.  <span class="verse" id="GEN1V11">11&#160;</span>God said, “Let the earth yield grass, herbs yielding seeds, and fruit trees bearing fruit after their kind, with their seeds in it, on the earth;” and it was so.  <span class="verse" id="GEN1V12">12&#160;</span>The earth yielded grass, herbs yielding seed after their kind, and trees bearing fruit, with their seeds in it, after their kind; and God saw that it was good.  <span class="verse" id="GEN1V13">13&#160;</span>There was evening and there was morning, a third day.
  </div>
  <div class='p'> <span class="verse" id="GEN1V14">14&#160;</span>God said, “Let there be lights in the expanse of the sky to divide the day from the night; and let them be for signs to mark seasons, days, and years;  <span class="verse" id="GEN1V15">15&#160;</span>and let them be for lights in the expanse of the sky to give light on the earth;” and it was so.  <span class="verse" id="GEN1V16">16&#160;</span>God made the two great lights: the greater light to rule the day, and the lesser light to rule the night. He also made the stars.  <span class="verse" id="GEN1V17">17&#160;</span>God set them in the expanse of the sky to give light to the earth,  <span class="verse" id="GEN1V18">18&#160;</span>and to rule over the day and over the night, and to divide the light from the darkness. God saw that it was good.  <span class="verse" id="GEN1V19">19&#160;</span>There was evening and there was morning, a fourth day.
  </div>
  <div class='p'> <span class="verse" id="GEN1V20">20&#160;</span>God said, “Let the waters abound with living creatures, and let birds fly above the earth in the open expanse of the sky.”  <span class="verse" id="GEN1V21">21&#160;</span>God created the large sea creatures and every living creature that moves, with which the waters swarmed, after their kind, and every winged bird after its kind. God saw that it was good.  <span class="verse" id="GEN1V22">22&#160;</span>God blessed them, saying, “Be fruitful, and multiply, and fill the waters in the seas, and let birds multiply on the earth.”  <span class="verse" id="GEN1V23">23&#160;</span>There was evening and there was morning, a fifth day.
  </div>
  <div class='p'> <span class="verse" id="GEN1V24">24&#160;</span>God said, “Let the earth produce living creatures after their kind, livestock, creeping things, and animals of the earth after their kind;” and it was so.  <span class="verse" id="GEN1V25">25&#160;</span>God made the animals of the earth after their kind, and the livestock after their kind, and everything that creeps on the ground after its kind. God saw that it was good.
  </div>
  <div class='p'> <span class="verse" id="GEN1V26">26&#160;</span>God said, “Let’s make man in our image, after our likeness. Let them have dominion over the fish of the sea, and over the birds of the sky, and over the livestock, and over all the earth, and over every creeping thing that creeps on the earth.”  <span class="verse" id="GEN1V27">27&#160;</span>God created man in his own image. In God’s image he created him; male and female he created them.  <span class="verse" id="GEN1V28">28&#160;</span>God blessed them. God said to them, “Be fruitful, multiply, fill the earth, and subdue it. Have dominion over the fish of the sea, over the birds of the sky, and over every living thing that moves on the earth.”  <span class="verse" id="GEN1V29">29&#160;</span>God said, “Behold,<a href="#GEN1FN2" class="notemark">‡<span class="popup"> “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.</span></a> I have given you every herb yielding seed, which is on the surface of all the earth, and every tree, which bears fruit yielding seed. It will be your food.  <span class="verse" id="GEN1V30">30&#160;</span>To every animal of the earth, and to every bird of the sky, and to everything that creeps on the earth, in which there is life, I have given every green herb for food;” and it was so.
  </div>
  <div class='p'> <span class="verse" id="GEN1V31">31&#160;</span>God saw everything that he had made, and, behold, it was very good. There was evening and there was morning, a sixth day.
  </div>

  <div class="footnote">
  <hr />
  <p class="f" id="GEN1FN1"><span class="notemark">†</span><a class="notebackref" href="#GEN1V1">1:1</a>
  <span class="ft">The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).</span></p>
  <p class="f" id="GEN1FN2"><span class="notemark">‡</span><a class="notebackref" href="#GEN1V29">1:29</a>
  <span class="ft">“Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.</span></p>

  <hr />
  </div>
  """

  @end_footnote_markup """
  <div class="footnote">
    <hr/>
    <p class="f" id="GEN1FN1">
      <span class="notemark">
        †
      </span>
      <a class="notebackref" href="#GEN1V1">
        1:1
      </a>
      <span class="ft">
        The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).
      </span>
    </p>
    <p class="f" id="GEN1FN2">
      <span class="notemark">
        ‡
      </span>
      <a class="notebackref" href="#GEN1V29">
        1:29
      </a>
      <span class="ft">
        “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.
      </span>
    </p>
    <hr/>
  </div>
  """

  describe "footnote" do
    test "parse_footnotes returns the expected footnote markup" do
      copied_footnote_markup = """
        <div class="footnote">
      <hr />
      <p class="f" id="FN1"><span class="notemark">†</span><a class="notebackref" href="#V1">1:1</a>
      <span class="ft">The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).</span></p>
      <p class="f" id="FN2"><span class="notemark">‡</span><a class="notebackref" href="#V29">1:29</a>
      <span class="ft">“Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.</span></p>

      <hr />
      </div>
      """

      actual = WorldEnglishBibleSiteParser.parse_footnotes(@parsed_text)

      assert StringComparison.compare_ignore_whitespace(actual, copied_footnote_markup)
    end

    test "can modify footnote ID's and references" do
      chapter_identifier = "GEN1"

      actual_end_markup =
        WorldEnglishBibleSiteParser.parse_footnotes(@parsed_text)
        |> WorldEnglishBibleSiteParser.append_ids(chapter_identifier)
        |> WorldEnglishBibleSiteParser.append_hrefs(chapter_identifier)

      assert actual_end_markup == @end_footnote_markup
    end
  end

  describe "chapter content" do
    test "parse_chapter_content returns the expected chapter content" do
      extracted_chapter_content = """
      <div class="p">
        <span class="verse" id="V1">
          1
        </span>
        In the beginning, God
        <a href="#FN1" class="notemark">
          †
          <span class="popup">
            The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).
          </span>
        </a>
        created the heavens and the earth.
        <span class="verse" id="V2">
          2
        </span>
        The earth was formless and empty. Darkness was on the surface of the deep and God’s Spirit was hovering over the surface of the waters.
      </div>
      <div class="p">
        <span class="verse" id="V3">
          3
        </span>
        God said, “Let there be light,” and there was light.
        <span class="verse" id="V4">
          4
        </span>
        God saw the light, and saw that it was good. God divided the light from the darkness.
        <span class="verse" id="V5">
          5
        </span>
        God called the light “day”, and the darkness he called “night”. There was evening and there was morning, the first day.
      </div>
      <div class="p">
        <span class="verse" id="V6">
          6
        </span>
        God said, “Let there be an expanse in the middle of the waters, and let it divide the waters from the waters.”
        <span class="verse" id="V7">
          7
        </span>
        God made the expanse, and divided the waters which were under the expanse from the waters which were above the expanse; and it was so.
        <span class="verse" id="V8">
          8
        </span>
        God called the expanse “sky”. There was evening and there was morning, a second day.
      </div>
      <div class="p">
        <span class="verse" id="V9">
          9
        </span>
        God said, “Let the waters under the sky be gathered together to one place, and let the dry land appear;” and it was so.
        <span class="verse" id="V10">
          10
        </span>
        God called the dry land “earth”, and the gathering together of the waters he called “seas”. God saw that it was good.
        <span class="verse" id="V11">
          11
        </span>
        God said, “Let the earth yield grass, herbs yielding seeds, and fruit trees bearing fruit after their kind, with their seeds in it, on the earth;” and it was so.
        <span class="verse" id="V12">
          12
        </span>
        The earth yielded grass, herbs yielding seed after their kind, and trees bearing fruit, with their seeds in it, after their kind; and God saw that it was good.
        <span class="verse" id="V13">
          13
        </span>
        There was evening and there was morning, a third day.
      </div>
      <div class="p">
        <span class="verse" id="V14">
          14
        </span>
        God said, “Let there be lights in the expanse of the sky to divide the day from the night; and let them be for signs to mark seasons, days, and years;
        <span class="verse" id="V15">
          15
        </span>
        and let them be for lights in the expanse of the sky to give light on the earth;” and it was so.
        <span class="verse" id="V16">
          16
        </span>
        God made the two great lights: the greater light to rule the day, and the lesser light to rule the night. He also made the stars.
        <span class="verse" id="V17">
          17
        </span>
        God set them in the expanse of the sky to give light to the earth,
        <span class="verse" id="V18">
          18
        </span>
        and to rule over the day and over the night, and to divide the light from the darkness. God saw that it was good.
        <span class="verse" id="V19">
          19
        </span>
        There was evening and there was morning, a fourth day.
      </div>
      <div class="p">
        <span class="verse" id="V20">
          20
        </span>
        God said, “Let the waters abound with living creatures, and let birds fly above the earth in the open expanse of the sky.”
        <span class="verse" id="V21">
          21
        </span>
        God created the large sea creatures and every living creature that moves, with which the waters swarmed, after their kind, and every winged bird after its kind. God saw that it was good.
        <span class="verse" id="V22">
          22
        </span>
        God blessed them, saying, “Be fruitful, and multiply, and fill the waters in the seas, and let birds multiply on the earth.”
        <span class="verse" id="V23">
          23
        </span>
        There was evening and there was morning, a fifth day.
      </div>
      <div class="p">
        <span class="verse" id="V24">
          24
        </span>
        God said, “Let the earth produce living creatures after their kind, livestock, creeping things, and animals of the earth after their kind;” and it was so.
        <span class="verse" id="V25">
          25
        </span>
        God made the animals of the earth after their kind, and the livestock after their kind, and everything that creeps on the ground after its kind. God saw that it was good.
      </div>
      <div class="p">
        <span class="verse" id="V26">
          26
        </span>
        God said, “Let’s make man in our image, after our likeness. Let them have dominion over the fish of the sea, and over the birds of the sky, and over the livestock, and over all the earth, and over every creeping thing that creeps on the earth.”
        <span class="verse" id="V27">
          27
        </span>
        God created man in his own image. In God’s image he created him; male and female he created them.
        <span class="verse" id="V28">
          28
        </span>
        God blessed them. God said to them, “Be fruitful, multiply, fill the earth, and subdue it. Have dominion over the fish of the sea, over the birds of the sky, and over every living thing that moves on the earth.”
        <span class="verse" id="V29">
          29
        </span>
        God said, “Behold,
        <a href="#FN2" class="notemark">
          ‡
          <span class="popup">
            “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.
          </span>
        </a>
        I have given you every herb yielding seed, which is on the surface of all the earth, and every tree, which bears fruit yielding seed. It will be your food.
        <span class="verse" id="V30">
          30
        </span>
        To every animal of the earth, and to every bird of the sky, and to everything that creeps on the earth, in which there is life, I have given every green herb for food;” and it was so.
      </div>
      <div class="p">
        <span class="verse" id="V31">
          31
        </span>
        God saw everything that he had made, and, behold, it was very good. There was evening and there was morning, a sixth day.
      </div>
      """

      actual = WorldEnglishBibleSiteParser.parse_chapter(@parsed_text)

      assert StringComparison.compare_ignore_whitespace(actual, extracted_chapter_content)
    end

    test "extract_chapter can get and modify all chapter content" do
      expected = """
      <div class="p">
        <span class="verse" id="GEN1V1">
          1
        </span>
        In the beginning, God
        <a href="#GEN1FN1" class="notemark">
          †
          <span class="popup">
            The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).
          </span>
        </a>
        created the heavens and the earth.
        <span class="verse" id="GEN1V2">
          2
        </span>
        The earth was formless and empty. Darkness was on the surface of the deep and God’s Spirit was hovering over the surface of the waters.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V3">
          3
        </span>
        God said, “Let there be light,” and there was light.
        <span class="verse" id="GEN1V4">
          4
        </span>
        God saw the light, and saw that it was good. God divided the light from the darkness.
        <span class="verse" id="GEN1V5">
          5
        </span>
        God called the light “day”, and the darkness he called “night”. There was evening and there was morning, the first day.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V6">
          6
        </span>
        God said, “Let there be an expanse in the middle of the waters, and let it divide the waters from the waters.”
        <span class="verse" id="GEN1V7">
          7
        </span>
        God made the expanse, and divided the waters which were under the expanse from the waters which were above the expanse; and it was so.
        <span class="verse" id="GEN1V8">
          8
        </span>
        God called the expanse “sky”. There was evening and there was morning, a second day.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V9">
          9
        </span>
        God said, “Let the waters under the sky be gathered together to one place, and let the dry land appear;” and it was so.
        <span class="verse" id="GEN1V10">
          10
        </span>
        God called the dry land “earth”, and the gathering together of the waters he called “seas”. God saw that it was good.
        <span class="verse" id="GEN1V11">
          11
        </span>
        God said, “Let the earth yield grass, herbs yielding seeds, and fruit trees bearing fruit after their kind, with their seeds in it, on the earth;” and it was so.
        <span class="verse" id="GEN1V12">
          12
        </span>
        The earth yielded grass, herbs yielding seed after their kind, and trees bearing fruit, with their seeds in it, after their kind; and God saw that it was good.
        <span class="verse" id="GEN1V13">
          13
        </span>
        There was evening and there was morning, a third day.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V14">
          14
        </span>
        God said, “Let there be lights in the expanse of the sky to divide the day from the night; and let them be for signs to mark seasons, days, and years;
        <span class="verse" id="GEN1V15">
          15
        </span>
        and let them be for lights in the expanse of the sky to give light on the earth;” and it was so.
        <span class="verse" id="GEN1V16">
          16
        </span>
        God made the two great lights: the greater light to rule the day, and the lesser light to rule the night. He also made the stars.
        <span class="verse" id="GEN1V17">
          17
        </span>
        God set them in the expanse of the sky to give light to the earth,
        <span class="verse" id="GEN1V18">
          18
        </span>
        and to rule over the day and over the night, and to divide the light from the darkness. God saw that it was good.
        <span class="verse" id="GEN1V19">
          19
        </span>
        There was evening and there was morning, a fourth day.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V20">
          20
        </span>
        God said, “Let the waters abound with living creatures, and let birds fly above the earth in the open expanse of the sky.”
        <span class="verse" id="GEN1V21">
          21
        </span>
        God created the large sea creatures and every living creature that moves, with which the waters swarmed, after their kind, and every winged bird after its kind. God saw that it was good.
        <span class="verse" id="GEN1V22">
          22
        </span>
        God blessed them, saying, “Be fruitful, and multiply, and fill the waters in the seas, and let birds multiply on the earth.”
        <span class="verse" id="GEN1V23">
          23
        </span>
        There was evening and there was morning, a fifth day.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V24">
          24
        </span>
        God said, “Let the earth produce living creatures after their kind, livestock, creeping things, and animals of the earth after their kind;” and it was so.
        <span class="verse" id="GEN1V25">
          25
        </span>
        God made the animals of the earth after their kind, and the livestock after their kind, and everything that creeps on the ground after its kind. God saw that it was good.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V26">
          26
        </span>
        God said, “Let’s make man in our image, after our likeness. Let them have dominion over the fish of the sea, and over the birds of the sky, and over the livestock, and over all the earth, and over every creeping thing that creeps on the earth.”
        <span class="verse" id="GEN1V27">
          27
        </span>
        God created man in his own image. In God’s image he created him; male and female he created them.
        <span class="verse" id="GEN1V28">
          28
        </span>
        God blessed them. God said to them, “Be fruitful, multiply, fill the earth, and subdue it. Have dominion over the fish of the sea, over the birds of the sky, and over every living thing that moves on the earth.”
        <span class="verse" id="GEN1V29">
          29
        </span>
        God said, “Behold,
        <a href="#GEN1FN2" class="notemark">
          ‡
          <span class="popup">
            “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.
          </span>
        </a>
        I have given you every herb yielding seed, which is on the surface of all the earth, and every tree, which bears fruit yielding seed. It will be your food.
        <span class="verse" id="GEN1V30">
          30
        </span>
        To every animal of the earth, and to every bird of the sky, and to everything that creeps on the earth, in which there is life, I have given every green herb for food;” and it was so.
      </div>
      <div class="p">
        <span class="verse" id="GEN1V31">
          31
        </span>
        God saw everything that he had made, and, behold, it was very good. There was evening and there was morning, a sixth day.
      </div>
      <div class="footnote">
        <hr/>
        <p class="f" id="GEN1FN1">
          <span class="notemark">
            †
          </span>
          <a class="notebackref" href="#GEN1V1">
            1:1
          </a>
          <span class="ft">
            The Hebrew word rendered “God” is “אֱלֹהִ֑ים” (Elohim).
          </span>
        </p>
        <p class="f" id="GEN1FN2">
          <span class="notemark">
            ‡
          </span>
          <a class="notebackref" href="#GEN1V29">
            1:29
          </a>
          <span class="ft">
            “Behold”, from “הִנֵּה”, means look at, take notice, observe, see, or gaze at. It is often used as an interjection.
          </span>
        </p>
        <hr/>
      </div>
      """

      actual = WorldEnglishBibleSiteParser.extract_chapter(@parsed_text, "GEN1")

      assert actual == expected
    end
  end
end
